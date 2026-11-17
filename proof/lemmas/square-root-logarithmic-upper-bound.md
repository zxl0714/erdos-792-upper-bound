# A square-root logarithmic upper bound

**Theorem.** For all sufficiently large $n$, there is an $n$-element set $A\subset[n^2]$ whose largest sum-free subset has size at most $n/3+Cn/\sqrt{\log n}$, for an absolute $C$.

The proof first controls small divisible elements of dense sets with few Schur triples. It uses this control to build weights, then rounds the weights to an integer set. Section 6 also supplies the estimate used at the first few scales of the [logarithmic bound](../main.md).

## 1. Counts and theorems used

Write $T_q(F)=\sum_{a,b}1_F(a)1_F(b)1_F(a+b+q)$ on the integers, $I_N(F)=T_0(F)/N^2$ for $F\subset[N]$, and $\alpha(F)$ for the largest size of a sum-free subset. Ordered pairs with equal inputs count throughout. On finite groups, $\mathbb E$ denotes a uniform average. Set $C_r=65536$.

We use two sumset theorems. In Grynkiewicz's theorem, let $r_{X+Y}$ be the representation count and $P_j=\{z:r_{X+Y}(z)\ge j\}$. If $1\le j\le\min(|X|,|Y|)$ and $\sum_z\min(r_{X+Y}(z),j)<j(|X|+|Y|)-2j^2+1$, one can delete at most $j-1$ elements in total from $X,Y$ so that the remaining sumset is $P_j$. Kneser's theorem gives $|X+Y|\ge |X+H|+|Y+H|-|H|$ for the stabilizer $H$ of $X+Y$. [Grynkiewicz, Theorem 1.1](https://www.diambri.org/Mathpdfs/pollard--vFIN.pdf) · [Kneser's theorem, DeVos, Theorem 1](https://arxiv.org/abs/1303.3539)

## 2. Exclusion of one prescribed shift in a finite group

**Unweighted form.** Suppose $X,Y,Z$ are subsets of a finite abelian group $G$ of order $M$, each disjoint from its translate by $s$. If their total size is at least $(1+\delta)M$ and the count $E$ of $x+y=z$ in $X\times Y\times Z$ is at most $\delta^2M^2/4096$, with $0<\delta\le1/2$, there is a subgroup avoiding $s$ of size at least $\delta M/2$.

Indeed, each set has size at most $M/2$ and hence at least $U=\delta M$. For $U<32$ we have $E=0$. For $U\ge32$, put $j=\lfloor U/16\rfloor$, so $U/32\le j\le U/16$. Summing the truncated representation count for $Z-Y$ over $X$ and its complement gives
$$
\sum_z\min(r_{Z-Y}(z),j)
\le j(M-|X|)+E
\le j(|Y|+|Z|)-jU+E.
$$
Here $jU-2j^2-E\ge (1/32-1/128-1/4096)U^2>0$, so the popular-sum theorem applies. Delete at most $j-1$ elements from $Z,Y$ to realize $P_j(Z,-Y)$ as their difference set, and delete $X\cap P_j(Z,-Y)$ from $X$, at cost at most $E/j\le U/128$. In both cases the retained sets $C_1,C_2,C_3$ have no cross triple and total size $M_*\ge M+U/2$. All three are nonempty because any two have total size at most $M$.

Let $H$ stabilize $C_3-C_2$. The set $C_1+H$ is disjoint from $C_3-C_2$, so Kneser gives $\sum_i|C_i+H|\le M+|H|$ and $|H|\ge U/2$. If $s\in H$, each $C_i+H$ contains the disjoint sets $C_i,C_i+s$. This would give $2M_*\le M+|H|\le 2M$, a contradiction.

**Weighted form.** Let $u_i:G\to[0,1]$, $i=1,2,3$, satisfy
$$
\mathbb E_x\sum_i u_i(x)\ge1+\delta,\qquad
u_i(x)+u_i(x+s)\le1+\kappa,\qquad
e=\mathbb E_{x,y}u_1(x)u_2(y)u_3(x+y)\le\delta^2/C_r,
$$
where $0<\delta\le1/2$ and $0\le\kappa\le\delta/4$. There is a subgroup avoiding $s$ of index at most $4/\delta$.

Divide the functions by $1+\kappa$. Their total mean is at least $1+2\delta/3$ and their adjacent sums are at most one. Lift to $G\times\mathbb Z/p\mathbb Z$ with shift $(s,1)$, where $p>\max(B,4/\delta)$ is prime, $B=\lceil72/\delta\rceil$, and $M'=|G|p>1728B/\delta^2$. Break each shift cycle into blocks of length $B$ and at most one shorter block, and delete each block's final vertex. Each cycle has length at least $p$, so at most a fraction $2/B$ of vertices is deleted. This leaves paths of length at most $B-1$ vertices and total mean at least $1+7\delta/12$.

For each path and each role, independently draw $\theta$ uniformly in $[0,1]$. If the vertex weight is $v$, include that vertex when $\theta<v$ at even positions and $\theta>1-v$ at odd positions. Each marginal is $v$, and adjacent vertices cannot both be selected. The variance of the total size is at most $3BM'$ by independence and the path size bound. Chebyshev therefore gives total density at least $1+\delta/2$ with probability greater than $3/4$. The expected normalized cross count is at most $e$, because the roles are independent even when vertices coincide. Markov gives count at most $4e$ with probability at least $3/4$, including the case $e=0$ by nonnegativity. Some outcome satisfies both estimates.

Apply the unweighted form with surplus $\delta/2$, using $4e\le(\delta/2)^2/4096$. The resulting subgroup of the product has index at most $4/\delta<p$, so the image of the prime-order factor in the quotient is trivial. The subgroup is $H_0\times\mathbb Z/p\mathbb Z$, and $H_0$ avoids $s$ and has the required index.

## 3. Selecting three time sections

Let $\Delta=\{(x,y):x,y>0,\ x+y\le1\}$. For a measurable $h:G\times(0,1]\to[0,1]$ write
$$
d(h)=\int_0^1\mathbb E_a h(a,x)\,dx,\qquad
I(h)=\int_{\Delta}\mathbb E_{a,b}h(a,x)h(b,y)h(a+b,x+y)\,dx\,dy.
$$
For $0<\eta\le1/12$ put $Q_\eta=\operatorname{lcm}(1,\ldots,\lfloor8/\eta\rfloor)$. If
$$
d(h)\ge\tfrac13+\tfrac34\eta,\qquad h(a,x)+h(a+s,x)\le1+\eta/4\ \text{a.e.},\qquad
I(h)\le\eta^2/(12C_r),
$$
then $s\notin Q_\eta G$.

Draw $(x,y)$ with density $3(x+y)$ on $\Delta$. The two input marginals have density $3(1-z^2)/2$ each and the sum marginal has density $3z^2$. Let $T$ be the sum of the three section means and $E$ their normalized cross count. Then $\mathbb ET=3d(h)\ge1+9\eta/4$ and $\mathbb EE\le3I(h)$. The shift inequality gives $T\le3/2+3\eta/8$. Set $D=\min(1/2,(T-1)_+)$ and $X=D1_{\{D\ge\eta\}}$. Since $D\ge T-1-3\eta/8$ and $X\ge D-\eta$, we have $\mathbb EX^2\ge(7\eta/8)^2>C_r\mathbb EE$. There is a pair outside the null sets of exceptional times with $D\ge\eta$ and $E\le D^2/C_r$. The weighted result at $\delta=D,\ \kappa=\eta/4$ gives a subgroup avoiding $s$ of index at most $4/\eta$. Its index divides $Q_\eta$, hence it contains $Q_\eta G$.

## 4. A square-root empirical return on the integers

Suppose $F\subset[N]$, $a=|F|\ge N/3$, $0<\xi<1$, and $b,t$ are positive integers. Put $k=\lceil32/\xi^2\rceil$ and $L=\lceil4\cdot6^k\rceil$. If $btL\le N$, some multiple $q$ of $bt$ satisfies
$$
bt\le q<btL,\qquad T_{\pm q}(F)\le 2T_0(F)+\xi^2N^2.
$$

Let $f=1_F$, $C=f*f$ under counting convolution, $P=C/a$, and $V=|F+F|$. For a uniform tuple $u\in F^k$, with replacement, set $P_u(x)=k^{-1}\sum_i f(x-u_i)$. Where $P(x)>0$, the squared difference of the square roots is at most $(P_u(x)-P(x))^2/P(x)$, of expectation $(1-P(x))/k$ by Bernoulli variance. Where $P(x)=0$, $P_u(x)=0$. Thus $\mathbb E\|\sqrt{P_u}-\sqrt P\|_2^2\le V/k$. At least half the tuples have error at most $2V/k$ in squared norm.

Shift each of these tuples by each $s\in S=bt\{0,\ldots,L-1\}$ in every coordinate. There are at least $a^kL/2$ such tuple-shift pairs and at most $|F+S|^k\le(6a)^k$ possible images, since $btL\le N$ and $a\ge N/3$. Two distinct shifts $s,s'$ therefore give the same image $z$. For each shift, $P_z(\cdot+s)=P_{z-s\mathbf 1}$, so the square root of the corresponding translate of $P_z$ is within $\sqrt{2V/k}$ of $\sqrt P$. The triangle inequality, translating one comparison, gives
$$
\|\sqrt{C(\cdot+q)}-\sqrt C\|_2^2\le8aV/k,\qquad q=|s-s'|.
$$
This norm is the same for $-q$. Using $T_q(F)=\|\sqrt{C(\cdot-q)}\sqrt f\|_2^2$ and that multiplication by $\sqrt f$ contracts the norm,
$$
T_{\pm q}(F)\le2T_0(F)+16aV/k\le2T_0(F)+32N^2/k.
$$
The choice of $k$ finishes the bound, and $\log L=O(\xi^{-2})$.

## 5. Raw sampling with exact shift repair

For $F$ disjoint from $F+t$ and $1\le t\le q\le N$, apply the [modulo-$q$ sampler](sampling-an-integer-set-modulo-q.md). It gives a profile $h$ with $h(r,s)+h(r+t,s)\le1$, $d(h)\ge|F|/N-q/N-t/q$, and $I(h)\le(T_0(F)+T_q(F))/N^2$. The two integer carries in the sampler permit use of Section 4 without a density-sized error in the triple count.

## 6. Uniform finite origin exclusion

For $0<\eta\le1/12$, take $\xi=\eta/(10\sqrt{C_r})$, $b=\lceil16/\eta\rceil$, and $L$ from Section 4. Put
$$
\kappa_\eta=\eta/(16bL),\qquad \tau_\eta=\eta^2/(48C_r).
$$
Then $\kappa_\eta\le\eta/16$ and $\log\kappa_\eta^{-1},\log Q_\eta=O(\eta^{-2})$, using $Q_\eta\le\lfloor8/\eta\rfloor!$. For every $N$, if $|A|\ge(1/3+\eta)N$ and $I_N(A)\le\tau_\eta$, then
$$
|A\cap Q_\eta\mathbb Z\cap[1,\kappa_\eta N]|\le 8T_0(A)/(\eta N).
$$

To prove this, for $t>0$ write $L_A(t)=|\{x\in A:x+t\in A\}|$. If $Q_\eta\mid t$ and $t\le\kappa_\eta N$ but $L_A(t)\le\eta N/8$, then $F=\{x\in A:x+t\notin A\}$ has density at least $1/3+7\eta/8$ and is disjoint from $F+t$. Sections 4–5 apply since $btL\le\eta N/16$ and give $q/N,t/q\le\eta/16$. Their profile has
$$
d(h)\ge\tfrac13+3\eta/4,\qquad I(h)\le3I_N(A)+\xi^2
\le(1/16+1/100)\eta^2/C_r<\eta^2/(12C_r).
$$
Section 3 now excludes $t\bmod q$ from $Q_\eta(\mathbb Z/q\mathbb Z)$, contradicting $Q_\eta\mid t$. Thus each such $t$ has $L_A(t)>\eta N/8$. Sum over the eligible $t$ in $A$, using $\sum_{t\in A}L_A(t)=T_0(A)$.

## 7. Weights on intervals

For every $0<\varepsilon\le1/12$ we construct $N_{\min},W,\delta^{-1}\le\exp(C_0\varepsilon^{-2})$, with $C_0$ absolute. For every $N\ge N_{\min}$ there are mean-one weights $1/4\le w_N\le W$ for which $I_N(A)\le\delta$ implies weighted mass at most $1/3+\varepsilon/4$.

Suppose we have weights for all lengths at least $N_0$, with height $W$, count threshold $\delta$ and mass bound $1/3+e$. For the next stage at parameter $\eta$, set $Q=Q_\eta$, $\kappa=\kappa_\eta$, and
$$
N'_0=\lceil(2Q/\kappa)N_0\rceil,\qquad
W'=(2Q/\kappa)W,\qquad
e'=\tfrac34 e+\tfrac14\eta,\qquad
\delta'=\min\{\delta(\kappa/2Q)^2,\ \eta\kappa/(144WQ),\ \tau_\eta\}.
$$
At $N\ge N'_0$, put $M=\lfloor\kappa N/Q\rfloor\ge N_0$, so $M\ge\kappa N/(2Q)$. Assign uniform weight $1/4$ everywhere and add $3Nw_M(j)/(4M)$ at each $Qj$ with $j\in[M]$. The mean is one and the height is at most $W'$. Write $A_Q=\{j\in[M]:Qj\in A\}$. Its contribution to the new mass above the uniform part is $3\sum_{j\in A_Q}w_M(j)/(4M)$.

If $I_N(A)\le\delta'$ and $|A|/N\ge1/3+\eta$, Section 6 bounds this contribution by $6W I_N(A)N/(\eta M)\le1/12$. Including the uniform part gives mass at most $1/3$. If $|A|/N\le1/3+\eta$, then $I_M(A_Q)\le(N/M)^2 I_N(A)\le\delta$ because dilation preserves the integer triples. The previous weights give mass at most $(1/3+\eta)/4+3(1/3+e)/4=1/3+e'$.

Start with weights one, $N_0=W=\delta=1$ and $e_0=2/3$. At step $j$ use $\eta_j=(1/16)(7/8)^j$. Since $e_{j+1}=3e_j/4+\eta_j/4$, induction gives $e_j\le12\eta_j$. Stop at the first $J$ with $\eta_J\le\varepsilon/48$. For the cost, let $a_j=\log(2Q_{\eta_j}/\kappa_{\eta_j})$, $S_j=\sum_{i<j}a_i$. We have $a_j\ge\log(32/\eta_j)$ and $a_j=O(\eta_j^{-2})$. Thus $\log W_J=S_J$ and $\log N_J\le S_J+J\log 2\le2S_J$. Writing $R_j=\log\delta_j^{-1}$, the threshold recurrence is
$$
R_{j+1}=\max\{R_j+2a_j,\ \log 72+S_j+a_j+\log\eta_j^{-1},\
\log(48C_r)+2\log\eta_j^{-1}\}.
$$
Each stage gives $R_{j+1}\le C'S_{j+1}$ if $R_j\le C'S_j$, for a sufficiently large absolute $C'$. The geometric sum is $S_J=O(\eta_J^{-2})=O(\varepsilon^{-2})$, since $\eta_J>7\varepsilon/384$. This proves the claimed bounds.

## 8. Rounding the weights

Use the [rounding lemma](rounding-weighted-sets.md) with $\theta=1/3+\varepsilon/4$ and $\zeta=\min(\delta,1/4)$. Its sufficient size bound is polynomial in $W,\varepsilon^{-1},\zeta^{-1}$. By Section 7, for all $N\ge\exp(C_1\varepsilon^{-2})$ with absolute $C_1$, it gives a set $B\subset[N]$ with
$$
(1-\varepsilon/4)N/W\le |B|\le(1+\varepsilon/4)N/W,\qquad
\alpha(B)\le(1/3+5\varepsilon/4)|B|.
$$

## 9. Obtaining exactly $n$ elements

Fix $C_2\ge\max(C_0,C_1)$ large enough that $n\ge\exp(C_2\varepsilon^{-2})$ implies $n\ge\varepsilon^{-1}$. For each such $n$ set $N=\lceil(1+\varepsilon)Wn\rceil$. This lies between $(1+\varepsilon)Wn$ and $(1+2\varepsilon)Wn$. Section 8 then gives $n<|B|\le(1+3\varepsilon)n$. Any $n$-element subset $A$ of $B$ has
$$
\alpha(A)\le(1/3+5\varepsilon/4)(1+3\varepsilon)n\le n/3+3\varepsilon n.
$$
Also $N\le2n\exp(C_0\varepsilon^{-2})$. For all sufficiently large $n$ take $\varepsilon=\sqrt{2C_2/\log n}\le1/12$. Now $\exp(C_2\varepsilon^{-2})=\sqrt n$, and $N\le2n^{3/2}\le n^2$. This proves the theorem.
