# Run summary — unresolved research handoff

Wrap-up checkpoint saved 2026-11-15T22:33:36.364582+00:00.

Run `2026-11-15T14-43-05-516Z-de28bcb2`; phase **RESEARCH**. The requested constant-factor asymptotic is not determined, and no complete candidate exists. The retained excess bounds are Omega(log log n) and O(n/(log log n)^(1/20)); see the [lower audit](../../../docs/literature/lower-bound-audit.md), [upper proof](../../notes/quantitative-upper-bound-proof.md), and [review](../../notes/quantitative-upper-bound-proof-review.md). These bounds did not become matching in this run. The Goal is not marked complete.

## Main continuous progress

The [convex-profile manifest](../../ARCHIVE_INDEX.md#record-189) collects the proofs, scoped reviews, counterexamples, and computation manifests. For compatible positive-time fibers Z,N, the current target is omega(Z)+omega(N)+omega(Z/2)<=1. The reviewed scalar FGY corollary and classical triangular mixture reduce the whole convex decreasing family to one unit-triangular inequality. This is a sufficient intermediate gate for the exponential case, not the original integer conclusion.

Both one-interval cases are proved with the other fiber arbitrary measurable: [positive interval](../../ARCHIVE_INDEX.md#record-190), [review](../../ARCHIVE_INDEX.md#record-191), [negative interval](../../ARCHIVE_INDEX.md#record-192), and [review](../../ARCHIVE_INDEX.md#record-193). The full-first-positive-band theorem and the zero-accumulation overlap exclusion also pass review.

The strongest two-component result covers every negative fiber consisting of two intervals whose gap is no longer than the larger component, for arbitrary measurable Z and every convex decreasing density. The [first-component theorem](../../ARCHIVE_INDEX.md#record-194) and [review](../../ARCHIVE_INDEX.md#record-195) handle one orientation. The [second-component theorem](../../ARCHIVE_INDEX.md#record-196), [full review](../../ARCHIVE_INDEX.md#record-197), and [independent tail/algebra review](../../ARCHIVE_INDEX.md#record-198) close the other by combining actual-anchor tail loss with the slack in the interval estimate. The equality-split perturbation is also settled exactly by hull completion.

For the remaining longer-gap class, [triangular mass packing](../../ARCHIVE_INDEX.md#record-199) and [review](../../ARCHIVE_INDEX.md#record-200) give omega_T(N)<=(3/4)(1-a/T)^2 when both components meet the support. Thus a>=T/3 is scalar-pruned; a component beyond the support reduces to the settled single interval.

Balanced local completion, quantitative interval repair, and weighted grid approximation are reviewed reusable tools. The saved obstructions reject arbitrary hull filling, unequal-discrepancy block completion, pointwise coupled prefixes, mass/overlap-only gap charging, and fixed-anchor transports. Folded collision orbits escape almost everywhere, but their first-exit map can overload its destination by exactly4/3; this is not a target counterexample.

## Finite and arithmetic evidence retained

- The triangular M12 whole-cell maximum is exactly1 by the [separate decomposition](../../ARCHIVE_INDEX.md#record-201), [review](../../ARCHIVE_INDEX.md#record-202), and [manifest](../../ARCHIVE_INDEX.md#record-203). All4096 negative masks are covered, with352256 positive-subset checks in four residual cases. The earlier optimizer remains UNKNOWN; it was not retried. Finite grids do not prove the measurable assertion.
- The [C7² endpoint manifest](../../ARCHIVE_INDEX.md#record-204) contains the uniform hereditary lift proof and exact small extraction controls. The nonuniform endpoint remains open for aperiodic differences with overlaps r0=6..9 or r1=8..9. Its work-exhaustion UNKNOWN is preserved.
- The reviewed [all17power theorem](../../ARCHIVE_INDEX.md#record-205) and [sole-bad-prime5/11 extension](../../ARCHIVE_INDEX.md#record-206) are retained. All-cyclic hereditary extraction and fractional-divisor duality are proved reformulations; multiple bad primes remain open.
- The matched-profile obstruction and sharp height tradeoff, mixed-prime capacity obstruction, primitive-pair representation, and subgroup-Haar lift counterexample are linked with their reviews in [INDEX](../../ARCHIVE_INDEX.md#record-172). None resolves the full divisor/profile gate.

## Remaining gap and next action

For two negative intervals, the unresolved normalized triangular range has gap longer than both components, 0<a<1/3, c<d<=1, max(component lengths)<2a, negative mass>1/3, and positive overlap. The [exceptional-union reduction](../../ARCHIVE_INDEX.md#record-207) and [review](../../ARCHIVE_INDEX.md#record-208) now give four disjoint capacity intervals and the exact repair inequality. The next check in [PLAN](../../ARCHIVE_INDEX.md#record-173) is to bound their actual positive occupancy using scalar relations and an anchor-induced tail charge. The set-union step is complete. No numerical query or larger grid is selected.

More than two negative components, arbitrary C2/C4 profiles, all-modulus divisor weights, compatible extensions and polynomial supersaturation remain unproved. Even those would not alone match the original asymptotic orders. All selected checks are saved; no review, cleanup, or long computation remains running. Current handoff links were checked; historical UNKNOWN outcomes and the unresolved phase are preserved. Detailed history is in [STATUS](../../ARCHIVE_INDEX.md#record-209).

Continuation status: the saved handoff is complete. The wrap-up restriction was revalidated on three consecutive Goal turns, with no mathematical progress or active checks. The Goal is being marked blocked pending a new run window. This is an operational timing restriction; the mathematical objective remains unresolved and state.json remains RESEARCH.
