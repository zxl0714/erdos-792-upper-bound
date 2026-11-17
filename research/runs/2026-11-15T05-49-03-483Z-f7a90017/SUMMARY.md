# Run checkpoint — unresolved

The constant-factor order requested in PROBLEM.md remains unresolved. No
complete candidate exists; phase stays RESEARCH and the Goal is not complete.

Findings and saved evidence:

- [Lower-bound audit](../../../docs/literature/lower-bound-audit.md): current Bedert v1 gives
  an absolute `c log log n` lower excess. The 2026 Bloom–Green inverse result
  does not itself determine the sum-free excess. Its proof extends to bounded
  positive weights, repairing the symmetrized-input issue and giving a large
  high-energy subset of an arbitrary signed A. This is local structure only.
- [Upper-bound derivation](../../ARCHIVE_INDEX.md#record-068): audited EGM v3's
  July 2026 correction (independent of the main theorem); unpacked Eberhard's
  finitary proof with explicit Gowers parameters. Obtained the weak partial
  upper excess `O(n log(log* n)/log* n)`.
  [Independent tower review](../../ARCHIVE_INDEX.md#record-070) checks compression
  and all-n inversion, conditional on the upstream source reconstruction.
- [Zero/interpolation proof](../../ARCHIVE_INDEX.md#record-152): exactly
  `f(n)=h(n-1)` for the nonzero extremal function h, which is subadditive;
  literal f is not subadditive. Positive witnesses imply all-n upper bounds.
- [Finite trials](../../ARCHIVE_INDEX.md#record-153),
  [results](../../ARCHIVE_INDEX.md#record-154): maximum sum-free sizes are
  2/4 and 14/27 for F2/F3. F4 at threshold 129/256 is UNKNOWN: Jacobian's
  fixed work allowance exhausted, then a tested Boolean/PB formulation timed
  out at 20 seconds. No computation remains running.

Remaining gap: the upper and lower errors are enormously separated. Local
energy structure does not control cross-Schur triples or Bedert's projected
Fourier error. None of these partial results meets the acceptance criterion.

Next concrete step: check whether Eberhard Lemma 5.2 can use varying errors
and periods. The tentative recurrence is
`d_(j+1) <= (2/3)d_j + (2/3)epsilon_j`; geometrically tapering epsilon_j
might reduce the accumulated tower height from O(K log K) to O(K), hence
improve the weak upper error to O(n/log* n). This proposal is UNPROVED: verify
changing Q_j, N_j and finite support bounds before claiming it. The secondary
route is substituting the repaired weighted inverse result into Bedert
Propositions 7.3/7.9 to locate the precise remaining error term.

Pending checks/cleanup: the weighted extension was checked against the source
proof but has no separate independent review. The tower review checks its
stated upstream assumptions, not a fresh proof of Gowers/Eberhard. Source
snapshots and manifests are saved; direct Erdős-page retrieval was HTTP 403.
A failed final bulk patch made no changes; handoff files are refreshed below.
No verification or conclusion report was created for this unresolved run.
