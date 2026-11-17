# Independent review: completing the third interval role

Run `2026-11-17T04-08-08-259Z-ba89c4b5`; 17 November 2026.

**Verdict: PASS at the stated one-triple scope.** The reviewed proof
is [run17-cyclic-interval-third-role.md](../../proof/lemmas/third-interval-in-a-critical-triple.md),
frozen SHA256

    31e1edaf39565acb9ce0f3d13f97dbd5988ac5580a744b50ff4ffb1ff79ab774.

I independently checked the exact discrete tail, full kernel
normalization, arbitrary occupancy of the third set in quotient
fibers, and the approximation error in §4. All displayed bounds
hold, including thresholds below one quotient atom. No correction
was needed.

## 1. Discrete convolution and its support

Writing `a=np` and `b=nq`, the assumptions give positive integers
`a,b` with `a+b<n`. After translating the two quotient intervals,
their ordinary sums occupy exactly `0,...,a+b-2`; reduction modulo
`n` creates no repeated residue within this support. Its
representation count is

    r(k)=min(k+1,a,b,a+b-1-k).

For each fixed output in `G`, every quotient representation permits
exactly `|G|/n` first inputs. Probability normalization therefore
gives convolution `r(k)/n`, not `r(k)/|G|`. This checks all kernel
factors. The sumset is the complete inverse image of the quotient
sum interval: every quotient representation can be lifted with its
second term chosen to give the specified output. Consequently its
complement `R` is an interval lift for the same quotient map, with

    m(R)=1-p-q+1/n.

The source terminology agrees with Griesmer's current v3 Definition
1.4 and Remark 1.8, already checked in the
[single-pair review](run17-single-pair-cyclic-stability-review.md).
The counting identities needed here are proved directly rather
than imported with unstated hypotheses.

## 2. Exact tail and arbitrary third-set fibers

For `L=floor(n*tau)` with `0<tau<min(p,q)`, one has
`0<=L<min(a,b)`. Every positive representation level below
`min(a,b)` appears at exactly two residues; the plateau is strictly
above `L`. Thus precisely `2L` residues in the sum support have
convolution at most `tau`. This proves the exact tail
`2floor(n*tau)/n`. If `min(a,b)=1`, the permitted threshold
necessarily has `L=0`, so that boundary case is covered too.
At integral `n*tau`, its level belongs to the tail because the
popular set is defined with strict inequality. No assumption
`tau>=1/n` is needed.

Markov on `C` bounds its mass in the popular set by `E/tau`.
Its mass `alpha` inside the entire sum support is therefore at
most `2floor(n*tau)/n+E/tau`. This uses only an upper bound by
the full tail's measure and imposes no constancy or saturation of
`C` within fibers.

With `beta=m(R\C)`, the identity
`m(C)=m(R)-beta+alpha` and the stated lower bound on `m(C)`
give `beta<=nu+1/n+alpha`. Adding the two error pieces proves

    m(C triangle R)
      <=nu+1/n+4floor(n*tau)/n+2E/tau
      <=nu+1/n+4tau+2E/tau.

For `0<E<c^2`, the choice `tau=sqrt(E)` is strictly less
than both input densities and yields `6sqrt(E)`. When `E=0`,
the convolution is positive at every point of its support, so the
third set has no mass there and the bound `nu+1/n` follows
directly. No limiting argument or missing lattice error is used.

## 3. Approximation interface

The telescoping convolution identity in §4 is correct. Pairing
with `1_C` and using its bound by one gives absolute count error
at most

    m(P triangle A)*m(Q)+m(A)*m(Q triangle B),

which is at most the total input approximation error `eps`.
The total-mass premise likewise changes by at most `eps`.
Thus substituting `Eold+eps` and `nu+eps` into the exact-input
bound proves (12), and (13) follows under its stated strict
condition `Eold+eps<c^2`. The case where this sum is zero is
handled by the preceding zero-count argument. Counts remain
ordered and include all repeated variables throughout.

The conclusion concerns the complementary interval of one fixed
pair of input interval models. It gives no relation between phases
at distinct times and does not by itself supply measurable choices
or a common character for a time family. Those are separate
composition tasks. No stronger original-problem conclusion is
included in this verdict.

No numerical experiment was needed: finite quotient counting and
elementary inequalities settle all cases uniformly. The recorded
[Jacobian discovery](../../research/ARCHIVE_INDEX.md#record-009)
does not supply a more suitable parameter-uniform operation. The
frozen proof file remained unchanged.
