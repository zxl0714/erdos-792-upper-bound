# Independent review of the prefix-integral density inequality

Run `2026-11-17T12-05-38-564Z-905bb2c7`; 17 November 2026.
Reviewer: `run17_long_gap`. Scoped RESEARCH review.

**Verdict: PASS.** Reviewed the final
[analytic note](../../proof/lemmas/density-from-prefix-counts.md), SHA256

    cd93a0a53decb5037cc21d1887c527f4448af4bcba739cd7f976bc819d7c2a99.

The constant-one density estimate, its error budget, and the conditional
output-hinge implication are valid. During review I requested that
Section 3 explicitly state that both transition profiles take values
in [0,1], as required by the cited rearrangement lemma. The author
added that clarification; it is included in this final reviewed hash.
The indicator strip-set application already has this property.

## 1. Integration identity and the sharp constant

For the two real expressions a,b inside the positive parts, one has

    s^2(a+b)=s^2 U'(s)+2sU(s)-s(e_L+e_R).

The prefix U is absolutely continuous and U(s)=O(s), since l,r
are bounded. Therefore s^2 U(s) has zero boundary value at zero,
and integration gives exactly m-B. The error terms are integrable
in this identity because the stated hypothesis is integral s(e_L+e_R)
finite. Pointwise division by s is only used for s>0 and is harmless.

Replacing a,b by their positive parts increases the weighted sum.
Cauchy--Schwarz on the disjoint union of two time intervals uses
the factor sqrt(2 integral_0^1 s^3 ds)=sqrt(1/2). The energy
hypothesis contributes sqrt(2E), leaving exactly sqrt(E). Thus

    m-B<=sqrt(E).

There is no hidden factor two or lower cutoff in time. The constant
one is in fact sharp for this analytic statement: with zero errors
and l(s)=r(s)=c*s for c>=0, one has m=c, both residuals equal
2c*s, and the energy in (1) equals c^2.

If each error is bounded by C(Ds+h), its weighted sum integrates to
2C(D/3+h/2). This is precisely the displayed allowance
(2C/3)D+C*h. No sign or positive-part assumption on m is required.

## 2. Output halfline implication

For each fixed time, the right transition has the same signed mass
as 1_(x<r(s)). The increasing weight
[s*x+2L(s)-e_R(s)]_+ and the bounds 0<=P_R<=1 allow the
reviewed halfline mass rearrangement. Its monotone value is exactly

    integral_(-infinity)^r [s*x+2L-e_R]_+ dx
      =(s/2)[r+2L/s-e_R/s]_+^2.

The reflected left transition P_L(s,-x) is a right transition with
signed mass l(s); reflection does not introduce a sign change in that
mass. It gives exactly the second term. Fixed compact transition
regions and nonnegative integrands justify the displayed integrals
and Tonelli exchanges. Thus any independently established upper bound
E>=E_R+E_L gives the stated analytic conclusion.

For the scalar continuous positive-time strip-set application,
inclusion-exclusion first yields the pointwise input convolution hinge
with the signed masses at u and s-u. Jensen over 0<u<s gives

    integral_0^s [x+l(u)+l(s-u)]_+ du
          >=[s*x+2L(s)]_+,

and the corresponding reflected inequality uses R. This is a direct
integration over the actual input times; it assumes no independence
between phase and time and no mixing of different output fibers.
Combined with the exact endpoint decomposition for such a strip set,
its ordinary continuous positive-time count is at least m_+^2.

## 3. Scope

The statement is an analytic energy-to-total-mass estimate. It does
not construct endpoint profiles from selected integer orbit points,
justify output phase averaging, or transfer a full triple count from
an equidistributed orbit. The note explicitly leaves that arithmetic
step separate. No kernel-fiber generalization beyond the supplied
scalar hinge profiles is inferred here. There is also no endpoint
stability or original-problem conclusion.

No numerical computation or new external result was used. The only
review change was the explicit [0,1] profile-range clarification
recorded above.
