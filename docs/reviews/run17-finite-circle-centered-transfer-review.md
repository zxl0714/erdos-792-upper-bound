# Independent review: finite centered profiles to circle arcs

Run `2026-11-17T04-08-08-259Z-ba89c4b5`; 17 November 2026.

**Verdict: PASS at the stated finite-to-circle interface.** The
reviewed proof is
[run17-finite-circle-centered-transfer.md](../../proof/lemmas/from-cyclic-intervals-to-circle-arcs.md),
frozen SHA256

    d61504899451d4108f8e620bfb2fdc68828800d4836b5f634f79751205e8e1ea.

I independently checked the exact-width arc construction, endpoint
conventions, displacement branch, centered lengths, and both count
comparisons. The displayed hypotheses and constants suffice. No
proof correction was needed, and no phase-stability or original-bound
claim is included in this verdict.

## 1. Exact-width arcs and their grid restrictions

A nonempty proper quotient interval of `k` consecutive residues
starting at `j` is the grid restriction of the half-open arc

    [(j-1/2)/n,(j+k-1/2)/n),

read on the circle. Its center is the stated
`(j+(k-1)/2)/n`, its length is `k/n`, and the centered-cell
construction retains exactly the intended grid points. Replacing
the length by `1/3` at the same center gives nested arcs with
Haar symmetric difference `|k/n-1/3|`. With one consistent
half-open convention, nesting also holds for grid restrictions.
The number of grid points in a circle arc differs from its length
times `n` by at most one, so the stated additional `2/n` is
valid. The empty and whole-circle cases with center zero obey the
same bound and nesting argument.

The density difference between `F_s` and `P_s` is bounded by
their symmetric difference. Combining the two triangle inequalities
therefore proves integrated error at most
`a=2delta+M+2/n`. There are finitely many quotient interval
sets, and the prescribed choices give a measurable center function.

## 2. The displacement branch and nondegenerate centered lengths

Exact `v`-independence of `F_s` implies that the grid overlap
of `B_s` with its `v`-translate has integrated mass at most
twice the `F` approximation error. The corresponding circle
overlap of two arcs of length `1/3` is
`max(1/3-theta,0)`, where `theta=||chi(v)||`. Charging at
most four endpoints gives the asserted grid/Haar discrepancy
`4/n`. Consequently

    max(1/3-theta,0) <= 2a+4/n < 1/12,

which indeed forces `theta>1/4`.

For this branch the shorter separation of the centers of
`I_s-theta` and `I_s+theta` is `1-2theta`. Their overlap
length is thus `L=max(2theta-2/3,0)`. The product Lipschitz
bound and the same grid discrepancy give

    |alpha-L| <= sigma_X+2a+4/n=b.

The premises `c<=alpha<=1/3-c` and `b<=c/4` yield
`3c/4<=L<=1/3-3c/4`. In particular the positive branch
applies, proving exactly the two inequalities in (8).

On that range, lift the two shifted centers to `c_s+theta`
and `c_s+1-theta`. Their separation is less than `1/3`,
so both the intersection and union are single arcs. Their common
center is `c_s+1/2`; their lengths are `L` and `2/3-L`.
The union length is less than one, so this real-line lift introduces
no additional circle component. The same half-open conventions
give the stated sets, with no isolated endpoint additions. Reversing
the sign of `chi(v)` merely exchanges the two constituent arcs.

## 3. Finite model-count comparison

The two centered grid-model errors are at most `sigma_X+2a`
and `sigma_Y+2a`. Adding the middle `F` error contributes
`a`, giving the total `sigma_X+sigma_Y+5a`.
For each changed role, the other two indicators are bounded by
one. The time-triangle input marginals are at most one, and the
output-time marginal at `z` is `z<=1`; hence these integrated
section errors bound the corresponding integrated count changes.
This verifies (13), including the output-role normalization.

Surjectivity makes the grid model count exactly a normalized
quotient count: both input fibers have the same size, and their
sum maps to the sum of their quotient coordinates. No residual
kernel factor or limiting distribution is involved.

## 4. Circle coupling and endpoints

The coupling `r=(j+U)/n`, `s=(k+V)/n` gives independent
uniform circle points. Here `j,k` are independent uniform grid
indices and independent of `U,V`, which are uniform on `[0,1)`.
Conditional on `U,V`, the quotient sum `j+k` is still uniform.
This validates use of the output discrepancy bound at the random
shift `(U+V)/n`, despite its dependence on the two input shifts.

For a fixed forward shift less than `1/n`, each boundary of
a consistently half-open arc changes at most one grid test; a
shift less than `2/n` changes at most two per boundary. Equalities
at grid endpoints are handled by the half-open crossing intervals,
and the remaining exceptional choices of `U,V` have measure zero.
Thus the input mismatch bounds `4/n` and `2/n`, and the output
bound `8/n`, are valid for the respective maximum numbers of arc
components. A product comparison needs no independence among
these mismatch events and gives `14/n` at each time pair.

The time triangle has area `1/2`; integration gives `7/n`,
which is below the stated `8/n`. Combining this with (13)
proves (10). The already established single-arc branch would permit
smaller constants, but is not needed for the displayed estimate.

## Scope

The lemma produces exact-width centered circle arcs, a displacement
uniformly inside the required range, and an upper bound for one
ordered circle count. The centers remain arbitrary measurable
functions of time. It neither aligns them nor supplies effective
inverse-theorem parameters. Its error bounds are deterministic
finite-group statements and do not rely on equidistribution or a
large-order limit beyond the explicit assumptions involving `1/n`.

No numerical computation or external stability theorem was needed
for this audit. The frozen proof file was not edited.
