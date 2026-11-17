PDFLATEX ?= pdflatex

.PHONY: pdf
pdf: manuscript/erdos-792.pdf

manuscript/erdos-792.pdf: manuscript/erdos-792.tex Makefile
	@set -eu; \
	build_dir=$$(mktemp -d "$(@D)/.latex.XXXXXX"); \
	trap 'rm -rf -- "$$build_dir"' EXIT; \
	for pass in 1 2 3; do \
		$(PDFLATEX) -interaction=nonstopmode -halt-on-error -file-line-error \
			-no-shell-escape -output-directory="$$build_dir" "$<" \
			>"$$build_dir/compile.log" || { cat "$$build_dir/compile.log"; exit 1; }; \
	done; \
	mv -- "$$build_dir/$(@F)" "$@"; \
	printf 'Built %s\n' "$@"
