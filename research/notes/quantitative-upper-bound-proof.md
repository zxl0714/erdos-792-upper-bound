# A quantitative upper bound for the largest sum-free subset problem

Run: `2026-11-15T11-03-40-924Z-43eaf45a`. Date: 2026-11-15.
Status: consolidated proof of a scoped **RESEARCH upper bound**, assembled
from the reviewed arguments cited below; its [consolidated review](quantitative-upper-bound-proof-review.md) also passed. This is not a candidate resolving
PROBLEM.md, and no claim of publication novelty is made.

For a finite integer set A, let alpha(A) be the maximum cardinality of
a sum-free subset of A. All sum-free conditions below prohibit repeated
variables as well: x+x=z is forbidden when all its entries belong to the
set. We prove the following intermediate theorem.

**Theorem.** There are absolute constants C and n_0 such that, for every
integer n>=n_0, there is an n-element set A of positive integers with

\[
\alpha(A)\le \frac n3+
             \frac{Cn}{(\log\log n)^{1/20}}.             \tag{1}
\]

Consequently the function in PROBLEM.md satisfies the same upper bound.
The logarithms in (1) and in asymptotic estimates are natural logarithms.
The proof gives no matching lower bound and therefore does not determine
the requested constant-factor asymptotic order.

## 1. External inputs and notation

For finite subsets X,Y of an abelian group, write

\[
r_{X+Y}(z)=|\{(x,y)\in X\times Y:x+y=z\}|,
\quad P_j(X,Y)=\{z:r_{X+Y}(z)\ge j\}.
\]

We use the following precise forms of three standard inputs.

**Popular sums, Grynkiewicz (2010), Theorem 1.1.** Let X,Y be finite
nonempty subsets of an abelian group, and let 1<=j<=min(|X|,|Y|)
be an integer. If

\[
\sum_z\min(r_{X+Y}(z),j)
       <j(|X|+|Y|)-2j^2+1,                              \tag{2}
\]

then there are X' subset X and Y' subset Y with

\[
|X\setminus X'|+|Y\setminus Y'|\le j-1,
\qquad X'+Y'=P_j(X,Y).                                 \tag{3}
\]

These are the conclusions needed from *On extending Pollard's theorem
for t-representable sums*, Israel J. Math. 177 (2010), 413–439,
[Theorem 1.1 in the author's final PDF](https://www.diambri.org/Mathpdfs/pollard--vFIN.pdf).
The [source audit](../../docs/literature/quantitative-finite-exclusion-literature.md) checks the
strict threshold, total deletion count, and exact-set equality.

**Kneser's theorem.** If X,Y are finite nonempty subsets of an abelian
group and H is the stabilizer of X+Y, then

\[
|X+Y|\ge |X+H|+|Y+H|-|H|.                              \tag{4}
\]

We use [DeVos, Theorem 1](https://arxiv.org/abs/1303.3539) for this form.

**Regular Bohr radii.** Let Gamma be a nonempty set of d characters of
a finite abelian group. Define

\[
B(\Gamma,\rho)=\{x:|\gamma(x)-1|\le\rho
                         \text{ for every }\gamma\in\Gamma\}.
\]

For 0<rho_0<=1/8, some rho in [rho_0,2rho_0] has the property that,
for |v|<1/(100d),

\[
(1-100d|v|)|B(\Gamma,\rho)|
 \le |B(\Gamma,(1+v)\rho)|
 \le(1+100d|v|)|B(\Gamma,\rho)|.                       \tag{5}
\]

This is the standard regular-radius lemma, in the convention of
[Terry–Wolf, Section 2, Lemma 2](../ARCHIVE_INDEX.md#record-077).
It applies to arbitrary finite abelian groups, without a stability
hypothesis or a prime-modulus assumption. Only this Bohr-set fact from
that paper is used. Source versions and errata are recorded in the
[Fourier source manifest](../ARCHIVE_INDEX.md#record-048).

On a finite group G of order q, expectations use normalized counting
measure. All unqualified sums over G use counting measure. Put

\[
C_w=12^3\cdot4096=7\,077\,888.
\]

## 2. A weighted three-section exclusion lemma

**Lemma 1.** Let G be finite abelian of order q, let F subset G be
nonempty, and let u,v,w:G->[0,1]. Suppose 0<delta<=1/2,
0<=kappa<=delta/4, and

\[
\sum_a(u(a)+v(a)+w(a))\ge(1+\delta)q,                  \tag{6}
\]

\[
g(a)+g(a+f)\le1+\kappa
\quad(g\in\{u,v,w\},\ a\in G,\ f\in F),              \tag{7}
\]

\[
E_w:=\sum_{a,b}u(a)v(b)w(a+b)
             \le\delta^5q^2/C_w.                      \tag{8}
\]

Then some proper subgroup H satisfies F intersect H empty and
|H|>=delta q/2.

**Proof.** Summing (7) for any fixed f in F bounds each function's
mass by (1+kappa)q/2. Set U=delta q and lambda=delta/12, and
threshold u,v,w at lambda, with supports X,Y,Z respectively. The
restricted functions lose at most 3lambda q=U/4 of total mass, so
their combined mass M_0 is at least q+3U/4. Each restricted mass
is at least

\[
M_0-(1+\kappa)q\ge U/2.                               \tag{9}
\]

Thus the three supports are nonempty, each has at least U/2 points,
and s:=|X|+|Y|+|Z|>=q+3U/4. If E counts the triples x+y=z
in X times Y times Z, then

\[
E\le E_w/\lambda^3\le U^2/4096.                        \tag{10}
\]

If U<32, (10) makes the integer E zero, so these supports already
avoid all such triples. Their mass is at least q+3U/4.

If U>=32, put j=floor(U/16). Then
2<=j, U/32<=j<=U/16, and j<=min(|Y|,|Z|). Let
T_j=sum_a min(r_(Z-Y)(a),j). Splitting this sum over X and its
complement gives

\[
T_j\le j(q-|X|)+E
     =j(|Y|+|Z|)-j(s-q)+E.                            \tag{11}
\]

The margin for the published 2010 threshold is

\[
j(s-q)-2j^2-E
 \ge\left(\frac3{128}-\frac1{128}-\frac1{4096}\right)U^2
 =\frac{63U^2}{4096}>0.                               \tag{12}
\]

Consequently (2) applies to Z and -Y. It gives Z' subset Z and
Y' subset Y, deleting at most j-1 points in total, such that
P:=Z'-Y' is the original j-popular difference set. Delete X intersect P
from X. Each such point accounts for at least j of the E original
triples, so this further deletion costs at most

\[
E/j\le U/128.
\]

The three remaining supports now avoid x+y=z. As all weights are
at most 1, their total retained mass M is at least

\[
M_0-j-E/j\ge q+87U/128\ge q+U/2.                     \tag{13}
\]

In both cases we have retained functions g_i, with supports C_i,
such that

\[
(C_1+C_2)\cap C_3=\varnothing,
\qquad M\ge q+U/2,\qquad M>(1+\kappa)q.               \tag{14}
\]

All C_i are nonempty: otherwise the other two masses total at most
(1+kappa)q, contradicting (14). Restrictions preserve (7), since
the functions are nonnegative and only decrease.

Let D=C_3-C_2 and H=Stab(D). The set C_1+H avoids D because C_1
avoids D and D is H-periodic. Applying (4) to C_3 and -C_2 yields

\[
\sum_{i=1}^3|C_i+H|\le q+|H|.                        \tag{15}
\]

Each saturation contains at least its function's retained mass;
therefore |H|>=M-q>=U/2. If f belonged to F intersect H, summing
the inherited inequality (7) over C_i+H would give

\[
2\sum_{a\in C_i}g_i(a)\le(1+\kappa)|C_i+H|.
\]

Here the functions are extended by zero outside C_i, and the saturation
is invariant under translation by f. Summing over i would force
the left side of (15) to be at least 2M/(1+kappa)>2q, whereas its
right side is at most 2q. This contradiction excludes every f in F
from H. Since F is nonempty, H is proper. ∎

## 3. Balanced selection of three time sections

Write Delta={(x,y):x>0,y>0,x+y<1}. For measurable
h:G times (0,1]->[0,1], define

\[
d(h)=\int_0^1\mathbb E_a h(a,s)\,ds,
\qquad
I(h)=\int_\Delta\mathbb E_{a,b}
 h(a,x)h(b,y)h(a+b,x+y)\,dx\,dy.                       \tag{16}
\]

**Lemma 2.** Suppose F subset G is nonempty, 0<eta<=1/12, and

\[
d(h)\ge1/3+3\eta/4,\qquad
h(a,s)+h(a+f,s)\le1+\eta/4,\qquad
I(h)\le\eta^6/(12C_w),                               \tag{17}
\]

where the shift inequality holds for every a,f and almost every s.
For Q_eta=lcm(1,...,floor(2/eta)), one then has
F intersect Q_eta G empty.

**Proof.** Give Delta probability density 3(x+y), and put z=x+y.
The x and y marginal densities are each (3/2)(1-s^2), while the
z marginal is 3s^2. Their sum is 3, and the joint density integrates
to 1. Thus, with m(s)=sum_a h(a,s) and T=m(x)+m(y)+m(z),

\[
\mathbb E[T/q]=3d(h)\ge1+9\eta/4.
\]

Since 0<=T/q<=3, the event T>=(1+eta)q has probability at least

\[
\frac{5\eta/4}{2-\eta}\ge5\eta/8.                    \tag{18}
\]

For E(x,y)=sum_(a,b)h(a,x)h(b,y)h(a+b,z), the probability
expectation of E(x,y)/q^2 is at most 3I(h). Markov's inequality gives

\[
\mathbb P\{E(x,y)>\eta^5q^2/C_w\}
 \le3I(h)C_w/\eta^5\le\eta/4.                         \tag{19}
\]

Hence there is a time triple satisfying the mass bound in (18) and
the count bound complementary to (19). The absolutely continuous
marginals also avoid all exceptional times in the finitely many
shift inequalities. Apply Lemma 1 to these sections with delta=eta
and kappa=eta/4. Its subgroup H avoids F and has index m<=2/eta.
The integer m divides Q_eta, and Lagrange's theorem in G/H gives
Q_eta G subset mG subset H. This proves the claim. The argument
allows 0 in F; in that case the hypotheses are inconsistent. ∎

## 4. A positive finite model with controlled cost

**Lemma 3.** Let A subset [N] be sum-free and t belong to A. Let
0<sigma,epsilon<1 and 0<rho_0<=min(sigma/2,1/8), and put

\[
D=\lceil\sigma^{-2}\rceil+1,
\qquad K=\left\lceil\frac{10000D}{\epsilon\rho_0}\right\rceil.
\]

If N>=tK^D, there are an integer q and a measurable
h:C_q times (0,1]->[0,1] such that

\[
t\mid q,\quad t\le q\le tK^D\le N,                   \tag{20}
\]

\[
d(h)\ge |A|/N-16\rho_0-q/N-\epsilon,
\quad h(r,s)+h(r+t,s)\le1,
\quad I(h)\le96\sigma+\epsilon/2.                    \tag{21}
\]

**Proof.** Set M=4N and regard f=1_A as a function on C_M, zero
off [N]. Since sums of two members of [N] do not wrap modulo M,

\[
\Lambda(f):=\mathbb E_{a,b\in C_M}f(a)f(b)f(a+b)=0.
\]

Also f(n)+f(n+t)<=1 for every cyclic n: if both values were 1,
the representative n in A has n+t<=2N<M and yields an ordinary
forbidden triple with t.

Use normalized Fourier coefficients
hat f(r)=M^{-1}sum_n f(n)exp(-2 pi i rn/M). Let Gamma consist of
the nonzero frequencies with |hat f(r)|>=sigma, together with
frequency 1. Parseval bounds d:=|Gamma| by sigma^{-2}+1<=D.
Choose a regular radius rho in [rho_0,2rho_0] by (5), and let p_B
be the probability measure uniform on B=B(Gamma,rho). Define

\[
g(n)=\sum_b p_B(b)f(n-b).
\]

Positivity gives 0<=g<=1, sum g=|A|, and

\[
                         g(n)+g(n+t)\le1.              \tag{22}
\]

On each large frequency, the multiplier sum_b p_B(b)exp(-2 pi i rb/M)
differs from 1 by at most rho<=sigma. On a remaining nonzero
frequency the Fourier error is at most 2sigma; frequency 0 has no
error. Thus

\[
\|\widehat f-\widehat g\|_\infty\le2\sigma,
\qquad 0\le\Lambda(g)\le6\sigma.                     \tag{23}
\]

For the second inequality, telescope the three factors in Lambda.
The Fourier formula, Cauchy–Schwarz, and Parseval bound each term
by the displayed Fourier error times the L2 norms of the two other
factors, each at most 1.

Frequency 1 confines the signed representatives of all kernel support
elements to |b|<=rho M, since |exp(2 pi i u)-1|>=4||u||.
Consequently g has at most 2rho M support points outside [N],
each with value at most 1. These boundary ranges do not overlap
ambiguously modulo M, since rho<=1/4. Hence

\[
\frac1N\sum_{n=1}^N g(n)\ge |A|/N-8\rho
                              \ge |A|/N-16\rho_0.     \tag{24}
\]

Apply simultaneous Dirichlet approximation to the d numbers tr/M,
r in Gamma: partition the torus into K^d equal boxes and use the
K^d+1 multiples with coefficients 0,...,K^d. Their difference gives
a positive integer ell<=K^d with ||ell tr/M||<=1/K for every r.
Put q=t ell. This proves (20), so q is also nonzero modulo M.
Let tau=2 pi/K. Translation by q changes every Gamma-character by
at most tau, and

\[
B(\Gamma,\rho-\tau)\subset B\cap(B+q),\qquad
B\cup(B+q)\subset B(\Gamma,\rho+\tau).
\]

The choice of K ensures tau/rho<1/(100d). Regularity therefore
gives

\[
\|p_B-T_qp_B\|_{\ell^1}
 \le200d\tau/\rho\le\epsilon,
\qquad \|T_qg-g\|_\infty\le\epsilon.                 \tag{25}
\]

The numerical constant 10000 exceeds 400 pi, and d<=D and
rho>=rho_0. The last implication in (25) uses |f|<=1.

For r in C_q and 0<s<=1 define

\[
n_r(s)=r+q\left\lfloor\frac{Ns-r}{q}\right\rfloor,
\qquad H(r,s)=g(n_r(s)).                               \tag{26}
\]

The formula is independent of the chosen integer representative of r;
n_r(s) is the largest integer in that residue class at most Ns.
Its deficit Ns-n_r(s) lies in [0,q). Accordingly,

\[
n_r(x)+n_u(y)-n_{r+u}(x+y)\in\{0,-q\},
\qquad n_{r+t}(s)-(n_r(s)+t)\in\{0,-q\}.              \tag{27}
\]

The first statement follows by adding the two deficits; the second
uses t<=q. Thus both rounding errors require at most one q-shift,
including the case q=t. Equations (22), (25), and (27) give
H(r,s)+H(r+t,s)<=1+epsilon. Set h=H/(1+epsilon), so the shift
inequality in (21) is exact.

Each sampled integer n corresponds to the time interval
[n/N,(n+q)/N) intersect (0,1], of length at most q/N, and of
length exactly q/N when 1<=n<=N-q. After averaging residues,

\[
d(H)\ge N^{-1}\sum_{n=1}^N g(n)-q/N.
\]

The rescaling loses at most epsilon in average, proving the density
bound in (21) by (24).

For the Schur count, the first carry in (27) and (25) bound the
integrand for H by
g(n_r(x))g(n_u(y))g(n_r(x)+n_u(y))+epsilon. The error integrates
to epsilon/2 over Delta. Enlarge the nonnegative remaining integral
to the full unit square. Each pair of sampling intervals has area
at most (q/N)^2, cancelling the residue prefactor q^{-2} and
leaving N^{-2}. The sampled integers lie in {-q+1,...,N}, of
cardinality N+q<=2N<M, so they are distinct modulo M. Their pair
sum is consequently bounded by the full cyclic sum. Therefore

\[
I(H)\le(M/N)^2\Lambda(g)+\epsilon/2
      \le96\sigma+\epsilon/2.
\]

Finally h<=H gives the same upper bound for I(h). This uses an
upper bound by a nonnegative cyclic count, not an equality with
a truncated integer count; negative representatives and wrapping of
their sums cause no exception. ∎

## 5. Quantitative exclusion of small prescribed multiples

**Proposition 4.** For 0<eta<=1/12 there is a positive integer c_eta
with

\[
\log c_\eta\le C_0\eta^{-20},\qquad
Q_\eta=\operatorname{lcm}(1,\ldots,\lfloor2/\eta\rfloor), \tag{28}
\]

where C_0 is absolute, such that every positive-integer sum-free set
A and positive integer x satisfy

\[
|A\cap[c_\eta x]|\ge(1/3+\eta)c_\eta x
\quad\Longrightarrow\quad
A\cap[x]\cap Q_\eta\mathbb N=\varnothing.              \tag{29}
\]

**Proof.** Choose

\[
\sigma=\epsilon=\frac{\eta^6}{100000C_w},\qquad
\rho_0=\sigma/4,\qquad
D=\lceil\sigma^{-2}\rceil+1,
\quad K=\left\lceil\frac{10000D}{\epsilon\rho_0}\right\rceil,
\quad c_\eta=\left\lceil\frac{16K^D}{\eta}\right\rceil. \tag{30}
\]

Suppose B subset [N] is sum-free, t belongs to B, Q_eta divides t,
N>=c_eta t, and |B|/N>=1/3+eta. Lemma 3 supplies q,h with
q/N<=eta/16 and exact shift inequality for f=t mod q. Its density
and Schur bounds are

\[
d(h)\ge1/3+\eta-5\sigma-\eta/16
      \ge1/3+7\eta/8\ge1/3+3\eta/4,
\]

\[
I(h)\le100\sigma=\eta^6/(1000C_w)<\eta^6/(12C_w).       \tag{31}
\]

The inequality 5sigma<=eta/16 holds throughout the stated range.
Apply Lemma 2 to the nonempty singleton F={t mod q}. Its conclusion
contradicts t mod q in Q_eta C_q, which follows from Q_eta dividing t.
The singleton is not discarded when t mod q=0. This proves
|B|<(1/3+eta)N under the other assumptions. Taking N=c_eta x and
B=A intersect [N] proves (29), since a hypothetical t in its excluded
intersection would satisfy N>=c_eta t.

Finally, D<=3sigma^{-2} and
K<=80000D/sigma^2<=240000sigma^{-4}, so the ceilings in (30) give

\[
\log c_\eta\le\log(32/\eta)+D\log K
 \le C\eta^{-12}\log(e/\eta)
 \le C'\eta^{-13}\le C_0\eta^{-20}.                   \tag{32}
\]

All constants are absolute; C_w is fixed. The conservative exponent
20 will be retained below. In particular c_eta depends on eta alone,
not on B,N,t,x, or the selected spectrum. ∎

## 6. Finite measures with small maximum sum-free mass

Suppose a probability measure mu supported on [M] assigns every
sum-free set mass at most 1/3+e. For a choice of eta, let tau(a)=Q_eta a,
let nu be uniform on [c_eta Q_eta M], and put

\[
\mu'=(2/3)\tau_*\mu+(1/3)\nu.
\]

If a sum-free A has nu(A)>1/3+eta, (29), with x=Q_eta M, forces
tau_*mu(A)=0; hence mu'(A)<=1/3. Otherwise dilation preserves
sum-freeness and

\[
\mu'(A)\le1/3+(2/3)e+\eta/3.                         \tag{33}
\]

The support of mu' lies in [c_eta Q_eta M]. The periods in different
steps need no divisibility relation.

Fix an integer k>=16. Start with the point mass at 1 and use

\[
\eta_j=(3/4)^j/16,\qquad
J=\min\{j:\eta_j\le1/(12k)\}.
\]

The initial excess 2/3 is at most 12eta_0, and (33) gives the induction

\[
e_j\le(2/3)12(4/3)\eta_j+\eta_j/3
      =11\eta_j\le12\eta_j.
\]

Thus a probability measure mu on [M] has maximum sum-free mass at
most 1/3+1/k, where

\[
M=\prod_{j=1}^Jc_{\eta_j}Q_{\eta_j},\qquad
12k\le\eta_J^{-1}<16k.                                \tag{34}
\]

The elementary estimate Q_eta<=R^R for R=floor(2/eta) gives
log Q_eta<=4eta^{-2}, which suffices with (28). Therefore

\[
\log M\le C\sum_{j=1}^J\eta_j^{-20}
 \le\frac{C\eta_J^{-20}}{1-(3/4)^{20}}
 \le C_2 k^{20}.                                      \tag{35}
\]

There is no extra log k factor: the sum is geometric. This does not
assume c_eta is monotone. The last period in the product also gives
M>=Q_(eta_J)>=floor(2/eta_J)>=24k.

## 7. Positive integer witnesses of every large cardinality

Set

\[
w=\lceil2k\log_2 M\rceil,
\qquad B=\left\{\prod_{p\le M}p^{e_p}:0\le e_p<w\right\},
\qquad m=|B|=w^{\pi(M)}.                               \tag{36}
\]

For 1<=a<=M, unique factorization gives

\[
\frac{|aB\mathbin\triangle B|}{m}
 =2\left[1-\prod_{p\le M}(1-v_p(a)/w)_+\right]
 \le\frac2w\sum_{p\le M}v_p(a)
 \le\frac{2\log_2 M}{w}\le1/k.                       \tag{37}
\]

The product inequality also holds if one valuation is at least w,
as its right side is then at least 2.

Here is the finite averaging argument behind the Følner conversion,
as in [Eberhard, Lemma 5.3](../ARCHIVE_INDEX.md#record-069).
For a sum-free S subset B and b in B, the set
A_b={a in [M]:ab in S} is sum-free. Hence mu(A_b)<=1/3+1/k.
Averaging over b uniformly and using (37) gives

\[
1/3+1/k\ge\mathbb E_b\mu(A_b)
 =\sum_{a\le M}\mu(a)\frac{|S\cap aB|}{m}
 \ge |S|/m-1/k.
\]

It follows that alpha(B)<=m/3+2m/k. This is a finite estimate;
no limiting Følner theorem is required.

Write an arbitrary n as ell m+r, 0<=r<m. Take ell disjoint positive
dilates of B and r further distinct positive integers. Such dilates
exist explicitly: if T>max B, use T^iB for 0<=i<ell. Any sum-free
subset of their union restricts to a sum-free subset of each dilate,
and therefore has size at most

\[
\ell\alpha(B)+r
 \le n/3+2n/k+(2/3)r
 \le n/3+3n/k\quad\text{if }n\ge km.                  \tag{38}
\]

Additional triples between components only restrict such a subset
further. Thus the construction works for every n>=H_k:=km, not
just for a subsequence of cardinalities.

Since k<=M and M>=16, one has w<=M^3, pi(M)<=M, and m<=M^(3M).
For instance log_2 M<=M/2 gives w<=M^2+1<=M^3. Consequently

\[
\log H_k\le\log M+3M\log M\le M^2,
\qquad H_k\le\exp(\exp(C_3k^{20})),                 \tag{39}
\]

using (35). The elementary inequality in (39) follows from
log M<=M/4 for M>=16. Finally, for sufficiently large n choose

\[
k=\left\lfloor
      \left(\frac{\log\log n}{2C_3}\right)^{1/20}
    \right\rfloor.
\]

Then k>=16, k is comparable to (log log n)^(1/20), and (39) gives
H_k<=exp(exp((log log n)/2))<=n. Substituting into (38) proves (1).
All constructed sets are positive, so they are allowed in the original
minimum over sets of arbitrary integers. ∎

## Review and source record

The proof incorporates the saved reviews of the
[weighted three-section argument](../ARCHIVE_INDEX.md#record-078),
[balanced measurable composition](../ARCHIVE_INDEX.md#record-079),
[finite model and exclusion parameters](../ARCHIVE_INDEX.md#record-080),
and [measure/Følner rate calculation](../ARCHIVE_INDEX.md#record-081).
The [2010 source audit](../../docs/literature/quantitative-finite-exclusion-literature.md)
checks the older popular-sum theorem used in (12); its exact source
files and versions are in the
[finite-exclusion source manifest](../ARCHIVE_INDEX.md#record-052).
The regular-Bohr input and Fourier-method precedents are recorded in
the [Fourier source manifest](../ARCHIVE_INDEX.md#record-048).
These records concern correctness and scope, not publication priority.

The retained result is the upper estimate (1). It supplies no matching
lower bound and leaves the original constant-factor asymptotic problem
unresolved.
