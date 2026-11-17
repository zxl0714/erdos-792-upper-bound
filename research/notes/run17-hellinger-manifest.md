# Square-root empirical return: reviewed upper refinement

Run `2026-11-17T04-08-08-259Z-ba89c4b5`. Scoped RESEARCH result; no complete candidate for the original matching-order question.

For every sufficiently large n there is an n-element positive integer set in[n²] with

    alpha(A_n) <= n/3 + C n/sqrt(log n).

- [Complete upper proof](../ARCHIVE_INDEX.md#record-082), [independent full review](../ARCHIVE_INDEX.md#record-083): PASS, including origin exclusion, exact parameter recurrences, every cardinality, and ambient interval.
- [Square-root empirical return](../ARCHIVE_INDEX.md#record-084), [independent component review](../ARCHIVE_INDEX.md#record-085): PASS. With k samples and sparse prescribed candidate shifts, the proof gives T_q<=2T_0+32N²/k and return cost exp(O(k)). It handles nonzero original count and both shift signs.
- [Raw sampler](../../proof/lemmas/sampling-an-integer-set-modulo-q.md), [review](../../docs/reviews/run17-cs-raw-interface-review.md): unchanged reviewed input. Its count is at most(T_0+T_q)/N² and it preserves the prescribed shift by deleting boundary residues.
- [Singleton theorem](../ARCHIVE_INDEX.md#record-086), [full review](../ARCHIVE_INDEX.md#record-087), [rounding review](../ARCHIVE_INDEX.md#record-088): unchanged quadratic threshold.
- [Discrete weights](../ARCHIVE_INDEX.md#record-089), [review](../ARCHIVE_INDEX.md#record-090), [container rounding](../../proof/lemmas/rounding-weighted-sets.md), [review](../../docs/reviews/run17-container-rounding-review.md): unchanged all-N and polynomial-cost interfaces.
- [Preceding convolution-L2 bundle](../ARCHIVE_INDEX.md#record-091): retained weaker rate n/(log n)^(1/4), and source context.

The key estimate integrates the squared difference of empirical square roots. Bernoulli variance divided by its mean gives expected error <=|F+F|/k. Translation fibers then give the relative correlation estimate without an exceptional-set loss. The robust origin cost becomes log kappa_eta^-1=O(eta^-2). No publication-priority claim is made. The known lower excess Omega(loglogn) remains far from this upper bound.

[Focused relative-sampling source audit](../ARCHIVE_INDEX.md#record-002) and [source manifest](../ARCHIVE_INDEX.md#record-092) compare the direct proof with current predecessors and record its precise scope.

The [square-root logarithmic upper bound](../../proof/lemmas/square-root-logarithmic-upper-bound.md) gives the earlier argument and links to the sampling and rounding lemmas. The [independent audit](../../docs/reviews/run17-standalone-upper-review.md) records the hash of the archived proof.
