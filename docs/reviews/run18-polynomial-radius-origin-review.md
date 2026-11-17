# Independent review of the universal origin composition

Run `2026-11-17T12-05-38-564Z-905bb2c7`; 17 November 2026.
Reviewer: `run17_long_gap`. Scoped RESEARCH review.

Reviewed [composition](../../proof/lemmas/excluding-small-divisible-shifts.md),
frozen SHA256

    b356e77e7fdb40aced2594a08103ec39d68b057bf8dd662334a692a8d05d4adf.

**Verdict: PASS at the stated universal origin-certificate scope.**
The structural input was pending when the parameter audit began. It
has now been saved and independently reviewed, and its exact interface
matches the composition; the fixed dependency is recorded in Section 2.
All original-count, finite-size, divisibility and logarithmic-cost
steps below pass. No proof correction is required.

## 1. Full return and raw profile

I checked the return directly against Sections 4--5 of the reviewed
[standalone upper proof](../../proof/lemmas/square-root-logarithmic-upper-bound.md), rather than
substituting the centered asymmetric return. Its exact parameters are
k=ceil(32/xi^2), L=ceil(4*6^k), and it supplies both signs with
T_q<=2T0+xi^2N^2 whenever BtL<=N and |F|>=N/3. The displayed
xi is in (0,1), since beta<=1/12. Sampling is with replacement,
so no relation k<=|F| is needed.

For eta<=1, B<=17/eta. The choice K<=1/(272L) gives
BtL/N<=eta/16. Hence all return and raw sampler hypotheses hold,
with q/N,t/q<=eta/16 and q>=Bt>t. The exact raw shift exclusion
is preserved by its mask. The density is at least 1/3+3eta/4,
and its count is bounded by

    3a eta^2+xi^2
      <=beta^2/(24Cr)+beta^2/(100Cr)<beta^2/(6Cr).

There is no uncharged boundary contribution to this count. The
return complexity is fixed in eta, as intended; this step does not
pretend its carried count is of order eta^2.

## 2. Modulus and structural interface

With eta_s=8/H one has floor(8/eta_s)=H exactly. Since H>=8/eta,
eta_s<=eta<=beta. The integer divisibility Q_eta|t gives
t mod q in Q_eta C_q for every q, independently of any gcd.

The composition's structural input has the correct one-profile shape:
exact shift exclusion, integrated mass at least one third, one full
self-count, and the lcm-image condition. It does not import centered
intersection or union information. Its additional displacement target
5/16 is sufficient for the arithmetic step below.

I checked this against the now-frozen
[one-profile theorem](../../proof/lemmas/interval-structure-of-a-cyclic-profile.md), SHA256

    aa190cab861a87ea845587971c354e0ccfa3892029231e3055eca43118232b9c,

and its [independent review](run18-one-profile-spacetime-model-review.md),
SHA256

    655e3103259a4294c43f905c226baf80d049db18b9445f316e7cc24c7e5bf53f.

The theorem applies for any fixed requested accuracy at most 10^-4;
the present epsilon_model is well within that range. Its beta is
positive, fixed absolutely and at most 1/12. It has exactly the full
self-count threshold beta^2/(6Cr), covers every finite cyclic group
without an onset, and yields order n>8/eta_s and displacement at least
1/3-epsilon_model/10>5/16. The separate review also checks the new
finite-circle interface and all source hypotheses. Thus this dependency
is now discharged; no centered or anchor assumption is missing.

## 3. Unfolding and all-block discrepancy

The raw unfolding hypotheses follow from q/N,t/q<=eta/16<=1/10
and the fixed epsilon_model<=1/20. Its common-offset error is at most

    (4/15+1/16)epsilon_aff<epsilon_aff,

using eta<=epsilon_aff. The strict slope conclusion gives circular
frequency displacement less than 4eta/(16-eta)<=4eta/15.
If the supplied structural displacement is at least 5/16, then
eta<=1/12 implies

    ||omega*t||>5/16-1/45>1/4=b0.

For every h<=H, h divides Q_eta and hence t. The reviewed rational
frequency argument therefore proves ||h*omega||>=h*b0/t. No
coprimality or denominator-reduction assumption is needed.

The saved discrepancy theorem is uniform for every consecutive block,
with all interval endpoint conventions. Its common upper allowance
is Edisc=N/(H+1)+3t/(2b0). Since b0=1/4 and K<=1,

    Edisc/N<=eta+6eta^2<=3eta/2<=gamma/64.

The last bound follows from eta<=gamma/1024. This is a statement
about the full orbit, not about an independently distributed selected
subset of it.

## 4. Original-count refinement and density budget

The affine reduction receives the required approximation, discrepancy
and original count: a<=gamma^2/1024 and eta<=1 give its count
threshold. Also positive t<=K eta^2 N with K<=1/16 implies N>=16.
Thus there is no separate small-N exception.

The reduction fills only an open 2delta0 core. The closed 3delta0
core is strictly inside it; its enlarged strip contains the retained
support. The width 3/1000 is within the reviewed block theorem's
1/100 limit. Original T0 does not increase, and discarded mass is
at most 8a eta^2/delta0. Shift independence need not survive this
modification and is not used in the subsequent orbit density theorem.

The four final errors have the asserted individual budgets:

    sqrt(a)*eta<=eta/16,
    A0/(H+1)<=A0*eta/32000=eta/16,
    A0*sqrt(K/b0)*eta<=eta/16,
    8a eta^2/delta0<=eta^2/16<=eta/16.

They give density at most 1/3+eta/4, contradicting the input density
1/3+7eta/8. The refined count here is T0 of the original integer
set, not the larger returned count used only for coarse structure.

## 5. Uniform origin certificate

If a shift t has at most eta N/8 pairs x,x+t in A, removing the
lower endpoints of all such pairs gives
F={x in A:x+t notin A}. This set is exactly t-independent,
retains density at least 1/3+7eta/8, and its original count is no
larger than T0(A). The universal exclusion therefore forces every
eligible positive shift to have more than eta N/8 such pairs.

Summing over eligible t that also belong to A is justified by the
exact ordered identity

    sum_(t in A) #{x in A:x+t in A}=T0(A).

It includes equal inputs correctly and yields the claimed bound
8T0(A)/(eta N). No prescribed member of F is needed. If no eligible
positive shift exists, the certificate is immediate; otherwise its
existence supplies every size condition used in the proof.

## 6. Linear logarithmic lcm cost

For each prime, its exponent in lcm(1,...,m) can increase by at
most one on passing from m to 2m. An increase corresponds to a
prime power p^j in (m,2m]. In Legendre's valuation of binom(2m,m),
the summand for this p^j equals one, and every other summand is
nonnegative. Hence the quotient Lambda(2m)/Lambda(m), a squarefree
product of the underlying primes whose exponents increase, divides
binom(2m,m). The proof does not claim that each new prime power
itself divides that binomial coefficient.

The binomial bound gives logarithmic increment at most 2m log2.
Summing on dyadic m gives log Lambda(2^k)<2^(k+1)log2. With
H<=2^k<2H, this yields log Lambda(H)<4H log2. The case H=1 is
immediate. Thus log Q_eta=O(eta^-1) follows elementarily, without
the prime number theorem. All other displayed logarithmic terms are
O(log(1/eta)) with fixed absolute constants, so the combined cost
is indeed O(eta^-1).

## 7. Scope of this review

Every dependency and step is now checked at its every-N, ordered-count,
exact-divisibility scope. No
numerical computation or new external result was required. The frozen
composition was left unchanged. Its transfer to a bound for f(n)
still requires the separate weight and container composition, and it
does not address a matching lower bound.
