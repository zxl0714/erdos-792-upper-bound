# Run summary: improved upper bound, original order unresolved

Run `2026-11-17T12-05-38-564Z-905bb2c7`; continuation checkpoint in RESEARCH.

The main result is an independently reviewed proof of

    f(n)-n/3 = O(n/log n)

for every sufficiently large n, with positive n-element witnesses inside [n²]. The [proof](../../../proof/main.md), [end-to-end review](../../../docs/reviews/run18-logarithmic-upper-review.md), and [evidence bundle](../../notes/run18-logarithmic-upper-manifest.md) are saved. The known lower excess remains Omega(log log n), so the requested constant-factor order is unresolved. No complete candidate, VERIFY/DONE transition, or publication-priority claim is made.

The new proof uses a fixed-precision one-profile character/time-phase model, raw integer unfolding, and a direct original-count prefix estimate. The [original-count bundle](../../notes/run18-original-count-manifest.md) records the component reviews. The universal origin radius and count threshold are constant multiples of eta², while log Q=O(1/eta). The existing every-N weights and polynomial container rounding preserve that cost. All essential components and the final composition passed independent reviews. The earlier [local stability bundle](../../notes/run18-local-stability-manifest.md) is retained; secondary anchor variants are unused at their stated review status.

The [current lower audit](../../../docs/literature/run18-lower-status-audit.md) and [upper comparison](../../../docs/literature/run18-logarithmic-upper-literature-audit.md) check primary versions and corrections. The EGM v3 correction concerns Lemma 6.3, not a dependency of the new proof. The live Erdős discussion could not be fully retrieved; absence of a later result or novelty is not claimed.

Two reviewed limitations now close refinements of the same interfaces. The [universal-period cost](../../notes/run18-universal-origin-cost-ceiling-review.md) is already Omega(1/eta). The [mixed sparse-rounding theorem](../../notes/run18-sparse-mixed-rounding-review.md) and [cost corollary](../../notes/run18-bounded-success-rounding-cost-review.md) retain exponential expected-cardinality cost when independent sampling succeeds with probability bounded below, including vanishing relative deletion. Rare successful samples and other sampling laws remain possible; neither limitation is a lower bound for f(n). The [random-set source audit](../../ARCHIVE_INDEX.md#record-150) distinguishes uniform-group density and exact-containment thresholds.

A final [truncated divisor-mixture test](../../notes/run18-truncated-dilation-prime-tests.md), [review](../../notes/run18-truncated-dilation-prime-tests-review.md), passes: dilation support exp(5(log Y)^2) suffices for limiting prime-periodic test excess O(1/Y). Its finite error p/M is not uniform over unbounded primes, and it does not control arbitrary sum-free sets. The next concrete step is to combine this truncation with the saved divisor-time-selector identity and triangular base time, calculate support/height/error, and identify the missing general-set and finite supersaturation interfaces before further work.

No selected review or computation remains pending. No new research should start during this run's wrap-up. The [artifact audit](../../ARCHIVE_INDEX.md#record-213), reproduced by [this script](../../ARCHIVE_INDEX.md#record-214), checks retained hashes and local targets only; it does not replace mathematical verification.

Final artifact check at 13:54:40 UTC passed: ten retained hashes, 1,358 local Markdown targets, and every checkpoint evidence path. PROBLEM.md matches the launch hash. The first check encountered its own not-yet-created report link; after saving the report, the rerun passed. No mathematical proof changed during this check.

## Automatic continuation during wrap-up

Three consecutive automatic continuations have revalidated the same launch wrap-up restriction, with the latest clock reading 13:57:12 UTC. The two preceding administrative continuations made no research progress. No new research window has been supplied, and no proof, computation or review was started during wrap-up. The three-turn blocked audit is satisfied: further research requires a new launch window or an explicit change to that restriction. The original objective is unresolved, state remains RESEARCH, and the Goal is blocked, as confirmed by the Goal tool, rather than complete. All findings, evidence and the next concrete step were saved before requesting the Goal status change.
