# Independent review: fixed-precision single-pair cyclic stability

Run `2026-11-17T04-08-08-259Z-ba89c4b5`; 17 November 2026.

**Verdict: PASS at the stated single-pair, fixed-precision scope.**
The reviewed proof is
[run17-single-pair-cyclic-stability.md](../../proof/lemmas/stability-of-cyclic-critical-pairs.md),
with frozen SHA256

    4389814e9665caa89e459cce10fa114b9dbe59068222155414747bfa21710211.

I independently checked the source statements, every branch exclusion,
the constants and their order of dependence, and the optional lower
bound on the quotient order. No substantive gap was found. This does
not establish character coherence across time, effective dependence on
the original surplus parameter, or a resolution of `PROBLEM.md`.

## 1. Primary hypotheses and normalization

I checked Griesmer's [current record](https://arxiv.org/abs/1807.01694)
and [v3 primary text](https://arxiv.org/html/1807.01694v3), including
Theorems 1.1 and 1.15 and Definitions 1.4, 1.13, and 1.14. The current
record identifies v3, 27 November 2019, and Discrete Analysis 2019:18;
no withdrawal is displayed. The version history records referee
changes in v2 and stylistic/expository changes in v3. Saved evidence is
linked through the [source manifest](../../research/ARCHIVE_INDEX.md#record-032).
The [saved full primary text](https://arxiv.org/html/1807.01694v3)
has SHA256

    2c7790aee7230d700bbdd8a77da285a26a94f6e17d03a1636831f180256744f3.

The source uses probability convolution and a strict popularity
threshold. Theorem 1.1 has exactly the required conclusion: total
symmetric-difference error less than its precision, and an ordinary
sumset of measure at most the sum of the two new input measures.
It is uniform over compact abelian groups and therefore over all
finite cyclic groups, without an onset in their order.

Definition 1.13 bounds the mass added by saturation by `e2*m(K)`.
It is stronger than closeness to an arbitrary periodic set. Definition
1.14 allows an empty nearly periodic part, but Theorem 1.15 branch II
requires at least one of the two such parts to be nonempty. Branch III
contains translates of both inputs in the indicated progressions,
with containing masses below the respective input masses plus `e2`.
These are ambient group measures. Definition 1.4 requires a
surjection onto the circle for a Bohr interval and a surjection onto
`Z/nZ` for an `n`-cyclic progression. All these details are used
correctly in the proof.

The exact finite-group Kneser inequality used in branch I is the
standard inequality with the actual stabilizer of the sumset. Its
source interface is recorded in the cited
[two-independent-role note](../../proof/lemmas/shift-exclusion-for-three-sets.md).
There is no connected-group theorem or fractional-input extension
being substituted here.

## 2. Popular bridge and the two precision scales

For the normalized ordered count `E`, Markov gives

    m((A+_r B) intersection C) <= E/r.

Together with the near-total-one premise, this implies the displayed
popular-sumset bound in §3. At `r=d1`, the choices
`nu0<=d1/2` and `E0=d1^2/2` make its excess at most `d1`.
Both original input densities strictly exceed `e1`, as required.
All repeated input or output elements remain included in the count.

The order of choices is valid: choose `e2`, obtain `D2`, enlarge to
`D0`, then choose `e1<=1/(100D0)`, and only then obtain `d1`.
The exact critical pair satisfies Theorem 1.15 for the already fixed
coarse tolerance, regardless of the value of its sumset tolerance
`d2`. Thus no circular inequality involving `D2(e1)` is required.
All constants precede the group and the sets.

The returned subgroup has index at most `D0`, so `Q0` annihilates
its quotient and `v in Q0G` implies `v in K`. The approximation
gives overlap bounds at most twice the corresponding error. The
trimmed sets `U=S intersection A` and `V=T intersection B` are
nonempty, exactly shift-independent, and lose in total less than
`e1`. Their use avoids assuming that the approximating critical pair
is itself exactly independent.

## 3. The three classification alternatives

**Quasi-periodic alternative.** A nonempty nearly periodic part has
a saturation containing a whole `K`-coset. Since `v in K`, its
self-overlap has measure at least `(1-2e2)m(K)`, hence at least
`(1-2e2)/D0`. This exceeds `2e1<=1/(50D0)`. The argument applies
to whichever input has the nonempty part; this is where independence
of both inputs is essential. Finiteness ensures that nonempty parts
have positive measure, and no size claim for the exceptional
one-coset piece is used.

**Periodic-sum alternative.** Set `P=S+T+K`. The bound
`m(P)<=3/4+e1+e2<1` makes its stabilizer `H` proper and gives
`h=m(H)<=1/2`. Since `K subset H`, Kneser applied to
`S+K,T+K` uses the exact stabilizer `H` and yields

    pS+pT+c' <= 1+h,

where `pS=m(S+H)`, `pT=m(T+H)`, and `c'=1-m(P)`.
The saturation identities in this application are exact because
`K subset H`. Shift-independence of the trimmed sets gives
`2m(U)<=pS`, `2m(V)<=pT`, while `pS>=h`. Consequently

    m(U)+m(V)+c' <= 1+h/2-m(V)
                  <= 11/12+nu0+e1.

The independent lower bound is `1-e1-e2`. Their gap is positive
under `nu0+2e1+e2<=0.4eps<1/12`. This checks the constants in
§5 without relying on the original third set after approximation.
The extra inequality supplied by branch I is indeed unnecessary.

**Interval/progression alternative.** The trimmed `V` lies in one
`K`-coset and is independent of its `v`-translate inside that coset.
Thus `m(K)>=2m(V)>=2/3-2nu0-2e1>1/2`, forcing `K=G`.
A finite group cannot surject onto the circle, so only parallel
cyclic progressions remain. Absorbing the two translates into their
quotient intervals is legitimate. Their total error from `A,B` is
less than `e1+2e2<=0.3eps`, strictly below the target. Their intervals
are nonempty because they contain the nonempty sets `S,T`.

## 4. Optional quotient order and scope

The source itself supplies only `n>D2`. The proof correctly treats
the stronger `n>D0` separately. If `n<=D0`, then `n|Q0`, so a
quotient progression is invariant under `v`. For any such invariant
set `PA`, exact independence of `A` gives

    2m(A intersection PA) <= m(PA),
    m(A triangle PA) >= m(A) >= c0 > eps.

This contradicts the approximation. Hence the optional input `M0`
is valid, with `n>D0>=M0`; it does not require strengthening the
published theorem's conclusion by assertion.

The resulting constants are implicit functions of the fixed inputs
`c0,eps,M0`, independent of the finite group order. The displayed
eventual implication from `Q_eta` is valid at fixed precision, with
no effective bound on how small `eta` must be. The conclusion is
only for two indicator input sets of one pair; it approximates
neither `C` nor a time-indexed family. No common quotient character
across pairs, alignment of centers, or return-radius improvement
follows from this review.

No numerical experiment was needed. The recorded
[Jacobian discovery](../../research/ARCHIVE_INDEX.md#record-006)
provides bounded character operations, not an operation proving this
parameter-uniform source deduction. The proof file remained
unchanged throughout this audit.
