# Spatial critical-pair interface after centered mass stability

Run `2026-11-17T04-08-08-259Z-ba89c4b5`; 17 November 2026.
Bounded planning/source audit. **The proposed single-pair structural
lemma below is not yet proved or independently reviewed.**

The new useful interface is that near-total-one role masses and low
cross count imply a small popular sumset. This supplies a hypothesis
missing in the earlier [local-uncovered audit](../../research/ARCHIVE_INDEX.md#record-053).
Griesmer's theorem is therefore relevant at fixed absolute precision
on the actual finite cyclic model. It does not itself give a common
character across times or an effective dependence on the original
surplus parameter.

## 1. Primary source and version check

The [capture manifest](../../research/ARCHIVE_INDEX.md#record-032)
records current landing pages, hashes of reused primary texts, and
the retrieval command. Direct download of the later edited
Christ--Iliopoulou PDF returned HTTP 403; its successfully read web
tool views, including the edited date and exact theorem statements,
are saved in the same directory. The directory also saves search
records. Earlier
Kemperman inputs are reused through the
[two-layer structural source audit](../../research/ARCHIVE_INDEX.md#record-054)
and the [transform audit](../../research/ARCHIVE_INDEX.md#record-055).

**Griesmer.** The current record remains v3, 27 November 2019,
Discrete Analysis 2019:18; v2 incorporated referee suggestions,
and v3 changed style/exposition. No withdrawal is displayed.
Use [Theorems 1.1 and 1.15](https://arxiv.org/html/1807.01694v3),
also [saved locally](https://arxiv.org/html/1807.01694v3).
For any precision `e>0`, Theorem 1.1 gives `d>0`, uniformly over
compact abelian groups: input densities exceed `e`, and

    m(A+_d B)<=m(A)+m(B)+d

imply sets `S,T` with total symmetric-difference error below `e`
and `m(S+T)<=m(S)+m(T)`. Popularity means convolution **greater
than** `d`.

Theorem 1.15 gives constants `d>0,D<infinity` for each precision
`e>0`. Densities exceeding `e` and ordinary sumset excess at most
`d` imply a subgroup `K` of index at most `D` and one of:

1. `S+T` is `e`-periodic relative to `K`, with
   `m(S+T+K)<=m(S+K)+m(T+K)`.
2. `S+T` is not `e`-periodic; both sets have `e`-quasi-periodic
   decompositions, at least one periodic part is nonempty, and
   `m_*(S0+T0)<=m(S0)+m(T0)+e m(K)`.
3. `m_*(S+T)<(1-e)m(K)`; translates of both sets lie in parallel
   Bohr intervals or parallel `n`-cyclic progressions in `K`,
   with containing masses below `m(S)+e,m(T)+e`; `n>D`.

Here `e`-periodicity means the saturation adds at most `e m(K)`.
Quasi-periodicity splits a nonempty piece in one `K`-coset from
an `e`-periodic part in disjoint `K`-cosets; that latter part may
be empty. These alternatives have no stated effective `d(e),D(e)`.

**Tao.** The [current v4](https://arxiv.org/abs/1711.04337),
30 June 2018, explicitly repairs a gap in Theorem 4.6.
The [saved v4 text](https://arxiv.org/html/1711.04337v4), Theorem 1.5,
has the same small-popular-sumset premise, also requires both
densities and their complementary gap to exceed a fixed precision,
and returns parallel rank-one Bohr approximants. It assumes the
ambient compact group is **connected**. The finite cyclic model
is not connected, and taking a product with a torus does not
remove its disconnected factor. This is not a direct substitute
for Griesmer in the current model.

**Christ--Iliopoulou.** The [arXiv v2 record](https://arxiv.org/abs/1808.08368)
is dated 17 August 2019 and notes corrections plus a repaired gap.
The later [publisher-hosted text](https://preprint.press.jhu.edu/ajm/sites/default/files/AJM-christ-iliop.pdf)
is edited 12 March 2021; the audit uses that version. Its
Theorem **1.4** (rather than the earlier sumset theorem numbering)
gives linear excess-to-containing-mass error for nearly minimal
`A+_0B`, with positive lower density and complementary-gap bounds.
It assumes connectedness. Theorem 1.3 gives square-root stability
for near-maximizing **strictly admissible** triples; the relaxed
function version is Theorem 1.6. Replacing a low-count output `C`
by its complement makes its mass approximately `m(A)+m(B)` here,
which approaches the boundary of strict admissibility. Thus the
fixed-margin triple theorem cannot be invoked with uniform constants
by this complement trick. The statements concern one spatial
pair/triple, not a continuum of time-dependent sections.

The inspected current records display no withdrawal. This bounded
check does not assert that no later result could improve these
interfaces. It is enough to identify an applicable existing theorem
and the extra deductions still needed.

## 2. A small elementary bridge that now makes the source applicable

Let `A,B,C` be subsets of a finite abelian group with probability
counting measure. Write `a=m(A),b=m(B),c=m(C)` and

    E=E_(u,w) 1_A(u)1_B(w)1_C(u+w).

Suppose `a+b+c>=1-nu`. For any `r>0`, Markov's inequality on
the output set gives

    m((A+_rB) intersection C)<=E/r,
    m(A+_rB)<=1-c+E/r<=a+b+nu+E/r.                (1)

Thus, if `d` is the constant in Griesmer's Theorem 1.1 for a
desired fixed precision, the explicit sufficient conditions

    nu<=d/2,   E<=d^2/2                            (2)

make (1), with `r=d`, satisfy that theorem's exact hypothesis.
The conclusion is approximation by **one critical pair**, uniformly
over the group size. This deduction uses only the displayed low
count and near-total-one masses, not an ordinary sumset bound.

The raw sampler produces indicator profiles, so it is legitimate
to apply this bridge to its sections. In a purely fractional
profile formulation the same Markov estimate survives for a
fractional output, but Griesmer's input-pair theorem is stated for
sets. No unproved fractional-input extension or independent
rounding is being substituted.

This is an elementary source-interface deduction, not the stronger
structural claim proposed in the next section.

## 3. Precise candidate for the next bounded check

Fix `0<c0<=1/12` and a desired absolute approximation error
`0<eps<c0/100`. The proposed statement is that there exist
constants `nu0>0`, `E0>0`, and an integer `D0`, depending only
on `c0,eps`, such that the following holds on every finite cyclic
group `G`.

For indicator sets `A,B,C`, assume

    m(A)>=c0,
    |m(B)-1/3|<=nu0,
    m(A)+m(B)<=3/4,
    m(A)+m(B)+m(C)>=1-nu0,
    E(1_A*1_B)1_C<=E0,
    A intersection(A+v)=B intersection(B+v)=empty,
    v in lcm(1,...,D0) G.                          (3)

The target conclusion is that `A,B` lie within total symmetric
difference `eps` of parallel cyclic progressions under a common
cyclic quotient character. The statement may allow the constants
to be implicit. No uniform effective function of the original
`eta`, no approximation of `C`, and no alignment across different
time triples is part of this candidate.

The intermediate centered regime with `m(X)` bounded away from
zero and from `1/3`, and `m(F)` near `1/3`, fits these size
conditions. Choose the orientation with the two constrained
roles `X,F` as inputs, and `Y` as output. The small summed model
count controls that orientation in the time average.

The following is a **proof plan to check**, not a theorem already
established in this audit.

First fix a classification tolerance `e2` sufficiently small in
terms of `c0,eps`. Theorem 1.15 gives an index bound `D2(e2)`.
Then choose a much finer approximation tolerance

    e1 << min(c0,eps,1/D2).

Apply Theorem 1.1 at tolerance `e1`, using (1)--(2), to obtain
an exact critical pair `S,T` near `A,B`. Apply Theorem 1.15
at tolerance `e2` to that pair; its ordinary-sumset hypothesis
is automatic. Set `D0>=D2`. This order of choices prevents a
circular demand of the form `e<1/D(e)`.

The exact shift constraints give the approximate constraints

    m(S intersection(S+v))<=2e1,
    m(T intersection(T+v))<=2e1.                   (4)

Since the returned subgroup has index at most `D0`, (3) gives
`v in K`. Three proposed branch checks then remain:

- In branch II, a nonempty nearly periodic part occupies almost
  all of at least one `K`-coset. Its overlap with its `v`-shift
  would be at least `(1-2e2)m(K)`, contradicting (4) if
  `e1` is small relative to `1/D2`. It is essential to use
  two constrained inputs: the theorem does not specify which
  input has a nonempty periodic part.
- In branch I, put `D=S+T`, enlarge to `D+K`, and use its
  complement as a third role. The enlargement costs at most
  `e2 m(K)`. Its exact stabilizer contains `K`; if proper,
  the near-`11/12` saturation argument below should contradict
  the retained near-total-one mass. Properness and every
  approximate-independence error must be checked quantitatively.
- In branch III, the `B`-like set lies in one `K`-coset. With
  `v in K`, exact independence of `B` limits its mass there
  to `m(K)/2`. Since `m(B)` is near `1/3`, small approximation
  error should force `m(K)>1/2`, hence `K=G`. A finite group
  cannot surject continuously onto the circle, leaving the
  cyclic-progression alternative. The final approximation
  errors must still be added explicitly.

At fixed `c0,eps`, the source constants are independent of `eta`
and the group size. For sufficiently small `eta`, the existing
`Q_eta` kills every index up to the fixed `D0`. This is why a
qualitative fixed-precision result can be useful as a discriminator.
Allowing `c0` or `eps` to shrink with `eta` is a separate problem;
the cited theorems supply no rate for that use.

## 4. The exact stabilizer observation and the remaining alignment gap

For a nonempty zero-count trio `U+V -> W` in a group of order
`M`, let `H=Stab(W-V)`. Kneser and disjointness give

    sum_role |role+H| <= M+|H|.

Suppose two roles, named `X,F`, are exactly `v`-independent and
`v in H`, with `|F|` near `M/3`. Writing `h=|H|`, their
actual sizes are at most half their saturations; the nonempty
`X` saturation has size at least `h`, while the `F` saturation
has size at least `2|F|`. Hence

    sum_role |role| <= M+h/2-|F|.

The stabilizer is proper because the excluded role is nonempty,
so `h<=M/2`; the right side is at most `11M/12+o(M)`.
This excludes a period containing the shift at near-total-one
mass, but does not bound the index of a period avoiding it.
Transferring this observation through (4) is part of the next
single-pair check, not silently included in the exact statement.

Even a proof of candidate (3) would give a character only for
one pair of section times. It would not show that the characters
chosen at different pairs agree, or control the interval centers.
The correct target must allow a skew character on `G times R`,
with a center that moves linearly in time. Root's exact critical
control uses `G=C_(12Q)`, `v=5Q`, and

    F(g,s)=1_(1/3,2/3)(g/(12Q)+s mod 1),

with centered intersection/union roles. Its masses are constant
`1/3,1/6,1/2`, and all three time counts vanish, yet no fixed
spatial support approximates `F` over the whole time interval.
It already has a common character with linear time drift.
Consequently fixed-support alignment is the wrong next target.

A useful subsequent discriminator, only after the single-pair
lemma is verified, would be uniqueness/coherence of the quotient
character when a common substantial section participates in many
good pairs. Then the remaining center relations would need a
quantitative restricted-domain additive stability argument.
Neither common-character coherence nor this spatial-to-time
passage follows from the scalar mass stability already proved.
