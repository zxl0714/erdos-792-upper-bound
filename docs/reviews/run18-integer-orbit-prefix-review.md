# Independent review of direct integer prefix convolution

Run `2026-11-17T12-05-38-564Z-905bb2c7`; 17 November 2026.
Reviewer: root, independently of the author.

Reviewed [proof](../../proof/lemmas/representation-counts-in-rotation-sets.md), SHA256
`a2eba933f34a6af1007144536ba3daff008cab792022952beb30c387d9869c5e`.
Verdict: **PASS at the stated pointwise scope**.

The phase windows in both cases are preserved exactly by the integer
involution `n -> z-n` on `[1,z-1]`. Their lengths and the baseline
subinterval lengths yield respectively `M*s` and `-M*s`, with total
discrepancy cost `3E_M`. At `delta<=1/24`, all extra parts of those
windows lie in the filled core or empty exterior and avoid the other
transition strip: `6delta<1/3` is sufficient. This verifies the exact
signed-prefix identities including boundary points.

The larger range `|s|<=2delta` is necessary for deep-core outputs and
is correctly covered by the `3delta` window margins. The wrapped
phase addition in the left-output case retains actual integer sums
`n+(z-n)=z`; it does not substitute a carried integer count. Repeated
inputs and outputs outside F are treated correctly.

The affine correction is essential and correct: two input affine
phases sum to the output affine phase plus beta. The displayed
irrational example refutes removing that correction, while making
no unsupported density or sum-free claim.

I also checked the [discrepancy corollary](../../proof/lemmas/rotation-discrepancy.md)
against the current primary Martin--Sitar v1 Theorem1.2. Constant
targets have zero variation, and the geometric sum bound is
`t/(2*b*h)`. The coefficient bracket is less than three because
`c=16/(7*pi)<1`, `sum1/h<=H`, and `sum1/h^2<=2`.
Hence `E_M<=M/(H+1)+3t/(2b)` holds for every consecutive block,
uniformly in its starting index. Closed containing/complementary arcs
justify all endpoint conventions and degenerate intervals.

No output rearrangement, count-density theorem, or improved origin
radius has been inferred here. No proof corrections or numerical
computations were needed.
