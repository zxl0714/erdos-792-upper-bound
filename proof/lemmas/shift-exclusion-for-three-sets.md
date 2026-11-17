# Shift exclusion when two of three sets are constrained

The third set can be left unconstrained if each of the three roles has positive mass. This is useful for the intersection and union of two translates, where the intersection and the original set satisfy a shift constraint.

## 1. Exact exclusion with two constrained sets

Let $C_1,C_2,C_3$ be nonempty subsets of a finite abelian group $K$ of order $N$, with no triple $c_1+c_2=c_3$. Let $H$ stabilize $C_3-C_2$. Since $C_1+H$ is disjoint from $C_3-C_2$, Kneser's theorem gives
$$
\sum_i |C_i+H|\le N+|H|.
$$
If two roles $a,b$ are disjoint from their translates by $v$ and $v\in H$, each of these two sets occupies at most half its $H$-saturation. Their saturations each have size at least $|H|$, so
$$
\sum_i |C_i|
\le \sum_i|C_i+H|-\tfrac12(|C_a+H|+|C_b+H|)\le N.
$$
Thus a total size greater than $N$ excludes $v$ from $H$.

## 2. Small counts in finite groups

**Unweighted lemma.** Suppose $0<s\le1/2$, $\sum_i|U_i|\ge(1+s)N$, and $\min_i |U_i|\ge sN/2$. Suppose two of $U_1,U_2,U_3\subset K$ are disjoint from their translates by $v$. If the count $E$ of $u_1+u_2=u_3$ is at most $s^2N^2/4096$, a subgroup avoiding $v$ has size at least $sN/2$.

Put $V=sN$. For $V<32$ the count is zero. Otherwise use $j=\lfloor V/16\rfloor\in[V/32,V/16]$ in the [popular-sum theorem](square-root-logarithmic-upper-bound.md#1-counts-and-theorems-used), applied to $U_3,-U_2$. We have $j\le\min(|U_3|,|U_2|)$ and the truncated representation sum is at most $j(N-|U_1|)+E\le j(|U_3|+|U_2|)-jV+E$. This is below the theorem's threshold since $jV-2j^2-E\ge (1/32-1/128-1/4096)V^2>0$. Delete at most $j-1$ elements across $U_2,U_3$ to realize the popular difference set and then delete its intersection with $U_1$, of size at most $E/j\le V/128$. In either case the retained sets are all nonempty by the minimum size and deletion bounds, have no cross triple, and have total size at least $N+V/2$. Section 1 gives both the lower size bound for $H$ and $v\notin H$.

**Weighted lemma.** Set $C_r=65536$. Let $g_i:G\to[0,1]$ on a finite abelian group, with total mean at least $1+\delta$, minimum role mean at least $\delta/2$, and normalized count $e=\mathbb E_{a,b}g_1(a)g_2(b)g_3(a+b)\le\delta^2/C_r$. Suppose two roles satisfy $g_i(a)+g_i(a+v)\le1+\kappa$, where $0<\delta\le1/2$ and $0\le\kappa\le\delta/4$. There is a subgroup avoiding $v$ of index at most $4/\delta$.

Divide the weights by $1+\kappa$ to obtain adjacent sums at most one in the two roles, total mean at least $1+2\delta/3$, and each role mean at least $4\delta/9$. Let $B=\lceil128/\delta\rceil$ and lift to $G\times\mathbb Z/p\mathbb Z$ with shift $(v,1)$ for a prime $p>\max(B,4/\delta)$ and $N=|G|p>12288B/\delta^2$. On each shift cycle split into blocks of $B$ vertices and a possible shorter final block. In the two constrained roles delete the last vertex of each block, at most a fraction $2/B$, leaving paths with at most $B-1$ vertices. Independently for each role and path, choose uniform $\theta\in[0,1]$. Include a vertex of weight $w$ if $\theta<w$ at an even position or $\theta>1-w$ at an odd one. This preserves marginals and forbids selecting adjacent vertices. In the remaining role include vertices independently with their lifted probabilities.

Each role's cardinality has variance at most $BN$ by independence and the path size bound. By Chebyshev, with probability greater than $3/4$ every size is within $\delta N/32$ below its mean. The resulting total density and minimum role density are at least
$$
1+2\delta/3-4/B-3\delta/32\ge1+\delta/2,\qquad
4\delta/9-2/B-\delta/32>\delta/4.
$$
The normalized count has expectation at most $e$, because the role randomizations are independent, including at coincident vertices. Markov gives a count at most $4e$ with probability at least $3/4$, with the zero case following from nonnegativity. Some outcome has both the size and count bounds. The unweighted lemma with $s=\delta/2$ applies since $4e\le s^2/4096$. The subgroup of the product has index at most $4/\delta<p$, so it contains the prime-order factor and descends to a subgroup of $G$ of the same index avoiding $v$.

## 3. Selecting three time sections

Let $X,Y,F:G\times(0,1]\to[0,1]$ be measurable, with section means $x,y,f$. Write $I(A,B;C)$ for the integral of the normalized cross count of $A$ at time $u$, $B$ at $w$, and $C$ at $u+w$ over $\Delta=\{u,w>0,\ u+w\le1\}$. Put $J=I(X,Y;F)+I(X,F;Y)+I(Y,F;X)$.

Suppose $0<\eta\le1/12$, $0\le\rho\le\eta/8$, and $0\le\kappa\le\eta/4$. Assume $\int f\ge1/3+3\eta/4$, and almost everywhere
$$
f\le1/2+\rho,\qquad |x+y-2f|\le\rho,\qquad f+y\le1+\rho,\qquad x\le f+\rho.
$$
Assume also that the profiles $X,F$ satisfy the pointwise shift inequality with error $\kappa$ almost everywhere. If $J\le\eta^2/(12C_r)$, there is a subgroup avoiding $v$ of index at most $4/\eta$.

For the time positions $u,w,u+w$, index the three values of each mean by $r$ and let $D=\sum_r f_r$, $b_r=f_r-x_r$, $e_r=x_r+y_r-2f_r$. Choose distinct $i,j$ of smallest and largest $b_r$, breaking ties by a fixed rule, and let $\ell$ be the third index. Assign $X$ at position $i$, $Y$ at $j$, and $F$ at $\ell$. The total is $D+b_j-b_i+e_j\ge D-\rho$. Every $f_r\ge D-1-2\rho$ and $b_r\ge-\rho$, so $y_j=f_j+b_j+e_j\ge D-1-4\rho$. For $r\ne i$, $b_i\le b_r\le 1-2f_r+2\rho$. Adding these two inequalities gives $x_i=f_i-b_i\ge D-1-2\rho$. Thus all three assigned roles have mass at least $D-1-4\rho$.

Take the probability measure $d\mu=3(u+w)\,du\,dw$. Its three marginal densities add to three, so $\mathbb E_\mu D\ge1+9\eta/4$. For $\delta=(D-1-4\rho)_+$ we have $\delta\le1/2$ and $\mathbb E_\mu\delta\ge7\eta/4$. Hence $V=\delta1_{\{\delta\ge\eta\}}$ satisfies $\mathbb E_\mu V^2\ge9\eta^2/16$. If $E_{\rm sel}$ is the selected count, its expectation is at most $6J$. In fact the selected count is bounded by the sum over all six assignments, the weight is at most three, and exchanging the two input positions preserves each integral. Thus $C_r\mathbb E_\mu E_{\rm sel}\le\eta^2/2<\mathbb E_\mu V^2$.

Choose a pair with $\delta\ge\eta$ and $E_{\rm sel}\le\delta^2/C_r$ outside exceptional section times, which are null by the absolute continuity of the marginals. The assigned masses meet the weighted lemma's total and minimum bounds, and $\kappa\le\delta/4$. It gives the desired subgroup. In particular $v\notin QG$ for $Q=\operatorname{lcm}(1,\ldots,\lfloor4/\eta\rfloor)$, because the subgroup's index divides $Q$. The [sampled translate profiles](sampling-the-shifted-sets.md) meet the section and shift hypotheses with $\rho=2t/q$ and $\kappa=0$ whenever $q\ge16t/\eta$.
