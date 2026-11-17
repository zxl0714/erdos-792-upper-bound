# Independent review of the upper-anchor extension

Run `2026-11-17T12-05-38-564Z-905bb2c7`; 17 November 2026.
Reviewer: root, independently of the author.

Reviewed [proof](../../proof/lemmas/interval-structure-with-positive-overlap.md), SHA256
`46fa72ee53093c35aa6ff8c52ac9fe33443e766ea70c21da5c93e734072ab7d6`.
Verdict: **PASS at its fixed-precision structural scope**.

I checked the extension against the actual statements and proofs of
the single-pair cyclic theorem, two-anchor propagation, finite-circle
centered transfer, and circle phase-defect theorem. The only remaining
anchor restriction is the positive lower bound. No uniformity as that
bound tends to zero is inferred.

The scalar estimate and `x<=f+rho` give
`alpha<=1/3+300001B_XF<3/8`. With the good-section errors at most
`lambda0<=1/100`, the input sum is below `3/4`.
The single-pair input precision satisfies `e_pair<=c/400<c/200`,
as required at lower mass `c/2`. Total-mass error is at most
`rho+3lambda0<=nu0`. The two terms in the bad-pair budget are
each at most `delta_star/2` by the displayed wrapper. All input
shift and bounded-index hypotheses are retained.

Good progression densities lie in `[c/2,1-c/2]`, and their orders
exceed the uniqueness threshold. Thus the saved propagation lemma
applies with exactly its `2e_pair` uniqueness allowance, leaving
total common X/F model error at most `e_common`. No all-three
completion is required for the subsequent phase calculation.

The actual large-order argument is valid using the integrated X
mass alone: an invariant interval lift cannot approximate a
v-independent section with error below that section's mass. The
surviving quotient order therefore exceeds `8/eta`.

In the finite-circle proof, the upper anchor cutoff appears only
in turning `|alpha-L|<=b_error` into an upper bound strictly below
one third. The remaining construction and count coupling have no
such requirement. Here `L<=1/3` follows from `theta<=1/2`, and
the lower anchor still gives `L>=3c/4`. At `theta=1/2` the two
translated arcs coincide; their endpoint-count allowances do not
increase. The integrated count allowance remains `35tau`.

The phase-count formula continues to be valid at `L=1/3`.
For `d<=L`, the needed no-wrap bound is weak `d+L+1/3<=1`;
equality subtracts `H(0)=0`. The all-distance monotonicity argument
uses no gap from one third. Therefore the same quadratic lower bound
and phase-residual estimate apply. The final phase, grid, product
and maximum replacement costs yield the stated `46tau+epsilon/4`.

The exact sum-free and shift-independent claims for the final model
use the homogeneous space-time character and the half-open critical
arc. The centered-role crosscount maps still work at the half-turn.
No original-count or origin-rate claim is included in this review.
No proof corrections or numerical computations were needed.
