# Run summary

Run: 2026-11-15T05-59-51-817Z-3b4198da, continue mode.
Final checkpoint: PLAN. The original constant-factor asymptotic is
unresolved; no complete candidate, VERIFY, DONE, or Goal-completion claim.

## Main findings

- Extracted the universal upper excess **O(n/log* n)** from Eberhard's
  finitary proof using varying errors and periods. This remains far above
  the known **Omega(log log n)** lower excess.
  [Proof](../../notes/varying-error-upper.md),
  [review](../../notes/varying-error-review.md),
  [original-convention reduction](../../ARCHIVE_INDEX.md#record-152).
- Proved a simpler **single-scale contraction** from current EGM Theorem6.1:
  high density excludes small multiples of a fixed Q, giving support
  growth M -> cQM and excess e -> 2e/3+eta/3. This is a scoped formulation
  of the existing avoid-the-origin mechanism, not a novelty claim.
  [Lemma](../../ARCHIVE_INDEX.md#record-155),
  [parent and independent review](../../ARCHIVE_INDEX.md#record-156).
- Derived an explicit threshold in terms of the unknown progression-length
  constant rho. Polynomial or fixed-height reciprocal-rho estimates would
  improve the upper rate, but no such estimate was established.
  [Rate table](../../ARCHIVE_INDEX.md#record-157),
  [source parameter map](../../ARCHIVE_INDEX.md#record-158).
- The bounded regularity audit gives weak energy increment of order
  theta^4 and strong stopping count at most 4/sigma^2+1. EGM's displayed
  tolerance supplies only O(eta^-20) initial stage control, with further
  costs unevaluated. A local small-error exponent mismatch needs consistent
  bookkeeping before any full extraction. The qualitative theorem remains
  the cited input. [Audit and source manifest](../../ARCHIVE_INDEX.md#record-045).
- Actual sum-free examples delay the local witness walk linearly but lose
  later density. A complementary dense extension keeps initial forbidden
  differences but is not sum-free. Neither makes the exceptional-scale
  theorem sharp. [Witness controls](../../ARCHIVE_INDEX.md#record-159),
  [finite manifest](../../ARCHIVE_INDEX.md#record-160),
  [frozen-distance example](../../ARCHIVE_INDEX.md#record-161).
  [The endpoint audit](../../ARCHIVE_INDEX.md#record-071) preserves
  the k=2 source constants. [Conditional scale rates](../../ARCHIVE_INDEX.md#record-162)
  distinguish fixed-power and polylogarithmic hypothetical improvements.
- Cyclic controls show rho(1/(6p)) <= 1/p and force certain prime divisors
  of every exclusion period. Those primes alone do not suffice: Q=20
  fails at eta=1/30 via a modulo-8 sum-free pullback.
  [Proof](../../ARCHIVE_INDEX.md#record-163),
  [manifest](../../ARCHIVE_INDEX.md#record-164).

## Lower-route work retained

- Weighted additive capacity applies to the actual perturbed Fourier
  input. Annular and valuation decoupling has optimal squared moment
  order Theta(q), giving exponential occupancy tails and retention in
  O(M^2 log(e/epsilon)) pieces.
  [Capacity input](../../ARCHIVE_INDEX.md#record-165),
  [decoupling proof](../../ARCHIVE_INDEX.md#record-166),
  [independent review](../../ARCHIVE_INDEX.md#record-167).
- These concentration bounds do not yet give the required ambient collar.
  All-moment inverse controls, dense progression-union collars, and dyadic
  selectors were checked; their direct combination does not certify a
  growing universal excess.
  [Inverse scope](../../ARCHIVE_INDEX.md#record-168),
  [collar theorem](../../ARCHIVE_INDEX.md#record-169),
  [selector proof and batch](../../ARCHIVE_INDEX.md#record-170).
  The [local-collar existence target](../../ARCHIVE_INDEX.md#record-171)
  remains conditional. Earlier finite certificates and other obstructions
  remain available through [INDEX.md](../../ARCHIVE_INDEX.md#record-172).

## Handoff

The last RESEARCH -> PLAN transition follows the completed parameter
check: a full expansion of generic regularity constants has no demonstrated
value for improving the existing rate. The next action is a focused
literature/formulation check on dense finite sum-free sets with a prescribed
member and effective periodicity near one third, aiming at direct
small-multiple exclusion. Save a concrete check and enter RESEARCH before
executing it. [PLAN.md](../../ARCHIVE_INDEX.md#record-173) records the target and cyclic cautions.

No new explicit rho, matching asymptotics, or full corrected regularity
parameter ledger was obtained. No long computation or agent remains
running; historical timeouts stay UNKNOWN. All new scoped claims were
reviewed at their stated scope, and the handoff links were checked.
[State](../../ARCHIVE_INDEX.md#record-174) preserves runId and problemSha256.
No further research is planned in this run.

Final planning addendum: a short lookup before wrap-up located BCC12.10
and saved its primary problem-list PDF, extraction, and queries in the
[planning search record](../../ARCHIVE_INDEX.md#record-175).
Its historical two-fifths result does not bridge the near-one-third gap.
The next search is refined to that reference and successors below two
fifths; no new theorem or numerical search was started. The download
completed, and no process remains live.

Operational handoff: the wrap-up cutoff has been reached. All three
research agents were confirmed completed at 08:50 UTC. The mathematical
goal remains unresolved; further research requires a new
launch window under the run instructions.

Goal status was set to blocked at 08:52 UTC after the unchanged closed
research window stopped three consecutive continuations. This is an
operational deadline constraint, not a mathematical impossibility claim.
The checkpoint remains PLAN; resume with a new launch window.
