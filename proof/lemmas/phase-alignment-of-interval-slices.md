# Aligning the phases of interval slices

Let $G$ be finite abelian with uniform measure $m$, let $\chi:G\to C_n=(1/n)\mathbb Z/\mathbb Z$ be surjective with $n\ge3$, and let $F_s\subset G$ be measurable sections, disjoint from $F_s+v$ for almost every time $0<s\le1$. Suppose $P_s$ are measurable cyclic interval preimages under $\chi$. Write
$$
\delta=\int_0^1m(F_s\triangle P_s)\,ds,\qquad
M=\int_0^1 |m(F_s)-1/3|\,ds,\qquad a=2\delta+M+2/n.
$$
Let $J$ be the normalized spatial count of $x+y=z$ with sections $F_u,F_w,F_{u+w}$ integrated over $\Delta=\{(u,w):u,w>0,\ u+w\le1\}$.

**Lemma.** For some real $\lambda$, the sets $H_s=\{g:\chi(g)-\lambda s\in[1/3,2/3)\}$ satisfy
$$
\int_0^1m(F_s\triangle H_s)\,ds
\le a+\tfrac{3\pi}{2} C_{\mathrm{phase}}\sqrt{J+2a+4/n}+4/n,
\qquad C_{\mathrm{phase}}=20000e^{24}.
$$
Also $\|\chi(v)\|_{\mathbb T}\ge1/3-2a-2/n$.

## Passing to exact-width arcs

Represent each $P_s$ by a circle arc using the [centered cell construction](from-cyclic-intervals-to-circle-arcs.md#constructing-the-arcs-and-measuring-the-shift). Keep its center and change its length to $1/3$, obtaining $I_s$ with grid restriction $B_s$. The two arcs are nested, their grid counts have endpoint error at most one each, and $|m(P_s)-m(F_s)|\le m(P_s\triangle F_s)$. This gives $\int m(F_s\triangle B_s)\,ds\le a$. Use half-open arcs throughout.

In the finite count, replacing the three factors by $B$ costs at most $\int_0^1(2-s)m(F_s\triangle B_s)\,ds\le2a$, since the input marginals are $1-s$ each and the output marginal is $s$. The count for $B$ uses uniform grid inputs by surjectivity. Couple two grid inputs to independent continuous uniforms by adding independent displacements uniform in $[0,1/n)$. Each input arc can change at at most two boundary cells, giving error $2/n$ per input. The output is a uniform grid residue conditional on the displacements, and moves by less than $2/n$, causing error at most $4/n$. Thus the count discrepancy at fixed times is at most $8/n$. The area of $\Delta$ is $1/2$, so the integrated circle count $E_{\mathbb T}$ of the three $I$ arcs is at most $J+2a+4/n$.

## Recovering a linear phase

Write $I_s=[1/3,2/3)+p(s)$, where $p(s)$ is the center of $I_s$ shifted by $1/2$ modulo one. By the [circle count at length one third](circle-interval-triple-count.md), the integrand of $E_{\mathbb T}$ is at least $2d^2/9$ for $d=\|p(u)+p(w)-p(u+w)\|_{\mathbb T}$. The chord of distance $d$ is at most $2\pi d$. Cauchy–Schwarz and the area $1/2$ bound the unweighted triangle residual of $e^{2\pi i p(s)}$ by $3\pi\sqrt{E_{\mathbb T}}$. The [linear error bound for approximate characters](quantitative-character-stability.md) gives an approximation by $e^{2\pi i\lambda s}$ with integrated chord error at most $3\pi C_{\mathrm{phase}}\sqrt{E_{\mathbb T}}$.

Moving an arc's center a circular distance $d$ changes its Haar measure in symmetric difference by at most $2d$, and the chord is at least $4d$. The symmetric difference has at most four boundary points, so restricting to the grid costs at most $4/n$ more. Adding the initial error $a$ proves the bound for $H_s$. The model is sum-free on $G\times\mathbb R$ because the map $(g,s)\mapsto\chi(g)-\lambda s$ is additive and $[1/3,2/3)$ is sum-free in the circle, including equal inputs.

## Measuring the shift

Since $F_s$ is disjoint from $F_s+v$, $m(B_s\cap(B_s+v))\le2m(F_s\triangle B_s)$. In the circle this overlap has length $(1/3-\|\chi(v)\|_{\mathbb T})_+$, which differs from its grid count by at most $2/n$. Integration gives the claimed lower bound on $\|\chi(v)\|_{\mathbb T}$. In the [integer unfolding](integer-rotation-model.md), if its hypotheses hold and also $a+1/n\le1/100$, $t/q\le1/100$, this gives $\|\omega t\|_{\mathbb T}>1/3-1/50-4/99>1/4$.
