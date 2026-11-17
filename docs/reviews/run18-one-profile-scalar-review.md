# Independent review of one-profile scalar flattening

Run `2026-11-17T12-05-38-564Z-905bb2c7`; 17 November 2026.
Reviewer: root, independently of the author.

Reviewed [proof](../../proof/lemmas/nearly-constant-slice-densities.md), SHA256
`161316482de44d6d301c37ed0477e5c3fab7626c3405af73ea9d2b6a4119d93c`.
Verdict: **PASS at the stated finite indicator-profile scope**.

Exact shift independence gives section densities at most one half.
Thus every positive three-section surplus is in `(0,1/2]`, the
range of the reviewed finite singleton input. If it is at least
eta, the returned subgroup has integer index at most `2/eta`,
which divides the prescribed lcm. Lagrange's theorem then puts v
in that subgroup, contradicting its avoiding v. This establishes
the pointwise quadratic positive-surplus bound without selecting a
favorable time pair or assuming a lower section density.

The balanced measure is a probability measure; its three marginals
sum to three. Hence its mean surplus is exactly `3d-1`, and its
mean normalized count is at most `3I`. The nonnegative mean
permits the factor-two absolute-residual bound. Applying the
reviewed4500 scalar coercivity gives precisely
`9000 sqrt(eta^2+12288I)`. The mean-surplus conclusion and the
looser million constant also check.

The a.e. section hypotheses transfer to almost every time triple
by absolute continuity of the three marginals. Repeated variables,
general finite abelian groups, and the vacuous v=0 case are handled
correctly. No centered mass identity, overlap anchor, spatial
model, or original integer count transfer is assumed.

No proof corrections or numerical computations were needed.
