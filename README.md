# A logarithmic upper bound for Erdős Problem #792

For a finite set of integers $A$, let $\alpha(A)$ be the largest size of a subset with no solution to $x+y=z$, allowing equal inputs. Let $f(n)=\min_{|A|=n}\alpha(A)$, with the minimum over integer sets.

There are absolute constants $C,n_0>0$ such that for every integer $n\ge n_0$, some $n$-element set $A\subseteq\{1,\dots,n^2\}$ satisfies

$$
\alpha(A)\le \frac n3 + C\frac{n}{\log n}.
$$

In particular, $f(n)\le n/3+O(n/\log n)$. The order of $f(n)-n/3$ remains open in this work. The lower bound used for comparison is Bedert's $\Omega(\log\log n)$.

- [Paper (PDF)](manuscript/erdos-792.pdf) · [LaTeX source](manuscript/erdos-792.tex)
- [Proof](proof/README.md)
- [References](docs/REFERENCES.md)
- [Research history](research/README.md)

Build the paper from the repository root with `make pdf`. The build uses pdfLaTeX.

The upper-bound proof passed an independent Codex review on 17 November 2026. [Review report](docs/reviews/run18-logarithmic-upper-review.md)

We carried out this research with assistance from GPT-6 Astra through Codex. We used Gacha, a tool we developed to manage research workspaces and runs. [Gacha on GitHub](https://github.com/zxl0714/proof-by-gacha)
