# Run summary

Run `2026-11-15T11-03-40-924Z-43eaf45a`; checkpoint phase PLAN.
The original asymptotic-order problem remains unresolved; Goal is unresolved.

The retained [research upper bound](../../notes/quantitative-upper-bound-proof.md)
is
\[
f(n)-n/3=O\!\left(n/(\log\log n)^{1/20}\right)
\]
for every sufficiently large n. The
[consolidated review](../../notes/quantitative-upper-bound-proof-review.md)
and component reviews pass at their stated scopes. The
[source audit](../../../docs/literature/quantitative-finite-exclusion-literature.md)
checks that the published 2010 popular-sums theorem suffices. No novelty
claim is made. The known [lower excess](../../../docs/literature/lower-bound-audit.md)
is \(\Omega(\log\log n)\), leaving a large gap.

An alternative [compact-origin theorem](../../ARCHIVE_INDEX.md#record-176)
leads to a [compatible weight](../../ARCHIVE_INDEX.md#record-177)
and [positive-majorant transfer](../../ARCHIVE_INDEX.md#record-059).
Their reviewed [all-n consequence](../../ARCHIVE_INDEX.md#record-178)
gives witnesses inside \([1,n(\log n)^D]\), with the weaker excess rate
\(O(n/(\log\log n)^{1/40})\). This adds an ambient-size bound without
improving the main excess rate.

The final route audits establish three useful limitations and distinctions:

- [Necessary period size](../../ARCHIVE_INDEX.md#record-146), with its
  [review](../../ARCHIVE_INDEX.md#record-147), forces
  log P and log Q of order at least 1/eta. With the
  [actual-measure Følner obstruction](../../ARCHIVE_INDEX.md#record-179),
  this forces double exponential size for that specific conversion.
- [Separated transference parameters](../../ARCHIVE_INDEX.md#record-060)
  show that P and L have only logarithmic cost. Polynomial W and delta^-1,
  with polynomial log P and log(2+L), would suffice for a single-exponential
  threshold. This is an unproved certificate target, not a new bound.
- [The exponential-time product fails](../../ARCHIVE_INDEX.md#record-180):
  a C4 weight with cyclic optimum 1/3 has a product sum-free set of mass
  17/48. Truncation and continuous test functions preserve the obstruction.
  The [exact Jacobian trial](../../ARCHIVE_INDEX.md#record-181)
  and direct proof are saved. The [closing review](../../ARCHIVE_INDEX.md#record-182)
  independently checks the parameter audit and separately rechecks the
  counterexample as its author; the parent also checked the counterexample.

A final bounded continuation tested a correlated exponential repair.
The [five-cell trial](../../ARCHIVE_INDEX.md#record-183), with its
[complete exact artifact](../../ARCHIVE_INDEX.md#record-184), found
mass 3/8 using odd fibers (0,log 4) and even fibers (2 log 4,4 log 4).
A direct proof checks all pairs, including repetitions. The finite model
has 20 vertices and 273 edges; Jacobian returned EXACT in 897 nodes and
11ms. No larger trial was run, and global measurable optimality is not
asserted.

The [two-rate obstruction](../../ARCHIVE_INDEX.md#record-185)
then proved a uniform excess at least 1/768 for every pair of positive
exponential rates with the same parity residue masses. Its
[independent review](../../ARCHIVE_INDEX.md#record-186)
passes at the untruncated-time scope. Thus tuning those rates cannot give
a vanishing-error certificate. The saved
[tail constraints](../../ARCHIVE_INDEX.md#record-187)
suggest reciprocal tails as an untested alternative.

RESEARCH returned to PLAN because both the independent product and the
correlated two-rate family failed. Next: check known results and the
formulation for reciprocal time tails before selecting a bounded test.
No certificate for that family is assumed. See [PLAN](../../ARCHIVE_INDEX.md#record-173) and
[INDEX](../../ARCHIVE_INDEX.md#record-172) for continuation.

No computation or review is pending. The previous q49 trial remains UNKNOWN
at its recorded limit in the [batch manifest](../../ARCHIVE_INDEX.md#record-188).
All selected checks finished before wrap-up. No VERIFY/DONE transition or
conclusion report is appropriate. The checkpoint preserves the launch
problem hash and run ID; Goal remains unresolved.

Wrap-up checkpoint refreshed at 2026-11-15T13:58:24.919471+00:00. The scheduled wrap-up has begun; no new investigation, computation, or review was started. The next research action is deferred to the next run.

Automatic continuation is blocked pending a new run window or an explicit override of the wrap-up restriction. This scheduling condition was revalidated on three consecutive goal turns (13:58:12, 13:58:52, and 13:59:22 UTC). It is not a claim that the mathematical problem is solved or that no further route exists.
