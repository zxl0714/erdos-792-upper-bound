# Independent end-to-end review of the square-root logarithmic upper bound

Run `2026-11-17T04-08-08-259Z-ba89c4b5`; reviewed 17 November 2026,
completed at approximately 08:04 UTC. Reviewer: fresh subagent
`/root/run17_fresh_upper_review`.

**Verdict: PASS at the stated upper-bound scope.** The frozen
[standalone proof](../../proof/lemmas/square-root-logarithmic-upper-bound.md) establishes that absolute
constants \(C,n_0\) exist such that every integer \(n\ge n_0\) has a positive
integer set \(A_n\subseteq[n^2]\), of cardinality exactly \(n\), with

\[
\alpha(A_n)\le n/3+C n/\sqrt{\log n}.
\]

This is not a PASS for [PROBLEM.md](../../research/PROBLEM.md). The original request for
the constant-factor asymptotic order remains unresolved. This review does
not establish novelty, an explicit useful numerical value of \(n_0\), or a
matching lower bound.

The reviewed file has SHA256

```text
d90a36be2f14c5aeb231f8e0698e60423d70b99bc75946824d235ec3f683933f
```

I checked that hash after the author froze the file and immediately before
writing this report. No proof file or root handoff file was edited. I read
AGENTS.md, PROBLEM.md, and state.json first, then audited the complete proof
as an unverified argument. Existing source inventories helped locate primary
texts; component review verdicts were not used as mathematical premises.

## External inputs and current-version checks

The three external additive/container inputs have the required scope.

1. **Grynkiewicz, Theorem 1.1.** I read the theorem on PDF page 3 of the
   [saved author's final paper](https://www.diambri.org/Mathpdfs/pollard--vFIN.pdf)
   and its [extraction](https://www.diambri.org/Mathpdfs/pollard--vFIN.pdf).
   It applies to finite nonempty subsets of any abelian group, with integer
   \(1\le j\le\min(|X|,|Y|)\). The alternative to the stated lower bound
   on the truncated representation sum gives total deletion at most
   \(j-1\) and exact equality of the retained ordinary sumset with the
   original \(j\)-popular sumset. These are precisely the conclusions used.
   The stronger additional stabilizer conclusion is not assumed.
   The [current arXiv record](https://arxiv.org/abs/0803.2601) still lists
   only v1, 18 March 2008, and the
   [publisher record](https://link.springer.com/article/10.1007/s11856-010-0053-6)
   confirms the 2010 publication and the same dichotomy. A fresh download
   of the author's current PDF matched the saved bytes, SHA256
   `9dfd5f36ea1539b8dad90cab961b2ef6c432409435a570091032ca191e0d1695`.

2. **Kneser.** Theorem 1 of the
   [saved DeVos paper](https://arxiv.org/abs/1303.3539) has exactly the
   finite, nonempty, abelian-group hypotheses and the stabilizer formula
   used in Section 2.1. I also read its
   [saved extraction](https://arxiv.org/abs/1303.3539).
   The [current record](https://arxiv.org/abs/1303.3539) lists only v1,
   14 March 2013. A fresh download of the author's current PDF matched the
   saved bytes, SHA256
   `3e591b34f80cc6f66fb158041f9d9efa7e378dbb46bc1acd0015c7f6fe61a2a7`.

3. **Saxton–Thomason.** I read Definition 3.2, Corollary 3.6, and the
   paragraph specifying its constant directly in the
   [saved v3 primary text](https://arxiv.org/html/1204.6595v3).
   Its co-degree normalization matches Section 1. The conditions are
   \(0<\zeta,\tau<1/2\) and
   \(\delta(\mathcal H,\tau)\le\zeta/(12r!)\); this corollary does not
   impose a further upper bound on \(\tau\) depending on \(r\).
   The constant \(800(r!)^3r\) is explicitly permitted. It supplies both
   independent-set coverage and the required edge-count/entropy bounds.
   The [current arXiv record](https://arxiv.org/abs/1204.6595) still lists
   v3, 28 November 2014, while the
   [publisher record](https://link.springer.com/article/10.1007/s00222-014-0562-8)
   confirms publication in 2015. The saved v3 HTML SHA256 is
   `a633dece02561ec82c783b2bcb4344a4c284dab80db79959bde5e1a42ce161e0`.
   The [existing source manifest](../../research/ARCHIVE_INDEX.md#record-001)
   retains the primary download and version provenance.

The current records and focused correction/erratum/withdrawal searches
disclosed no correction affecting these inputs. This is a bounded source
check, not a claim that all possible notices have been exhaustively ruled
out. The direct Springer article URLs worked after DOI redirects failed.
The online-container property and later container improvements are unused.

## Sections 2–3: robust finite-group exclusion

**Unweighted lemma.** Shift exclusion gives each of \(X,Y,Z\) size at most
\(M/2\), hence at least \(U=\delta M\). For \(U<32\), the permitted integer
cross count is zero. For \(U\ge32\), \(j=\lfloor U/16\rfloor\) satisfies
the popular-sum theorem's size hypotheses. The bound

\[
\sum_a\min(r_{Z-Y}(a),j)
\le j(M-|X|)+E
\]

uses exactly the cross count over \(X\). Its deficit below the theorem's
threshold is positive: \(jU-2j^2-E\ge95U^2/4096>0\).
After the two theorem deletions and deletion from \(X\), the retained
total exceeds \(M+U/2\). No retained set is empty, since the other two
together have size at most \(M\).

For \(H=\operatorname{stab}(C_3-C_2)\), periodicity makes \(C_1+H\)
disjoint from \(C_3-C_2\). Kneser therefore yields
\(\sum_i|C_i+H|\le M+|H|\), giving the claimed subgroup size.
If \(s\in H\), both disjoint translates of each \(C_i\) lie in its
\(H\)-saturation, forcing \(2\sum_i|C_i|\le2M\), a contradiction.

**Weighted rounding.** Normalization loses sufficiently little mass:

\[
\frac{1+\delta}{1+\kappa}\ge1+\frac{2\delta}{3}
\qquad(\kappa\le\delta/4,\ \delta\le1/2).
\]

The auxiliary prime may be chosen arbitrarily large and coprime to the
shift order. Every shift cycle then admits the stated path decomposition;
at most \(2/B\) of all vertices are deleted. The even/odd common-threshold
rounding has the specified marginals and excludes every surviving shift
edge. Independence between path/role blocks justifies the variance bound,
and independence between the three roles justifies the cross-count
expectation even when the three group vertices coincide. The auxiliary
\(p^2\) coordinate pairs cancel exactly in the normalized count.

The Chebyshev and Markov events have positive joint probability. The
constants permit the unweighted lemma at surplus \(\delta/2\).
Its subgroup index is less than \(p\), so the image of \(C_p\) in the
quotient is trivial. Thus the subgroup is \(H_0\times C_p\), with the same
index and the required exclusion of \(s\). The auxiliary prime imposes
no quantitative cost on later parameters. The assertion for \(s=0\)
correctly means that the hypotheses cannot all hold.

**Time-section selection.** The density \(3(x+y)\) integrates to one on
the time triangle. The two input marginals are \(3(1-z^2)/2\), and the
output marginal is \(3z^2\); their sum is exactly three. Consequently
\(\mathbb ET=3d(h)\) and \(\mathbb EE\le3I(h)\).
The capped surplus and truncation at \(\eta\) give

\[
\mathbb EX\ge7\eta/8,\qquad
\mathbb EX^2\ge49\eta^2/64>C_r\mathbb EE.
\]

This ensures a positive-measure choice with \(D\ge\eta\) and
\(E\le D^2/C_r\); a merely average-density assertion is not being
substituted for a sectionwise one. Absolutely continuous marginals avoid
exceptional times. The resulting quotient order is at most \(4/\eta\),
so it divides the stated \(Q_\eta\); its exponent therefore also divides
\(Q_\eta\). This establishes \(Q_\eta G\subseteq H_0\).

## Sections 4–6: the return estimate, sampler, and origin bound

**Square-root empirical return.** For each support point, the Bernoulli
variance calculation gives expected squared square-root error at most
\(1/k\). Points with zero population mean have zero sample value for every
tuple. Summing over \(F+F\) is therefore valid, including very small positive
means. The tuples are sampled with replacement, so no restriction
\(k\le|F|\) is needed.

The progression \(S\) satisfies \(|F+S|\le2N\le6|F|\).
Counting the pairs consisting of a good tuple and an element of \(S\)
gives a fiber of size at least two. Translation invariance and the triangle
inequality give squared error \(8aV/k\) for every difference of that fiber.
Both signs have equal global square-root translation error. Restriction
to \(F\) is an \(\ell^2\) contraction, giving

\[
T_{\pm q}(F)\le2T_0(F)+16aV/k
\le2T_0(F)+\xi^2N^2.
\]

The signs in the convolution identity agree with the definition of \(T_q\).
The argument proves a square-root norm estimate directly; no unproved
pointwise relative-error result or relative Croot–Sisask theorem is used.

**Raw sampling.** The representative independence in (12) is exact.
For a retained first point, deficit at least \(t\) implies
\(n_{r+t}(s)=n_r(s)+t\), which proves shift exclusion. At each fixed time,
exactly \(t\) residue deficits are below \(t\). The two mass losses are
therefore at most \(q/N\) from endpoint cells and \(t/q\) from repair.

Adding two deficits gives precisely the two possible outputs
\(a+b\) and \(a+b+q\). After the nonnegative bound, enlargement to the
unit square is legitimate. The pair-of-cells area is at most \(q^2/N^2\),
which cancels the residue normalization \(q^{-2}\). Every integer pair has
one residue pair. No cyclic wrap factor is lost, and the half-open cells
and deficit inequalities handle endpoints correctly.

**Finite origin exclusion.** If a tested shift has \(L_A(t)\le\eta N/8\),
the specified \(F\) is shift-free, has density at least
\(1/3+7\eta/8\), and has no larger Schur count than \(A\).
The parameter choices guarantee \(q/N,t/q\le\eta/16\) and

\[
3\tau_\eta+\xi^2
=\left(\frac1{16}+\frac1{100}\right)\frac{\eta^2}{C_r}
<\frac{\eta^2}{12C_r}.
\]

Thus the time-section exclusion applies, contradicting
\(t\bmod q\in Q_\eta C_q\). Divisibility of \(q\) by \(Q_\eta\) is not
required for that membership. The final identity
\(\sum_{t\in A}L_A(t)=T_N(A)\) is exact and ordered, including
diagonal triples. A nonempty tested origin region supplies all interval
size requirements; otherwise (16) is vacuous. The assertion really holds
for every positive integer \(N\), without an additional hidden cutoff.

## Section 7: fixed parameters and all interval lengths

This section constructs a family for every \(N\ge N_0\), using the same
height \(W\), count threshold, and error bound. At the next step,
\(M=\lfloor\kappa N/Q\rfloor\) is eligible for the old family, and
\(\kappa N/(2Q)\le M\le\kappa N/Q\). Formula (21) has mean exactly one,
lower bound \(1/4\), and height at most the announced \(W'\).

In the dense branch, (16) bounds the number of sampled origin points;
multiplication by the old height gives a weighted contribution at most
\(1/12\). Together with the uniform contribution this is at most \(1/3\).
In the other branch, dilation preserves all integer Schur relations,
and the factor \((N/M)^2\) is explicitly absorbed into the new count
threshold. The two branches cover the equality case as well.

The indexing of the iteration is consistent: step \(j\) uses
\(\eta_j\) to produce \(e_{j+1}\), and
\(e_j\le12\eta_j\) implies
\(e_{j+1}\le(37/4)\eta_j\le12\eta_{j+1}\).
Stopping at the first \(J\) with \(\eta_J\le\varepsilon/48\) gives
the advertised error and a two-sided constant comparison of
\(\eta_J\) with \(\varepsilon\).

The recurrence for \(R_j=\log\delta_j^{-1}\) correctly retains the
old height \(S_j=\log W_j\). All new terms are bounded by an absolute
constant times \(S_j+a_j\), so \(R_j\ll S_j\).
The geometric sum of \(\eta_j^{-2}\), rather than the number of stages
times the last cost, gives the bound \(\exp(O(\varepsilon^{-2}))\)
for each of \(N_{\min},W,\delta^{-1}\).
These three parameters depend only on \(\varepsilon\), not on \(N\).

## Sections 8–9: rounding, repeated variables, and cardinality inversion

The distinct-triple hypergraph is 3-uniform and has
\(\lfloor(N-1)^2/4\rfloor\) edges. Its average-degree and co-degree
bounds imply the displayed
\(\delta(\mathcal H_N,\tau)\le75/(N\tau^2)\).
The choice \(\tau=100/\sqrt{\zeta N}\) meets Corollary 3.6's
hypotheses under (23). For \(r=3\), its explicit constant is (518400),
which is safely covered by the \(10^8\) in (25).

Every actual sum-free set is independent in this hypergraph. The converse
is unnecessary. A container's ordered Schur count is bounded by twice its
distinct edge count plus at most \(N/2\) diagonal solutions. Thus (22)
does apply to every container; the allowed equality \(x=y\) in the
original definition has not been discarded.

For independent inhomogeneous Bernoulli sampling, each container has mean
intersection at most \(\theta\mu\). Variance at most \(\mu\) and
Bernstein with deviation \(\varepsilon\mu/4\) justify the stated
weaker exponent \(\varepsilon^2\mu/48\). Equation (26) makes the
union bound over all containers and the two size tails strictly less than
one. The ratio estimate uses \(\theta\le1\), as assumed.

The elementary logarithm bounds used to deduce (26) from (23) are valid
on \([1,\infty)\). The ratio of the lower bound for its left side to
the first right-side term is at least

\[
\frac{N^{2/5}}{768\cdot10^8 R^{37/10}}
\ge\frac{10^{16}}{768\cdot10^8}R^{3/10}>10^5
\]

at the stated threshold. This also leaves room for \(\log3\) and all
earlier size conditions.

Finally the same \(W,\delta,N_{\min}\) from Section 7 are available at
the deliberately chosen length
\(N=\lceil(1+\varepsilon)Wn\rceil\). Rounding yields
\(n<|B|\le(1+3\varepsilon)n\). Taking any \(n\)-element subset cannot
increase its maximum sum-free subset size. For
\(\varepsilon\le1/12\), the expansion of the two displayed factors
is bounded by \(1/3+3\varepsilon\), as claimed.

With \(\varepsilon=\sqrt{2C_2/\log n}\), the required cardinality
threshold becomes \(H_\varepsilon=\sqrt n\), and

\[
N\le2n\exp(C_0\varepsilon^{-2})
\le2n^{3/2}\le n^2
\]

for all sufficiently large \(n\). This is an every-cardinality conclusion,
not a conclusion only on a subsequence. The witnesses are positive, so
they are also eligible in the original minimum over arbitrary integers.

## Audit method and residual scope

I independently recalculated the displayed margins, moments, convolution
signs, normalization factors, and parameter recurrences. No numerical
search or finite-case enumeration was needed. I used Jacobian `math.find`
to inspect operations for exact polynomial inequality checks; its
`smt.solve` and Sturm-based candidates were unnecessary once the relevant
inequalities reduced to the explicit hand calculations above. No
`math.run` computation, timeout, or UNKNOWN result is being used as
evidence.

The only command-level failure was that `python` was unavailable for a
text extraction; rerunning with `python3` succeeded. Source revalidation
used Python 3 `urllib.request.urlopen` and `hashlib.sha256` on the two
author PDF URLs, without modifying the saved sources. Proof and source
hashes were also checked with `sha256sum`.

No substantive gap or required repair was found in the frozen upper-bound
argument. The lower-bound sentence is contextual and is not needed for
this PASS; its separate [saved audit](../literature/lower-bound-audit.md) remains the
evidence for that side. The research phase must remain unresolved with
respect to the original constant-factor acceptance criterion.
