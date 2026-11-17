# Independent review of raw-model integer unfolding

Run `2026-11-17T12-05-38-564Z-905bb2c7`; 17 November 2026.
Reviewer: `run17_long_gap`. Scoped RESEARCH review.

**Verdict: PASS.** Reviewed the frozen
[unfolding lemma](../../proof/lemmas/integer-rotation-model.md), SHA256

    43a25a7a2a4440af5f88ed81ad730975aeb767cd91083ddeb9c0cdb610e0a1fd.

The common offset, finite-cell error, strict slope bound and rational
frequency consequences all hold under the displayed hypotheses. The
proof needs no correction. It is a conditional model interface, not
an origin theorem or a density contradiction.

## 1. Full-cell identity and normalization

I checked the sampler against the definitions in the
[raw-sampler interface](../../proof/lemmas/sampling-an-integer-set-modulo-q.md) and the
[centered sampler](../../proof/lemmas/sampling-the-shifted-sets.md), including the
retained condition d_r(s)>=t. The floor expression is independent of
the chosen integer representative of r.

For 1<=n<=N-q, r=n mod q and s=n/N+tau with
t/N<=tau<q/N, the sampler is exactly n. Its deficit is N tau,
so the mask is one. These times lie in (0,1); the last right endpoint
can equal 1 only at the excluded tau=q/N. At the retained left endpoint
the equality d=t is allowed. For fixed r the cells for successive
integers of that residue are disjoint, apart from irrelevant endpoints.

The model phase is exactly

    k*r/q-lambda*(n/N+tau)
       =(k/q-lambda/N)*n-lambda*tau mod1.

Thus restricting the nonnegative full error to the selected cells gives
the displayed integral inequality with factor 1/q, and changing from
s to tau contributes no Jacobian. The shared offset interval has
length (q-t)/N. Averaging therefore gives one common tau with error
at most epsilon*q/(q-t) after normalization by N. This is a single
offset for all integers, not an offset chosen separately by residue.
The open interval is nonempty because t/q<=1/10; an admissible offset
can be selected away from its endpoint null set. There are exactly q
uncontrolled integers in [N-q+1,N], giving the additional q/N term.

## 2. Rapid slope contradiction

On every full retained cell the real phase travels a distance
L=|lambda|(q-t)/N. The integral of a one-periodic indicator of mean
beta over any interval of length L differs from beta*L by at most one:
the full unit pieces contribute their exact means and the remaining
piece has length less than one. This holds for either sign of lambda.

Consequently, if L>=4, both possible constant indicator values on the
cell have mean error at least

    min(1/3-1/L,2/3-1/L)>=1/12.

There are N-q full cells, each with spatial weight 1/q and time width
(q-t)/N. Their total lower error is exactly

    (1-q/N)(1-t/q)/12 >= (9/10)^2/12
                              =27/400>1/20.

This contradicts the stated epsilon bound and yields the strict
inequality L<4. The argument correctly uses retained width q-t and
does not mistakenly charge the deleted boundary strip.

The real identity omega*t-k*t/q=-lambda*t/N then gives circular
displacement less than 4t/(q-t). The reverse triangle inequality on
the circle proves the claimed strict separation from zero when the
additional character separation is assumed. Solving
4x/(1-x)<=c/2 gives exactly x<=c/(8+c). Thus that sufficient condition
does imply the displayed strict bound 1/3+c/2. No positivity is inferred
from t/q<=1/10 alone.

## 3. Divisible shifts and rational frequencies

For d|Q|t, a*t/d is an integer for every integer a. Therefore

    ||omega*t||_T=||t*(omega-a/d)||_T
                       <=t*|omega-a/d|.

This verifies the rational exclusion for every numerator and every
divisor d of Q, with no reduction or coprimality assumption needed.
For Q=lcm(1,...,H0), each 1<=h<=H0 divides t. Taking d=h and
minimizing over a yields

    ||h*omega||_T=h*inf_a|omega-a/h|
                        >=h*||omega*t||_T/t.

The inequalities may be vacuous when that last circular distance is
zero; the proof says so. Changing the integer representative k by
a multiple of q changes omega by an integer and preserves all set
and modular conclusions, as well as the rational inequalities with
their universal numerator quantifier.

## 4. Scope

The lemma assumes the raw-model approximation; it does not obtain it
from arbitrary shift-independent sets. Neither shift independence nor
t|q is used in the cell proof, and Q|t is used only in the stated
rational consequence. No equidistribution, limiting step, selected
integer membership, or exact middle-third containment is implied.
The affine offset is permitted, and the error remains the stated fixed
model error plus the finite endpoint loss. These distinctions agree
with the existing single-character obstruction cited by the proof.

The review used exact floor identities, one-period integration and
the displayed arithmetic. No numerical computation or new external
result was needed, and the frozen proof was left unchanged.
