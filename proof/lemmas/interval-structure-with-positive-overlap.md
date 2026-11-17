# Interval structure for a positive overlap

Let $G$ be finite cyclic with uniform measure $m$. For measurable indicator profiles $X,F,Y$ on $G\times(0,1]$, write $x,f,y$ for their section means. Let $I(A,B;C)$ denote the normalized spatial count of $a+b=c$ in the sections $A_u,B_w,C_{u+w}$ integrated over $\Delta=\{(u,w):u,w>0,\ u+w\le1\}$. Put $J=I(X,Y;F)+I(X,F;Y)+I(Y,F;X)$ and $C_r=65536$.

**Theorem.** Fix $0<c\le1/12$ and $0<\epsilon\le1/10$. There is $\beta>0$, depending only on $c,\epsilon$, such that the following holds. Let $0<\eta\le\beta$, $0\le\rho\le\beta$, $Q_\eta=\operatorname{lcm}(1,\ldots,\lfloor8/\eta\rfloor)$, and $v\in Q_\eta G$. Suppose $X_s,F_s$ are disjoint from their own translates by $v$ almost everywhere, and
$$
f+y\le1,\qquad |x+y-2f|\le\rho,\qquad x\le f+\rho,\qquad
\int_0^1 f\ge1/3,\quad \alpha:=\int_0^1 x\ge c,\quad J\le\beta^2/(6C_r).
$$
Let $\sigma_X,\sigma_Y$ be the integrated symmetric-difference errors of $X_s,Y_s$ from the intersection and union of $F_s-v,F_s+v$, respectively. Assume $\sigma_X+\sigma_Y\le\beta$.

Then there are a surjective character $\chi:G\to C_n=(1/n)\mathbb Z/\mathbb Z$ with $n>8/\eta$ and a real $\lambda$. Put
$$
H_s=\{g:\chi(g)-\lambda s\in[1/3,2/3)\},\quad
H_{X,s}=(H_s-v)\cap(H_s+v),\quad H_{Y,s}=(H_s-v)\cup(H_s+v).
$$
The three integrated symmetric-difference errors from $F_s,X_s,Y_s$ sum to at most $\epsilon$. Moreover $1/3+3c/8\le\|\chi(v)\|_{\mathbb T}\le1/2$. The model $H$ is sum-free and shift independent, and the three centered triple counts vanish.

## 1. Controlling the section means

Use $d\mu=3(u+w)\,du\,dw$. At the three times $s_i=u,w,u+w$ write $f_i=f(s_i)$ and likewise $x_i,y_i$. Let $D=\sum_i f_i$, $b_i=f_i-x_i$, $e_i=x_i+y_i-2f_i$, and $R=\max_i b_i-\min_i b_i$. We have $f_i,x_i\le1/2$, $|e_i|\le\rho$, and $-\rho\le b_i\le1-2f_i+\rho$.

Assign the $X$ role at an index $i$ minimizing $b_i$, $Y$ at a distinct index $j$ maximizing $b_j$, and $F$ at the remaining index $k$. Use a fixed rule for ties. Adding the upper bounds for $b_j,b_k$ gives $f_j+f_k\le1+\rho-b_i-R/2$ and hence $x_i\ge D-1+R/2-\rho$. The bound $b_j\ge R-\rho$ gives $f_j\le1/2+\rho-R/2$, hence $f_k\ge D-1+R/2-\rho$. Also $f_j\ge D-1$, so $y_j=f_j+b_j+e_j\ge D-1+R-2\rho$.

Set $\delta=(D-1+R/2-2\rho)_+$. When $\delta>0$ every assigned mass is at least $\delta$, and $x_i\le1/2$ gives $\delta\le1/2$. Their sum is $D+R+e_j\ge1+\delta$. If $\delta\ge\eta$ and the assigned normalized count is at most $\delta^2/C_r$, the [two-role weighted lemma](shift-exclusion-for-three-sets.md#2-small-counts-in-finite-groups) gives a subgroup avoiding $v$ of index at most $4/\delta$. This is impossible because its index divides $Q_\eta$ and $v\in Q_\eta G$. Thus $\delta^2\le\eta^2+C_r E_{\rm sel}$, where $E_{\rm sel}$ is the actual assigned count. Its $\mu$-mean is at most $6J$, bounding by the six permutations and using the weight bound three and symmetry of the integrated input roles. Consequently $\mathbb E_\mu\delta\le S:=\sqrt{\eta^2+6C_rJ}$.

The marginal densities add to three, so $\mathbb E_\mu(D-1)\ge0$. Using $D-1+R/2-2\rho\le\delta$ gives $\mathbb E_\mu R\le2S+4\rho$. The inequality $(D-1)_+\le\delta+2\rho$ gives $\mathbb E_\mu|D-1|\le2S+4\rho$ as well. Apply the two [triangle inequalities](additive-equations-on-a-triangle.md) to $f-1/3$ and $b=f-x$. For $L_0=2S+4\rho$ they give $\|f-1/3\|_1\le4500L_0$ and $\|b-\int b\|_1\le132L_0$. Since $\|f-\int f\|_1\le2\|f-1/3\|_1$, the identity $x=f-b$ gives $\|x-\alpha\|_1\le9132L_0$. The identity $y=f+b+e$ gives $\|y-\int y\|_1\le9132L_0+2\rho$. In particular the sum $M$ of the three deviations is at most $100000(S+\rho)$.

## 2. Finding a common character

For desired interval approximation error $0<r\le1/10$, put $b_0=\sin(\pi c/2)/(2\pi)$, $M_0=\lceil b_0^{-2}+1\rceil$, $\tau_0=r/8$, and $D_*=\tau_0^3/100$. Take $e=\min(c/400,r/4,b_0/4)$. The [cyclic pair lemma](stability-of-cyclic-critical-pairs.md) at lower mass $c/2$, precision $e$, and minimum order $M_0$ gives $D_0,\nu_0,E_0$. With $\ell=\min(c/4,\nu_0/8,1/100)$ define
$$
B(r)=\min(1/12,\ 8/D_0,\ \nu_0/2,\ D_*\ell/1800000,\
\sqrt{D_* C_r E_0},\ 10^{-8}).
$$
If $\eta,\rho\le B(r)$ and $J\le B(r)^2/(6C_r)$, Section 1 gives $M\le300000B(r)$. In particular $\alpha\le1/3+M+\rho<3/8$, by $x\le f+\rho$.

Take $A=X_u$, $B=F_w$, $C=Y_{u+w}$. By the marginal bounds and the weight bound, outside a set of $\mu$-measure at most $3M/\ell+3J/E_0\le D_*$, each mass differs from its target $\alpha,1/3,\int y$ by at most $\ell$, and the count is at most $E_0$. Both inputs satisfy shift exclusion at almost every such pair. The first mass is at least $3c/4$, the second is within $\nu_0$ of $1/3$, and their sum is at most $3/8+1/3+2\ell<3/4$. Integrating the centered identity gives $\alpha+1/3+\int y\ge1-\rho$, so the triple's total is at least $1-\rho-3\ell\ge1-\nu_0$. The divisibility hypothesis follows from $\eta\le8/D_0$. The pair lemma now gives parallel interval lifts of order greater than $D_0$ and total error less than $e$, with densities in $[c/2,1-c/2]$ by the mass bounds.

Use [character uniqueness](uniqueness-of-cyclic-characters.md) with density margin $c/2$ and $2e<b_0$, then the [propagation lemma](common-character-for-interval-slices.md) with cutoff $\tau_0$ and exceptional measure $D_*$. This supplies a common character and interval approximants for $X,F$, with error at most $e$ in each family outside time sets of measure at most $2\tau_0$ each. Use empty intervals on those sets. The two integrated errors sum to at most $2e+4\tau_0\le r$.

## 3. Choosing the precision and checking the order

Set $c_1=3c/4$. Let $d_*>0$ be a triangle residual tolerance for the [approximate-character lemma](approximate-characters-on-an-interval.md) at error $\epsilon/10$. Take
$$
r=\min(c/100,1/1000,\epsilon/100,c_1^2 d_*^2/(100\pi^2)),
\qquad \beta=\min(B(r),r/300000).
$$
Use the common character from Section 2. If its order $n$ were at most $8/\eta$, then $n\mid Q_\eta$ and every interval lift under it would be $v$-invariant. For a shift-independent section $X_s$ and an invariant lift $P_s$, $2m(X_s\cap P_s)\le m(P_s)$, so its approximation error is at least $x(s)$. This contradicts $\alpha\ge c>r$. Thus $n>8/\eta$, so $1/n<\eta/8\le r$. We also have $\|f-1/3\|_1\le r$ and $\sigma_X+\sigma_Y\le r$.

## 4. Moving to circle arcs

Use the [finite-to-circle construction](from-cyclic-intervals-to-circle-arcs.md) to replace the lifts for $F$ by restrictions of arcs $I_s$ of length $1/3$. If $\delta_F$ is the integrated lift error, the grid approximation error is at most $a=2\delta_F+\|f-1/3\|_1+2/n\le5r$. The overlap estimate from shift independence gives $(1/3-\theta)_+\le2a+4/n<1/12$, where $\theta=\|\chi(v)\|_{\mathbb T}$. Thus $\theta>1/4$ and the intersection of $I_s\pm\theta$ has length $L=(2\theta-2/3)_+$. Its grid mass differs from $x(s)$ in integrated error at most $\sigma_X+2a$, and grid mass differs from Haar mass by at most $4/n$. Therefore $|\alpha-L|\le15r\le c/4$. In particular $L\in[c_1,1/3]$ and $\theta\ge1/3+3c/8$.

The two translates are centered at distance $1-2\theta<1/3$ on the side of the circle opposite the center of $I_s$. Their intersection and union are arcs of lengths $L,2/3-L$ with common center $p(s)=\operatorname{center}(I_s)+1/2$. At $\theta=1/2$ the translates coincide and both lengths are $1/3$. In either case the same finite-to-circle count comparison applies. Replacing the profiles by their grid models costs at most $\sigma_X+\sigma_Y+5a$, from the two product or union changes and the error for $F$. Perturbing the two grid inputs to continuous uniforms costs at most $4/n+2/n$ for the input tests and $8/n$ for the output test at fixed times by the boundary count. The triangle has area $1/2$. Thus the integrated circle count with the intersection, $I_s$, and the union in the roles $(X,F;Y)$ is at most
$$
E_{\mathbb T}\le I(X,F;Y)+\sigma_X+\sigma_Y+5a+8/n\le35r.
$$

## 5. Aligning the phases

The [circle triple-count lemma](circle-interval-triple-count.md) applies for all $L\le1/3$, including equality. It bounds the count below by $2c_1^2d^2$ for $d=\|p(u)+p(w)-p(u+w)\|_{\mathbb T}$. The chord is at most $2\pi d$. By Cauchy–Schwarz on the triangle of area $1/2$, the residual for $e^{2\pi i p(s)}$ is at most $(\pi/c_1)\sqrt{E_{\mathbb T}}\le(\pi/c_1)\sqrt{35r}<d_*$. Thus some real $\lambda$ gives phase chord error less than $\epsilon/10$ in $L^1$.

Moving an arc by circular distance $d$ changes its measure by at most $2d$, at most half the chord, and restricting the symmetric difference to the grid adds at most $4/n$. Since $I_s=[1/3,2/3)+p(s)$, the resulting $F$ model is $H_s$ and its error is at most $a+\epsilon/20+4/n\le9r+\epsilon/20$. Each centered model adds at most twice the $F$ error plus its original centering error, by changing the two translates separately. The total is at most $46r+\epsilon/4<\epsilon$.

The half-open arc $[1/3,2/3)$ is sum-free in the circle, so the additive preimage defining $H$ is sum-free on $G\times\mathbb R$ and the displacement $\theta>1/3$ makes it $v$-independent. For a proposed centered triple, the point in the union role belongs to $H+\sigma v$ for some $\sigma\in\{-1,1\}$. If it is an input and the intersection is the other input, subtract $\sigma v$ from the union input and add it to the intersection input, preserving the sum. If the union is an input and the intersection is the output, subtract $\sigma v$ from both. If the union is the output, subtract $\sigma v$ from both it and the intersection input. In every case the translated triple would belong to $H$, which is impossible. $\square$
