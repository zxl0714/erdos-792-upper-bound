# Independent review of the consolidated upper-bound proof

Run: `2026-11-15T11-03-40-924Z-43eaf45a`, 2026-11-15.
Reviewer: `cyclic_literature`.
Status: **PASS for the scoped upper-bound theorem.**
Reviewed: [quantitative-upper-bound-proof.md](quantitative-upper-bound-proof.md).
This is exposition validation in RESEARCH, not verification of a candidate
solving PROBLEM.md. No matching lower bound or novelty claim is inferred.

## Published 2010 substitution

I directly read Theorem1.1 on p3 of the
[author's final 2010 PDF](https://www.diambri.org/Mathpdfs/pollard--vFIN.pdf),
not only its restatement in the source audit. Its alternatives are exactly
the lower threshold j(|X|+|Y|)-2j^2+1 or the total-at-most-j-1
deletions with the retained ordinary sumset equal to the original
j-popular sumset. Its hypotheses allow arbitrary abelian groups and
possibly different finite sets, with 1<=j<=min(|X|,|Y|).

The consolidated proof meets those hypotheses for Z and -Y. The
replacement margin is

    3U^2/128-U^2/128-U^2/4096=63U^2/4096>0,

so the displayed bound is strictly below even the 2010 threshold
without its positive constant1. The source's stronger conclusions
about stabilizers are unused; ordinary Kneser is applied separately.
No 2026-only assertion about retained sizes is imported. Nonemptiness
follows from the retained mass bound (and also from the deletion count
and original support sizes). All constants C_w and all subsequent
losses therefore remain valid under the older published input.

## Compatibility with the reviewed components

The thresholding, small-U branch, weighted saturation, balanced-time
selection, and pointwise shift assumptions agree with the separately
reviewed component arguments. In particular:

* The probability density is normalized, and its upper bound3 is retained
  when converting the Schur integral to the Markov estimate.
* The group-index conclusion is applied to the singleton {t mod q} even
  when that residue is0. No nonzero-residue assumption was introduced.
* The finite model retains q=t*ell as an actual positive integer with
  t<=q<=N<4N. Both carries are0 or -q, so no accumulated t-step error
  replaces the reviewed one-q-step bound.
* The sampling prefactors remain q^{-2}(q/N)^2=N^{-2}, followed by
  (4N/N)^2=16 in the cyclic count. The boundary loss and rescaling
  losses remain16rho_0+q/N+epsilon.
* The regular-Bohr invocation uses the strict source range and no
  stability, primality, or volume-bound hypothesis.

The choices sigma=epsilon=eta^6/(100000 C_w), rho_0=sigma/4,
and c_eta=ceil(16K^D/eta) still give the required density margin,
Schur integral, and uniform bound log c_eta=O(eta^{-20}). The
consolidation did not omit the dependence needed to make c_eta
independent of A,N,t and the selected spectrum.

## All-cardinality and rate checks

The geometric schedule uses only eta_j<1/12. It gives
12k<=eta_J^{-1}<16k, final excess at most1/k, and
log M=O(k^{20}); the new elementary bound log Q_eta<=4eta^{-2}
is sufficient and does not introduce an extra logarithmic factor.

The displayed Følner product identity is valid even when a valuation
exceeds the box width, and the finite averaging proof applies to every
sum-free subset of B. Hence alpha(B)<=m/3+2m/k is justified without
an unstated limiting theorem.

For every n>=km, writing n=ell*m+r and using disjoint dilates plus
r new points gives the claimed bound. One may take the positive integer
T=max(B)+1 in the displayed dilation construction and choose the extra
points beyond all those dilates. Component restrictions alone prove
the upper bound, regardless of additional cross-component triples.
Thus no subsequence-only quantifier remains.

The estimates w<=M^3, m<=M^{3M}, and log H_k<=M^2 hold in the
stated range M>=24k>=384. They preserve two exponential levels.
The final floor choice of k is eventually at least16, satisfies
H_k<=n, and is bounded below by a positive constant times
(log log n)^{1/20}. This yields the theorem for every sufficiently
large integer n with absolute constants. All witnesses are positive
integers and therefore are admissible for the original minimization
over arbitrary integer sets.

No material discrepancy or omitted hypothesis was found in the
consolidated proof. Its conclusion is the stated upper bound only;
the original constant-factor asymptotic order remains unresolved.
