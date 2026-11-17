# Manuscript review

The [manuscript](../../manuscript/erdos-792.pdf) and [LaTeX source](../../manuscript/erdos-792.tex) incorporate an editorial pass, a mathematical referee pass, and a first-reading pass.

## Editorial pass

- **What quantitative claim does the title make?** The first title could suggest an excess of order $\log n$. The revised title says “logarithmic saving,” and the abstract states the bound $n/3+O(n/\log n)$ and the ambient interval $[1,n^2]$.
- **Can a reader place the result among the prior bounds?** The introduction states Problem #792, gives the leading-term upper bound of Eberhard, Green and Manners and Bedert's lower bound, and describes how the small-shift estimate enters the existing weighting strategy.
- **Where should the technical proof start?** The main theorem and the small-shift proposition appear before the long argument. The paper deduces the finite witnesses from the proposition before proving it. The organization draws on the main-argument structure of [Eberhard, Green and Manners](https://annals.math.princeton.edu/2014/180-2/p05) and the proof outline of [Green and Tao](https://annals.math.princeton.edu/2008/167-2/p03).

## Referee pass

- **Does the inverse theorem impose an unknown accuracy cost at the final scale?** Section 4 chooses the model accuracy, the subgroup index cutoff and the count threshold in that order. Section 7 fixes them before choosing the density surplus. The weight iteration starts at the resulting fixed surplus, so every stage uses Proposition 2.1.
- **Which configurations enter each count?** Section 3 checks both possible integer carries and preservation of shift independence after deleting the boundary cells. Section 2 adds the equal-input triples to the container estimate. The exact finite checks covered 5,734 instances of the sampling inequalities with $N\le8$ and 33,850 instances of the prefix representation bounds with rational rotations of denominator at most 24.
- **Do the circle and integer models use compatible endpoints?** The paper charges the grid error at the two input endpoints and the output endpoints separately, handles wrapping in the phase-defect calculation, and makes the open interval used to fill the core explicit. The prefix and density estimates allow either endpoint convention in discrepancy counts.
- **Does rounding give every sufficiently large cardinality?** The weight family works for every eligible interval length. Section 2 chooses that length as a function of $n$ and trims a larger sample to exactly $n$ points. The final inversion checks the bound $n^2$ on the largest point.
- **Can the external inputs be located at theorem level?** The manuscript gives the theorem or corollary numbers at the applications of Grynkiewicz, DeVos's account of Kneser, Griesmer, Christ and Shao, Martin and Sitar, and Saxton and Thomason. Croot and Sisask are credited where their sampling and translation argument is adapted.

## First-reading pass

- **Where does the logarithm come from?** The outline now identifies the cost $\exp(O(1/\epsilon))$ of reaching error $\epsilon$ and explains the choice $\epsilon\asymp1/\log n$.
- **Why concentrate the weights on small multiples?** Section 2 defines the count for a fixed shift and relates it to the total triple count before Proposition 2.1. The weight argument now shows where each term of the new count threshold is used.
- **How do the interval models lead to a linear phase?** The paragraph after Proposition 4.1 links the four steps through Section 4. The proof of the slice-density inequality appears in Appendix A.
- **Why do the left endpoint changes enter a count at the right endpoint?** Section 6 first works out the unperturbed middle third, including an output phase of $3/4$. The reflected input window explains the signed prefix term in the general bound.
- **Which count is being integrated after arranging the cells?** The cell integral in Section 6 carries the exact representation count of the integer assigned to each cell. The proof uses that identity to bound the two endpoint integrals by the original triple count.

The revised PDF has 15 A4 pages. The compiled text and PDF metadata show Xiaolu Zhang as author and the address on the last page is zxl0714@gmail.com. All 13 bibliography entries are cited, the internal PDF destinations resolve, and the final pdfLaTeX log has no missing references, missing citations or box warnings. The pages were rendered and inspected for formula clipping, page breaks and reference layout.
