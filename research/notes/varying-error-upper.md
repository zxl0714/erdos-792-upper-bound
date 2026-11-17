# Geometrically decreasing errors in Eberhard's measure iteration

Run: 2026-11-15T05-59-51-817Z-3b4198da. Status: scoped mathematical
deduction, checked below; **not** a complete candidate for PROBLEM.md.

## Question and source scope

The previous [upper-bound audit](../ARCHIVE_INDEX.md#record-068) used one error
parameter throughout Eberhard's contraction iteration. The number of
iterations is O(log K), each costing O(K) exponential levels. The
uncertainty here is whether earlier iterations can tolerate larger errors,
reducing the total tower height to O(K). The answer is yes: each iteration
may use its own period, and the contraction damps the earlier errors.

The only source lemmas used are Theorem 4.2 and Lemmas 5.1 and 5.3 of
Sean Eberhard, [*Følner sequences and sum-free sets*, arXiv:1401.6390v1](https://arxiv.org/html/1401.6390v1).
The [saved full HTML](../ARCHIVE_INDEX.md#record-069) controls formulas;
[the readable text](../ARCHIVE_INDEX.md#record-046) is a reading aid.
A fresh check of [the version page](https://arxiv.org/abs/1401.6390) on
2026-11-15 still lists only v1, dated 24 January 2014, with no withdrawal
notice. This is an adaptation of the published proof, not a claim of
novelty or of a sharp rate.

## 1. A contraction step with an independent period

Let eta in (0,1/12), and let N(eta), Q(eta) be valid parameters in
Theorem 4.2 for k=2. Let mu be a probability measure supported on [M]
with

    mu(A) <= 1/3 + e

for every sum-free A subset of the positive integers. Set

    x = max(N(eta), Q(eta) M).

Let nu be the measure supplied by Lemma 5.1 at n_0=x and error eta.
It is a probability measure by its explicit averaging construction.
Let tau(a)=Q(eta)a, and define

    mu' = (2/3) tau_* mu + (1/3) nu.

If nu(A)>1/3+2 eta, Lemma 5.1 says that A intersect [x] is contained
in a Q(eta)-periodic sum-free set. Such a periodic set contains no
multiple of Q(eta): containing residue zero would yield a+a=2a inside
it. Since tau_*mu is supported on multiples of Q(eta) in [x], its mass
on A is zero. Therefore mu'(A)<=1/3.

Otherwise nu(A)<=1/3+2 eta. The preimage tau^{-1}(A) is sum-free, so

    mu'(A) <= (2/3)(1/3+e) + (1/3)(1/3+2 eta)
            = 1/3 + (2/3)e + (2/3)eta.

Thus the new excess is bounded by

    e' = (2/3)e + (2/3)eta.                         (1)

No divisibility or compatibility relation between this period and any
previous period is required. The only support requirement is x>=QM.

## 2. Error schedule

Fix an integer K>=16, put rho=2/3, and define

    eta_j = (1/16)(3/4)^j,  j>=0.

Start with mu_0 a unit point mass at 1, for which e_0=2/3<=12 eta_0.
At step j>=1 use (1) with error eta_j and its own period Q_j.
Inductively,

    e_j <= (2/3)12 eta_{j-1} + (2/3)eta_j
         = (34/3)eta_j <= 12 eta_j.                (2)

Let J be the least nonnegative integer for which

    eta_J <= 1/(12K).

For K>=16, J>=1. Minimality gives

    1/(16K) < eta_J <= 1/(12K),                    (3)

and hence e_J<=1/K. The reciprocal error costs satisfy

    sum_{j=1}^J 1/eta_j
      = 16 sum_{j=1}^J (4/3)^j
      < 64(4/3)^J = 4/eta_J < 64K.                (4)

Thus a finite probability measure mu_J with sum-free mass at most
1/3+1/K can be built with only O(K) total scale-averaging cost.

## 3. Explicit support bound

For each eta_j use the explicit Gowers-based choices from the previous
[upper-bound audit, section 1](../ARCHIVE_INDEX.md#record-068): with u=1/eta_j,

    i = ceil((4u+3)/9),
    R = ceil(2^(2^((4u)^(2^(2^(i+9)))))),
    Q = lcm(1,...,R),
    N = max(ceil(4Ru), floor(4Qu/3)+1, ceil(32u), 16).

The two added lower bounds in N do not invalidate Theorem 4.2. The
same tower estimates as in [the previous independent review](../ARCHIVE_INDEX.md#record-070)
give, uniformly for u>=16,

    Q <= N <= E_10(3u),

where E_0(y)=y and E_{h+1}(y)=2^{E_h(y)}. For clarity, a coarse direct
count is: i+9<=3u; (4u)^(2^(2^(i+9)))<=E_4(3u);
R<=E_7(3u); Q<=E_2(R)<=E_9(3u); and N<=E_10(3u).
These comparisons have far more slack than needed.

At step j set L_j=ceil(32/eta_j), t_j=ceil(2/eta_j), and, for x>=N_j,
construct the Lemma 5.1 support bound T_j(x) using

    a_0=0,
    a_{s+1}=a_s+ceil(4x L_j^(a_s)/eta_j),
    T_j(x)=x L_j^(a_{t_j}).

These are exactly the required scale ratio, block length, and number
of blocks in the published lemma. If b_s=x L_j^(a_s), then

    b_{s+1}=b_s L_j^ceil(4b_s/eta_j).

Since b_s>=max(L_j,4/eta_j,16),

    log_2 b_{s+1}
      <= log_2 b_s + (b_s^2+1)log_2 b_s
      <= b_s^3 <= 2^{b_s}.

Hence T_j(x)<=E_{2t_j}(x).

By (3), each 1/eta_j<16K. Put B=E_10(48K), an intentionally generous
uniform upper bound for all Q_j,N_j, and use B as the initial support
bound for mu_0. Define recursively

    M_0=B,
    x_j=max(N_j,Q_j M_{j-1}),
    M_j=T_j(x_j).

Both summands defining mu_j are supported in [M_j]. Since M_{j-1}>=B,

    x_j <= M_{j-1}^2 <= 2^{M_{j-1}},
    M_j <= E_{2t_j+1}(M_{j-1}).

As eta_j<=1, t_j<=3/eta_j and 2t_j+1<=7/eta_j. Equation (4) gives

    M_J <= E_{448K}(B) = E_{448K+10}(48K).         (5)

Integer tower heights can be rounded upward harmlessly. No numerical
tower is evaluated in this argument.

## 4. Positive witnesses and every cardinality

Let M=M_J, d=pi(M), w=ceil(2K log_2 M), and take

    F={product_{p<=M} p^{e_p}: 0<=e_p<w},
    m=|F|=w^d.

For 1<=a<=M, unique factorization and an exact box-overlap count give

    |aF triangle F|/|F|
      =2[1-product_{p<=M}(1-v_p(a)/w)_+]
      <=(2/w)sum_p v_p(a)
      <=2 log_2 M/w <=1/K.

Lemma 5.3 applied to mu_J now gives alpha(F)<=m/3+2m/K.
For any n=qm+r, 0<=r<m, combine q disjoint positive dilates of F and
r additional positive integers. Restriction to each component yields

    alpha(A) <= q alpha(F)+r
             <= n/3+2n/K+(2/3)r.

Thus the threshold H_K=ceil(Km) ensures, for every n>=H_K,

    f(n)-n/3 <= 3n/K.                             (6)

This uses actual positive-integer witnesses and covers the original
signed, zero-inclusive minimization without extra hypotheses.

Since K<=M and M>=16, w<=M^3, m<=M^(3M)<=E_2(M), and H_K<=E_3(M).
Combining with (5), and using 48K<=E_{48K}(1), gives the explicit
coarse bound

    H_K <= E_{496K+13}(1) <= E_{500K}(1), K>=16.  (7)

## 5. Inversion

Let S=log_2^* n, so E_{S-1}(1)<n<=E_S(1). For sufficiently large S,
take K=floor((S-1)/500), which is at least 16. Then (7) implies
H_K<=E_{500K}(1)<=E_{S-1}(1)<n. Equation (6) applies to this exact n,
and K is comparable to S. Consequently

    f(n)-n/3 = O(n/log_2^* n).                     (8)

This improves the previously extracted O(n log(log* n)/log* n)
upper error from the same finitary proof. It remains vastly larger than
the known Omega(log log n) lower bound. It does **not** determine the
asymptotic order required by PROBLEM.md, and does not justify VERIFY.

## Check scope

The later [two-endpoint audit](../ARCHIVE_INDEX.md#record-071) makes the
k=2 Lemma 4.1 witness bookkeeping explicit using the smallest maximum
of the two endpoints. Both walk directions preserve its printed constants,
so no rate or scale parameter in this note changes.

The varying-period step and error schedule were proved algebraically,
with source hypotheses checked against the saved full text. The support
and conversion arguments were checked here and inherit the explicit
Gowers estimate audited previously. A small exact rational schedule
check is saved in [the experiment script](../ARCHIVE_INDEX.md#record-072)
and [its output](../ARCHIVE_INDEX.md#record-073); it tests
indexing and constants only, not the universal proof or huge supports.
Jacobian discovery for exact rational-expression evaluation returned
trigonometric, formal-series, and interval operations, none better suited
to this finite scalar Fraction calculation; Python exact arithmetic was
used instead. No timeout or unavailable result is used as evidence.
