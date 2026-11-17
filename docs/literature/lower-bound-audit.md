# Lower-bound and current-scope audit

Audit date: 2026-11-15. This is a scoped literature review and elementary
reduction, not a complete candidate for PROBLEM.md.

## Primary evidence and versions

- Benjamin Bedert, *Large sum-free subsets of sets of integers via L1-estimates
  for trigonometric series*, [arXiv 2502.08624](https://arxiv.org/abs/2502.08624).
  The current landing page lists only v1, 12 February 2025; no correction or
  withdrawal notice was displayed. Saved [landing page](../../research/ARCHIVE_INDEX.md#record-034),
  [full HTML](../../research/ARCHIVE_INDEX.md#record-035),
  [PDF](../../research/ARCHIVE_INDEX.md#record-036), and
  [readable text](../../research/ARCHIVE_INDEX.md#record-037).
- Thomas F. Bloom and Ben Green, *Remarks on the inverse Littlewood conjecture*,
  [arXiv 2602.16482v2](https://arxiv.org/abs/2602.16482), revised 18 April 2026;
  published QJM 1 June 2026, [DOI](https://doi.org/10.1093/qmath/haag016).
  Saved [landing page](../../research/ARCHIVE_INDEX.md#record-038),
  [current full HTML](../../research/ARCHIVE_INDEX.md#record-039),
  and [readable text](../../research/ARCHIVE_INDEX.md#record-040).
  Revision notes credit a referee with improving the Littlewood constant;
  this is not an improvement in the asymptotic order of the sum-free excess.

## What the sources establish

Bedert Theorem 1.2 gives an absolute-constant lower bound of order log log N
for the excess over N/3, for arbitrary integer sets. Definition 2.1 preserves
relations with repeated inputs. Section 2 explicitly removes zero and does not
restrict signs. The opening upper-bound discussion records N/3+o(N), with a
poor quantitative rate and an explicit statement that a reasonable rate remains
interesting. It does not assert that log log N is sharp.

Bloom–Green Theorem 1.2: if |A|=N and ||1̂_A||_1≤K log N, then, for
0<δ≤1/2, there is an initial segment A' with |A'|≫N^(1−δ) and
E(A')/|A'|^3≫(δ/K)^2. It supplies useful structure, not a new bound on f.

Searches for the exact Bedert title, arXiv identifier, “Bedert sum-free 2026
improvement”, and “sum-free log log polynomial Bedert” found this relevant
2026 inverse theorem but no subsequent matching bounds. This is a search
result, not a proof that no later result exists. The current source versions
above are what this audit relies on.

## Exact zero reduction (independent elementary deduction)

Write α(A) for the maximum sum-free size and let g(m) be its minimum over
m-element sets of nonzero integers, with g(0)=0. Then

    f(n)=g(n−1),
    f(n)−n/3=[g(n−1)−(n−1)/3]−1/3.

Indeed, zero cannot belong to any sum-free set because 0+0=0. A set of size n
containing zero therefore has α at least g(n−1). A zero-free n-element set
contains a zero-free (n−1)-element set and has the same lower bound. Finally,
choose a minimizing (n−1)-element zero-free set and add zero. A minimizing set
exists because the possible α-values are integers in the finite interval [0,m].
This also shows why the printed all-finite logarithmic theorem must be read
asymptotically at the very smallest cardinalities; log log 1 is undefined and
f(1)=0. For large n the fixed −1/3 is absorbed by reducing the positive constant.

## Bottleneck and a tested repair at the level of hypotheses

Bedert Proposition 4.2 controls ||1̂_A+1̂_−A||_1 by O(C log N) when
α(A)≤N/3+C. Corollary 5.3 gives dimension O(C²(log N)³). Theorem 7.8
converts an L2 perturbation ≤|B|^(1/2)/K into an L1 lower bound of order log K.
In Propositions 7.3 and 7.9 the available relative errors are inverse powers
of log N. Thus this branch has K a power of log N, and log K is log log N.
Changing the target to log N without improving this error estimate is invalid.

A possible repair was to apply the newer inverse Littlewood theorem directly.
Its input is ||1̂_A||_1, whereas the direct sum-free estimate controls the
symmetrized coefficient function 1_A+1_−A. These coincide up to a factor for
symmetric A, or become 1_(A∪−A) for positive A. For general signed sets there
are overlapping weights 1 and 2, so a direct invocation needs an additional
weighted version or reduction. Even in the favorable cases it gives a local
structured subset, with no mechanism to extend its sum-free advantage over
the rest of A. The inference “large structured subset ⇒ add its advantage to
(N−|A'|)/3” is invalid because cross-component Schur triples are uncontrolled.

A concrete follow-up is to ask whether the weighted inverse result can be
proved for coefficient functions in {0,1,2}, preserving the quantitative energy
bound, and whether that yields improved projected Fourier error in the stated
Bedert propositions. Neither step is established here.

## Reproduction

HTML/PDF snapshots were downloaded using curl -L --fail (URLs above).
The system has no pdftotext, so the readable texts were exported from HTML by
[the saved Python script](../../research/ARCHIVE_INDEX.md#record-041), using math
alttext once. A small synthetic math node and the exact Theorem 1.2 LaTeX
formula both passed export checks. This conversion is only a reading aid;
HTML/PDF snapshots remain the authoritative saved evidence.

## Addendum: weighted input repair (2026-11-15 05:55 UTC)

The weighted-input issue above is repaired by inspecting Bloom–Green's proof;
it is not a substantive obstruction. Here is a self-contained adaptation of
its technical proposition. This is an elementary extension of a known proof,
not a claimed improvement to f(n).

Let S⊂Z have size N and let w be supported on S with 1≤w(s)≤M, where M
is an absolute constant (M=2 is sufficient). Suppose ||ŵ||_1≤K log N.
Then the same conclusion holds: for 0<δ≤1/2 there is an initial segment
S'⊂S with |S'|≫_M N^(1−δ) and E(S')/|S'|³≫_M(δ/K)².

To see this, take nested initial segments S_i of geometric cardinality ratio
λ>1, and let μ_i=1_(S_i)/|S_i|, exactly as in Proposition 3.1. The
McGehee–Pigno–Smith test function is

    R=c Σ_i μ_i + Σ_j D_j,  c=1−exp(−b),
    D_j=c Σ_(i<j) μ_i*F_ij,
    ||R̂||_∞≤1,
    supp(F_ij)⊂Z_(≤0),
    ||F_ij||_2≤sqrt(2)b |S_j|^(−1/2).

Because <μ_i,w>≥1, the main pairing is at least cJ. The support condition
restricts <w,μ_i*F_ij> to w1_(S_i). With μ_i^circ(x)=μ_i(−x), positivity
and w≤M give the pointwise comparison

    0≤(w1_(S_i))*μ_i^circ
      ≤M (1_(S_i))*μ_i^circ.

Consequently the exact one-sided autocorrelation calculation in (3.3) gives

    |<w, μ_i*F_ij>|
      ≤ Mb (E(S_i)+|S_i|²)^(1/2) / (|S_i| |S_j|^(1/2)).

Summing the geometric tail yields the weighted technical proposition

    ||ŵ||_1 ≥ (1−exp(−b)) [ J
      − Mb/(sqrt(λ)−1) Σ_i (ω[S_i]+|S_i|^(−1))^(1/2) ].

Here ω[T]=E(T)/|T|³. This is the published proposition with M multiplying
its error. Set b=1, λ=(1−η)^(−1), start with |S_1|=floor(N^(1−δ)), and
set η=c_M δ/K. The §5 counting argument gives J≫η^(−1)δ log N.
Unless some ω[S_i]≫_M η², the weighted proposition contradicts
||ŵ||_1≤K log N. Thus the desired prefix exists.

For completeness the two small-parameter cases in their proof also transfer.
If δ/K≤N^(−1/2), use E(S)≥N². For δ≪1/log N, interpolate the Fourier
L1, L2, and L4 norms: weighted additive energy E(w)≥N³/(Klog N)²,
while E(w)≤M⁴ E(S). This gives ω[S]≫_M(δ/K)². A weighted Littlewood
lower bound ||ŵ||_1≫_M log N follows from the weighted technical proposition
with λ sufficiently large and ω[S_i]≤1, or from the original coefficient
form of the Littlewood theorem; thus K is bounded below as needed.

Apply this with S=A∪(−A) and w=1_A+1_(−A). Then N≤|S|≤2N and the
Bedert estimate gives ||ŵ||_1≪C log|S|. The weighted extension supplies a
prefix of S with the stated energy, at parameter K=O(C), for arbitrary signed
A. Therefore signs and overlap do not prevent this use of the 2026 inverse
result. The remaining gap is unchanged: the resulting local structure does
not control cross-Schur triples or improve the projected Fourier error in
Bedert's argument. In particular, this does not supply a stronger excess
bound or matching upper construction for PROBLEM.md.

The structured subset can also be returned to A itself. Partition the prefix
S'=U∪V with U=S'∩A and V=S'\A⊂−A. The Fourier L4 triangle inequality
implies max(E(U),E(V))≥E(S')/16. Reflect V if it supplies this maximum.
If κ=E(S')/|S'|³, the resulting T⊂A has |T|≥(κ/16)^(1/3)|S'|,
and E(T)/|T|³≥κ/16. Thus one gets |T|≫(δ/C)^(2/3)N^(1−δ) and
normalized energy ≫(δ/C)². This last transfer is an independent elementary
deduction, and it still supplies only local structure.
