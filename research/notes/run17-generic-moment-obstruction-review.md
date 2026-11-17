# Independent review of the generic coherent-moment obstruction

Run 2026-11-17T04-08-08-259Z-ba89c4b5; 17 November 2026.
Independent scoped review in RESEARCH. No original-problem completion.

**Verdict: PASS at the stated scopes of both files below.**
The measurable construction disproves a uniform quadratic coherent
moment bound, and indeed every uniform power \(k^{-1-\varepsilon}\),
for arbitrary dense exactly sum-free profiles in varying finite cyclic
groups. The integer transfer preserves the actual triangular progression
weights and omits exactly the integer shift zero.

| Reviewed file | SHA256 |
|---|---|
| [Profile construction](run17-generic-profile-moment-obstruction.md) | 3c70ccd2b6534193c987851690c919c853c2f3dc8b354b9d398ce6835ba3abc9 |
| [Integer transfer](run17-generic-moment-integer-transfer.md) | 30be9b3c8e2ac1ac51356f9ee1df6ff315b1421751b4157c69fa2f2d621141a1 |

The transfer currently places a lower bound on the progression length
\(L\), with no upper bound. Its conclusion therefore has that scope.
A proposed refinement imposing \(L=\exp(O(k))\) is a separate artifact
and is not included in this verdict.

## 1. Independent check of the profile construction

The proof was checked from its defining sets and integrals, without
assuming the claimed moment conclusion or independence after tilting.

**Time geometry and endpoints.**
The input intervals have length \(h=1/k\), separated by at least \(4h\).
The output intervals have length \(2h\), separated by at least \(8h\).
For \(k=1000R_0\), all input times are in \((0.48,0.485)\), all output
times in \((0.96,0.97)\), and the bulk is \((0.6,0.95]\).
An input from the bulk or an output interval cannot participate in a
time triple with any other supported time: its sum is greater than one.
Two input times cannot land in the bulk or an input interval.

The starts of \(I_i+I_j\) and \(J_\ell\) differ by
\(4h(d_i+d_j-2d_\ell)\). If unequal, this separation is at least
\(4h\), exceeding their common length \(2h\).
The progression-free labels consequently force \(i=j=\ell\).
Open left endpoints and closed right endpoints preserve every exclusion
pointwise; no almost-everywhere exception is used.
For the surviving case, every point of \(I_i\times I_i\) has its sum
in \(J_i\), and the full square lies below time one. Its area is exactly
\(h^2\), with no factor \(1/2\).

**Spatial conditions and normalization.**
For every prime \(p_i\ge23\), the interval
\(A_i=[0,\lfloor p_i/4\rfloor-1]\) has no sum wrap.
Its sumset complement \(C_i\) gives
\(\alpha_i\ge1/5\), \(\beta_i\ge1/2\), and
\[
 T_i(0)=0,\qquad
 \mathbb E_{z\in C_{p_i}}T_i(z)=\alpha_i^2\beta_i\ge1/50.
\]
The count is ordered and includes equal inputs.
For a self-input time block, all other CRT coordinates are unrestricted,
so the normalization is exactly \(p_i^{-2}\), yielding
\[
                         I_\Phi(q)=h^2\sum_iT_i(q_i).
\]
This proves exact time-sum-freeness and \(I_\Phi(0)=0\), even though
the individual input coordinate interval contains zero.

**Conditioning under the overlap power.**
The overlap formula is the sum of the bulk contribution \(7/20\)
and the individual input/output correlations with time weights \(h,2h\).
Changing one coordinate changes this overlap by at most \(3h\), while
it is always at least \(7/20\).
For fixed other coordinates, the ratio of largest to smallest weights
under \(R_\Phi(q)^k\) is therefore at most
\[
 (1+60/(7k))^k\le e^{60/7}<e^9.
\]
Consequently every conditional coordinate probability is at least
\(e^{-9}/p_i\). This argument does not assert that the coordinates
remain independent after tilting.
Nonnegativity, conditional averaging, and then linearity of expectation
give the lower bound
\[
 \frac{\sum_qR_\Phi(q)^kI_\Phi(q)}{\sum_qR_\Phi(q)^k}
                    \ge \frac{e^{-9}r}{50k^2}.
\]
The denominator includes zero and is everywhere supported because
the bulk makes every overlap positive.

**Unbounded parameter family.**
The spherical-layer construction was independently checked:
there are at most \(Da^2\) squared-norm levels in
\(\{0,\ldots,a-1\}^D\), giving at least \(a^{D-2}/D\) labels on one
level. Base \(2a\) prevents carries in a midpoint relation.
Equal squared norms then force both endpoints to equal their midpoint.
Since \(k=1000(2a)^D\), this gives
\(r/k^2\ge c_Dk^{-1-2/D}\).
Choosing fixed \(D>2/\varepsilon\) proves failure of every uniform
\(O(k^{-1-\varepsilon})\) bound. The conclusion concerns a varying
family of groups and profiles, not one fixed profile.
The full elementary argument is in the reviewed file; no quantitative
covering theorem from its source context is imported.

## 2. Independent check of the integer transfer

The parameter order is valid: first fix \(k\), the cyclic group and
profile, \(\eta,b,t,L\); only then take \(N\to\infty\).
Primes greater than \(16k\) are permitted by the profile proof and make
\(\gcd(bt,M)=1\) for \(b=16k\) and
\(t=\operatorname{lcm}(1,\ldots,8k)\).

**Exact realization.**
For
\[
 F_N=\{n\in[N]:\Phi(n\bmod M,n/N)=1\},
\]
an integer relation \(x+y=z\) would be exactly the forbidden profile
relation in both space and time.
Thus \(T_0(F_N)=0\) for every \(N\), including endpoint and repeated-input
cases. This step is pointwise, not a consequence of a vanishing limiting
integral.

**Riemann limits and orientations.**
For every fixed integer \(q\), the overlap has input times
\(u,u+q/N\) and residues \(a,a+q\); it tends to \(R_\Phi(q\bmod M)\).
The shifted ordered count has output time \(u+v+q/N\) and output residue
\(a+b+q\), so its \(N^{-2}\)-normalized limit is exactly
\(I_\Phi(q\bmod M)\).
Residue-class grids have mesh \(M/N\); finitely many interval boundaries
and diagonal sum boundaries have vanishing normalized neighborhoods.
The one- and two-dimensional normalizations are respectively \(M^{-1}\)
and \(M^{-2}\).
Input diagonals \(x=y\) remain in every exact count and contribute
only \(O(N)\) points to the \(N^{-2}\) limit.
All needed shifts belong to one finite set \(S-S\), so pointwise limits
are sufficient; no uniform-in-\(M,k,L\) limit is needed.

**Actual progression weights and the integer diagonal.**
If \(M\mid L\), the progression \(S=bt\{0,\ldots,L-1\}\) is uniform
modulo \(M\). Counting its ordered pairs gives
\[
       \sum_{q\equiv r\pmod M}\nu_S(q)=L^2/M
\]
for every residue \(r\), retaining the triangular weights
\(\nu_S(jbt)=L-|j|\).
Removing integer \(q=0\) removes a zero numerator term and exactly
\(L R_\Phi(0)^k\) from the limiting denominator.
The remaining denominator is at least
\((L^2-L)(7/20)^k>0\).
Hence the limiting normalized integer ratio is at least the full
profile ratio. Nonzero integer multiples of \(M\) remain included.
Taking \(N\) sufficiently large gives the stated half-strength lower
bound \(e^{-9}rN^2/(100k^2)\).

The fixed density margin above \(1/3\) permits
\(|F_N|\ge(1/3+7/(8k))N\). Increasing \(N\) also enforces the short-window
condition \(btL\le N/(16k)\). These choices are compatible with every
previous limiting estimate. Exact sum-freeness and \(Q_\eta\mid t\)
already hold, and the translation-union ratio is below six.

## 3. Scope retained by this verdict

Both constructions contain a bulk interval with full spatial support.
Thus the integer sets have many pairs differing by \(t\), and for large
\(N\) their minimum exceeds \(0.48N>t\).
They fail both the required exclusion \(F\cap(F+t)=\varnothing\)
and the prescribed-member condition \(t\in F\).
These are concrete missing hypotheses, not merely unverified side
conditions.

The result rules out a generic improvement for this coherent weighted
average. It does not rule out a good specially selected return or a bound
using the full tiny-shift exclusion hypothesis.
The original Erdős problem remains unresolved.
No numerical run was required for this review.
