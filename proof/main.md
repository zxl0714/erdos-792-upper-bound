# A logarithmic upper bound for Erdős Problem #792

For a finite integer set $A$, let $\alpha(A)$ be the largest size of a subset with no solution to $x+y=z$, allowing equal inputs. Let $f(n)$ be the minimum of $\alpha(A)$ over $n$-element integer sets.

**Theorem.** There are absolute constants $C,n_0>0$ such that for every integer $n\ge n_0$, some $n$-element set $A_n\subset[n^2]$ satisfies
$$
\alpha(A_n)\le n/3+Cn/\log n.
\tag{1}
$$
In particular $f(n)-n/3=O(n/\log n)$.

## 1. Arithmetic input and its costs

Use the [estimate for small divisible shifts](lemmas/excluding-small-divisible-shifts.md)
at its exact every-N scope. It supplies fixed absolute constants
K,a,eta0,Cstar>0 and, for `0<eta<=eta0`,

    H=ceil(Cstar/eta), Q_eta=lcm(1,...,H),
    kappa_eta=K*eta^2<=eta/16, tau_eta=a*eta^2,

such that for every A subset[N],

    |A|/N>=1/3+eta, I_N(A):=T0(A)/N^2<=tau_eta
       => |A intersection Q_eta Z intersection[1,kappa_eta N]|
                                  <=8T0(A)/(eta N). (2)

Its elementary prime-power/binomial argument proves
`log Q_eta=O(eta^-1)`. Consequently

    1+log(2Q_eta/kappa_eta)+log(1/tau_eta)
                              +log(1/eta)=O(eta^-1). (3)

All implied constants are absolute, although they include an implicit
FIXED-precision structural constant from Griesmer's theorem. There
is no precision parameter tending to zero inside that structural
application. The eta-dependent accuracy in (2) comes instead from
the original-count orbit density estimate.

For eta values above eta0 needed in the finite initial construction
below, use the [small-shift estimate from the earlier bound](lemmas/square-root-logarithmic-upper-bound.md#6-uniform-finite-origin-exclusion). Only finitely many such values occur. Enlarging the absolute constant in (3) covers them.

## 2. Every-N compatible weights and their linear logarithmic cost

Use the [weight induction from the earlier bound](lemmas/square-root-logarithmic-upper-bound.md#7-weights-on-intervals). Suppose for every integer M>=N0 there are
weights of mean one, between1/4 and W, with

    I_M(A)<=delta => E_(j in[M]) 1_A(j)w_M(j)<=1/3+e.

At a parameter eta, put Q=Q_eta,kappa=kappa_eta and define

    N0'=ceil((2Q/kappa)*N0), W'=(2Q/kappa)*W,
    e'=(3/4)e+eta/4,
    delta'=min(delta*(kappa/(2Q))^2,
               eta*kappa/(144WQ), tau_eta).          (4)

For N>=N0', set `M=floor(kappa N/Q)` and

    w'_N(n)=1/4+(3N/(4M))*1_(n in Q[M])*w_M(n/Q).

It has mean one and the required height bound. If A has ordinary
density at least1/3+eta, (2) and the second branch of delta'
bound its weighted mass by1/3. If it has smaller density, exact
Schur-count preservation under dilation and the first branch allow
the old M-certificate to be applied, giving1/3+e'. The third entry in (4) is the threshold from (2).
Dilation preserves the triples with repeated inputs as well.

Start with `N0=W=delta=1,e=2/3`, using weights one. At step j
use `eta_j=(1/16)(7/8)^j`. Stop at the first J with
`eta_J<=epsilon/48`. The same elementary recurrence gives

    e_J<=epsilon/4,
    7epsilon/384<eta_J<=epsilon/48.

Let

    Phi_j=1+log(2Q_eta_j/kappa_eta_j)
                    +log(1/tau_eta_j)+log(1/eta_j),
    S_J=sum_(j<J) Phi_j.

By (3) and the finite initial convention,

    S_J=O(sum_(j<J) eta_j^-1)=O(epsilon^-1).          (5)

The logarithms of W_J and N_J are at most S_J and2S_J,
respectively. With `R_j=log(1/delta_j)`, its next value is the
maximum of

    R_j+2log(2Q_eta_j/kappa_eta_j),
    log72+log W_j+log(2Q_eta_j/kappa_eta_j)
                                  +log(1/eta_j),
    log(1/tau_eta_j).

Thus `R_J=O(S_J)` by induction. There is an absolute C0 such
that, for every sufficiently small epsilon>0, the same parameters
W,delta,N_min work for EVERY N>=N_min and satisfy

    W,N_min,delta^-1<=exp(C0/epsilon),
    E w_N=1, 1/4<=w_N<=W,
    I_N(A)<=delta => E 1_A w_N<=1/3+epsilon/4.        (6)

## 3. Polynomial-cost container rounding

Apply the [rounding lemma](lemmas/rounding-weighted-sets.md). For `0<epsilon,zeta<=1/4`,
weights of mean one and height W, and a bound

    I_N(A)<=zeta => E 1_A w_N<=theta,

that lemma gives a subset B of[N] with

    (1-epsilon/4)N/W<=|B|<=(1+epsilon/4)N/W,
    alpha(B)<=(theta+epsilon)|B|,                    (7)

provided

    N>=10^40*max(2,W,epsilon^-1,zeta^-1)^10.          (8)

Take `theta=1/3+epsilon/4`, `zeta=min(delta,1/4)` in (6).
The onset in (8), together with N_min, is at most
`exp(C1/epsilon)` for another absolute constant C1.

## 4. Every exact cardinality and the final inversion

Choose an absolute `C2>=max(C0,C1)` large enough that
`exp(C2/epsilon)>=epsilon^-1` in the range used. For any integer

    n>=exp(C2/epsilon),

choose `N=ceil((1+epsilon)Wn)` and apply (7). As in the saved
exact-cardinality argument, its selected size m satisfies

    n<m<=(1+3epsilon)n.

Choose any n-element subset A_n of B. Deletion does not increase
the largest sum-free subset size, so for epsilon<=1/12,

    alpha(A_n)<=(1/3+5epsilon/4)(1+3epsilon)n
                      <=n/3+3epsilon*n,
    max A_n<=N<=2n*exp(C0/epsilon).                  (9)

For every sufficiently large n, take

    epsilon=2C2/log n.

Then epsilon<=1/12, its required onset is sqrt(n)<=n, and (9)
gives excess at most `6C2*n/log n`. Its ambient interval satisfies

    max A_n<=2n^(1+C0/(2C2))<=2n^(3/2)<=n^2

for n>=4. This proves (1) at EVERY sufficiently large cardinality.
There is no padding, subsequence restriction, or uncounted repeated
variable in the deduction.

## 5. Lower bound

Bedert's lower bound gives $f(n)-n/3=\Omega(\log\log n)$ with the integer conventions used here. The order of the excess remains open. [Lower-bound audit](../docs/literature/lower-bound-audit.md)
