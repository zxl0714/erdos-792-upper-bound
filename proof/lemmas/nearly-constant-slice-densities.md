# Nearly constant slice densities

Let $G$ be finite abelian, $0<\eta\le1/12$, $Q_\eta=\operatorname{lcm}(1,\ldots,\lfloor8/\eta\rfloor)$, and $v\in Q_\eta G$. Suppose a measurable $h:G\times(0,1]\to\{0,1\}$ satisfies $h(g,s)+h(g+v,s)\le1$ almost everywhere. Define
$$
f(s)=\mathbb E_g h(g,s),\qquad d=\int_0^1f(s)\,ds,\qquad
I=\int_\Delta\mathbb E_{a,b} h(a,u)h(b,w)h(a+b,u+w)\,du\,dw,
$$
where $\Delta=\{(u,w):u,w>0,\ u+w\le1\}$ and group averages are uniform.

**Lemma.** If $d\ge1/3$, then
$$
\|f-1/3\|_1\le9000\sqrt{\eta^2+12288 I}\le10^6(\eta+\sqrt I),
\qquad 0\le d-1/3\le\tfrac13\sqrt{\eta^2+12288 I}.
$$

**Proof.** Translation invariance gives $0\le f\le1/2$ almost everywhere. For a time pair, let $\delta=f(u)+f(w)+f(u+w)-1$ and let $e$ be the normalized spatial triple count at those times. The three time marginals are absolutely continuous, so almost every pair has all three sections disjoint from their translates by $v$.

If $\delta\ge\eta$ and $e\le\delta^2/4096$, the [unweighted finite-group lemma](square-root-logarithmic-upper-bound.md#2-exclusion-of-one-prescribed-shift-in-a-finite-group) gives a subgroup avoiding $v$ of index at most $2/\delta$. Its integer index is at most $\lfloor8/\eta\rfloor$ and hence divides $Q_\eta$. The subgroup therefore contains $Q_\eta G$, contradicting $v\in Q_\eta G$. It follows that $\delta_+^2\le\eta^2+4096e$ almost everywhere, including the pairs with $\delta<\eta$.

Use the probability measure $d\mu=3(u+w)\,du\,dw$ from the [triangle inequalities](additive-equations-on-a-triangle.md). Its marginal densities give $\mathbb E_\mu\delta=3d-1$, and $\mathbb E_\mu e\le3I$ by the bound on the weight. Therefore
$$
P:=\mathbb E_\mu\delta_+\le\sqrt{\mathbb E_\mu\delta_+^2}\le\sqrt{\eta^2+12288 I},
\qquad 0\le3d-1\le P.
$$
The sum residual inequality for $f-1/3$ gives $\|f-1/3\|_1\le9000P$. Finally $9000\sqrt{12288}<10^6$, giving the stated bound. $\square$
