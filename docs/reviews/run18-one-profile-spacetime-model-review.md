# Independent review of the anchor-free one-profile model

Run `2026-11-17T12-05-38-564Z-905bb2c7`; 17 November 2026.

**Verdict: PASS at the stated fixed-precision structural scope.**
I independently checked the frozen
[one-profile space-time theorem](../../proof/lemmas/interval-structure-of-a-cyclic-profile.md),
SHA256

```text
aa190cab861a87ea845587971c354e0ccfa3892029231e3055eca43118232b9c
```

Its assumptions are only the displayed indicator profile, exact
sectionwise v-independence, `v in Q_eta G`, mean density at least
one third, and the small full time Schur count. No centered
union/intersection, overlap anchor, auxiliary output role, or
three-role mass identity is used implicitly.

The conclusion is a fixed-precision approximation by one exact
space-time character model, with quotient order `n>8/eta` and weak
shift displacement greater than `5/16`. It does not by itself
establish a new original integer upper bound or the constant-factor
order in PROBLEM.md.

## 1. Source interfaces and order of choices

I read the saved single-pair cyclic stability theorem, the character
uniqueness proof, and the common-character propagation proof directly.
Their existing independent reviews verify the published Griesmer
input and its uniform finite-group scope. The new proof selects
the fixed scalar precision, character uniqueness order, and pair
precision before obtaining `D0,nu0,E0`; it then chooses beta.
There is no requirement that a precision dominate its own unknown
source-dependent order bound.

The pair precision is strictly below the source restriction:
`e_pair<=1/2400<1/1200=(1/12)/100`. The propagation density window
is `[1/4,3/4]`, and its uniqueness condition holds because
`2e_pair<=b0/2<b0`. All source parameters depend only on the fixed
epsilon, not on eta or the group size.

The scalar input was authored by this reviewer but independently
checked in the [root scalar review](run18-one-profile-scalar-review.md).
I checked its use here, including its normalization, rather than
treating its authorship as verification. I independently reviewed
the new full-count phase interface in
[this separate report](run18-one-profile-circle-phase-interface-review.md),
against its frozen SHA
`0abe5a49ff2edfc37416a8a35a45862f516c10194a1463615171b2c797647825`.

## 2. Scalar flattening gives the correct typical-pair premise

With `Cr=65536`, the exact identity
`12288/(6Cr)=1/32` gives

    M<=9000 sqrt(33/32) beta<10000 beta<=r.

The weighted time probability measure has three marginal densities
summing to three. Since the same function f occurs in all positions,
the three mass exceptions together have measure at most `3M/ell`.
The full count exception is at most `3I/E0`. The two beta choices
therefore give respectively `Delta_star/2` and `Delta_star/2`;
no extra factor for a different output profile is missing.

On every remaining pair, the three actual indicator sets have
masses within ell of one third. Thus the first input mass is above
`1/12`, the second differs from one third by at most nu0, the input
sum is below `3/4`, and the total is at least `1-nu0`, using
`ell<=nu0/4` and `ell<=1/100`. Their actual cross count is at most
E0, and both inputs are exactly v-independent. The lcm hypothesis
holds since `eta<=8/D0` implies `floor(8/eta)>=D0`.

These are every hypothesis of the single-pair theorem. The resulting
two approximating intervals have density within
`1/100+1/2400` of one third, safely inside `[1/4,3/4]`.
Neither an anchor range nor a centered mass identity enters this
deduction. Coincidence of the two input sets is permitted by the
source theorem and the ordered count convention.

## 3. Propagation and the actual quotient order

The two-anchor propagation theorem permits its two input families
to be identical. Choosing one of its output families gives a single
character and measurable interval models outside a time exception
of measure at most `2t_prop`. Taking empty intervals on that
exception proves `delta_model<=e_pair+2t_prop<=3r/4`.
Its selected character is one of the pair characters and hence
retains order greater than D0, even though only the smaller M0 is
required by the abstract propagation statement. The saved Fubini
and finite-choice argument handles null sets and sign reversals.

The stronger order argument is exact. If the integer n were at
most `8/eta`, it would divide Q_eta. Membership `v in Q_eta G`
then forces `chi(v)=0`, making every approximating interval
preimage invariant under v. For such a set P, exact independence
gives `2m(h_s intersection P)<=m(P)`, hence

    m(h_s triangle P)>=f(s).

Integrating contradicts `delta_model<r<1/3<=d(h)`. This proves
`n>8/eta` and `1/n<eta/8`; it does not assume a positive lower
bound on the mass at each individual time. Empty exceptional
models are invariant as required, and the argument does not use
shift independence of the final exact character model.

## 4. The full-count phase budget

The phase interface applies because h is an indicator profile,
the approximation is by full preimages of one character, and
the mass error M is already controlled. Its exact-third error is
`a_circle=2delta_model+M+2/n`. The bounds above and
`beta<=r/10000` imply the stated conservative inequalities

    a_circle<4r,
    I+2a_circle+4/n<11r,
    4/n<2r.

The interface uses the full original self-count I. Its finite-circle
conversion replaces the actual indicators first, with total error
at most `2a_circle`, and only then couples the finite quotient to
the circle. No independent-fiber interpolation of h is assumed.

The final error is at most

    6r+K_phase sqrt(11r)
       <=(6/100+sqrt(11)/10)epsilon<epsilon.

The displacement bound follows from original exact v-independence:
`theta>=1/3-2a_circle-2/n>1/3-9r>=1/3-epsilon/10`.
For the stipulated epsilon this exceeds `5/16`. No strict bound
above one third is claimed, and the proof correctly does not
deduce exact v-independence of the model.

The phase sign agrees with the model in the statement. The circle
arc at time s is `I0+lambda s`, so its preimage condition is
`chi(g)-lambda s in I0`. There is no free constant phase left
after the same-phase theorem. The half-open arc I0 is exactly
sum-free, and this expression is an additive character on
`G x R`, proving the model's exact sum-freeness, including
coincident inputs.

## Scope and outcome

Every choice is uniform over finite cyclic groups, with no hidden
group-order onset. Small-order inconsistent cases are legitimately
excluded by the deductions. The proof is for indicator profiles;
it does not extend the inverse theorem to fractional sections.
The dependence of beta on epsilon remains implicit, so varying
epsilon with eta would need an additional quantitative argument.

No mathematical gap or required correction was found. No new
computation or edit to the frozen theorem was needed. The original
integer return, unfolding, original-count density control, and
weight/container transfer still require their separate checks.
