# Review of the small-anchor and near-full origin components

Run `2026-11-17T04-08-08-259Z-ba89c4b5`; 17 November 2026.
Reviewer: `run17_long_gap`. **PASS at both stated, separate scopes.**

Reviewed frozen files:

- [Small-anchor origin exclusion](../ARCHIVE_INDEX.md#record-023),
  SHA256 `d63024640f8324025bfbb43df1cd94637c04447332ce7b608466c2e748c5861b`.
- [Near-full two-step return](../ARCHIVE_INDEX.md#record-098),
  SHA256 `0c330c76002cb9d5c324ed1a06dfb599eacf0d6203195257c3f5cdba91238c26`.

No correction is required. These are complementary conditional
exclusions, not a uniform origin theorem or an improvement of the
retained general original-problem upper bound. In particular their
union leaves an intermediate intersection regime.

This review checks composition and the new unmasked floor identity.
I authored the [two-independent-role component](../../proof/lemmas/shift-exclusion-for-three-sets.md),
so this review does **not** supply its independent verification.
That component must retain its separate independent review. The other
return, sampler and singleton inputs already have linked independent
reviews; no new external theorem or numerical computation is used here.

The separate [two-role component review](../../docs/reviews/run17-two-independent-role-exclusion-review.md)
has now returned PASS against the same frozen component hash; its
review SHA256 is `a861045fea95f233fb22c0ac9c670ea4bdea49bf28aa41884ecc8485ac0ba11c`.

## 1. Dependencies and exact interfaces

The versions checked against the small-anchor composition are:

| Component | SHA256 |
|---|---|
| [Asymmetric return](../ARCHIVE_INDEX.md#record-022) | `8c4d04f569b2502ae22f13b08efa108f4812e04302629dbfe9d4165c946f0e1b` |
| [Centered raw sampler](../../proof/lemmas/sampling-the-shifted-sets.md) | `d6be73cae8e942c3e5a999805b6962bb614767c86775a899c63745ffabe009b7` |
| [Two-role/time component](../../proof/lemmas/shift-exclusion-for-three-sets.md) | `a46d7313781fdbcd08dbf97e3ac6b9a1e3c22bc41fcd857d9842a149dd9c912b` |

For the near-full composition I checked Section 4 of the
[singleton/time theorem](../ARCHIVE_INDEX.md#record-086),
SHA256 `745c9d8f9295e0290a0ce9d92ac24f7e89aab9e3ba7433eb71d78757580e02cb`,
and the explicitly repeated defect argument. The singleton theorem
allows a shift of order two and has exactly the displayed count
threshold `eta^2/(12Cr)` and density threshold `1/3+3eta/4`.
No replacement of a summed three-role count by an average is made.

## 2. Small full intersection and the uniform candidate length

For the centered roles, `X-t=F intersection(F-2t)` exactly, so
`x=|X|` is the full intersection size. The untrimmed union has at
most `2t` points outside `[N]`, and the trimmed union is disjoint
from `F`. Hence

    x >= 3|F|-N-2t
      >= (21/8)eta N-(1/8)eta N
       = (5/2)eta N.

Here the last inequality uses `t<=eta N/16`, which follows from
the much smaller radius in the statement. In particular the return
lemma's sampling set is nonempty and lies in `[N]`. Both `X` and
`F` are `t`-independent; `Y` is not assumed to be so.

The composition uses a candidate length larger than the one printed
in the headline statement of the asymmetric return. Its use is valid
directly from that proof: for **any** integer `L` with `btL<=N`,
`|X+bt{0,...,L-1}|<=2N`. Here

    2N/x <= 4/(5eta) < 2/eta,
    L=ceil(4(2/eta)^k) >= 4(2N/x)^k.

The average good fiber therefore still has at least two elements.
Increasing `L` has not been justified by monotonicity alone: the
simultaneously checked candidate-window bound is the necessary step.
Eligibility gives `btL<=eta N/16`, and the resulting return satisfies

    bt <= q <= bt(L-1) < btL,
    q/N <= eta/16,   t/q <= 1/b <= eta/16.

Thus all raw sampler hypotheses hold for every eligible positive
integer `t`, with no separate minimum-`N` or limit argument. Sampling
with replacement allows the stated `k` even if `k>|X|`.

## 3. Restricted counts, section errors and the exact budget

The three ordinary role counts each inject, for each fixed union
sign, into ordinary triples of `F`. Consequently `A(0)<=6T_0(F)`.
The asymmetric lemma controls their **sum** with one error term:

    A(q)<=2A(0)+96xN/k.

The three raw model integrals consequently satisfy

    J <= [A(0)+A(q)]/N^2
      <= 18T_0(F)/N^2 + 96x/(kN).

There is no factor three on the last error and no additive count
loss from the common boundary mask. The parameter choices give

    18/(432Cr)=1/(24Cr),
    96 B eta / ceil(2304Cr B/eta) <= eta^2/(24Cr),

so `J<=eta^2/(12Cr)`, exactly the summed-count threshold.

The density loss is at most `eta/16+eta/16`, changing
`1/3+7eta/8` to `1/3+3eta/4`. The two exact shift exclusions
give shift tolerance zero. The section identities give
`rho=2t/q<=eta/8`; `x(s)<=f(s)+t/q` is stronger than the
needed `x(s)<=f(s)+rho`. Also `f<=1/2` and `f+y<=1`
are stronger than the component's relaxed inequalities. Thus
every hypothesis of that time-selection theorem is supplied.

Its returned subgroup has integer index `d<=4/eta`, so `d`
divides `Q_eta=lcm(1,...,floor(8/eta))`. The quotient of `C_q`
has order `d`, implying `Q_eta C_q` is contained in the subgroup.
The integer divisibility `Q_eta|t` independently implies
`t mod q` lies in that image. No coprimality of `q` and `Q_eta`
is required. This contradicts avoidance of that residue, including
the possible zero-residue case.

For fixed `B`, the ceilings give `k=O_B(eta^-1)`,
`log L<=log 5+k log(2/eta)`, and hence the stated
`O_B(eta^-1 log(1/eta))` radius cost. The factorial upper bound
for the lcm is sufficient at the stated precision.

## 4. The original-set two-scale correlation conclusion

If `r_A(t)<=eta N/8`, the specified deletion

    F={a in A:a+t notin A}

removes exactly `r_A(t)` points, is `t`-independent, retains the
required density, and cannot increase `T_0`. Moreover
`r_F(2t)<=r_A(2t)` by inclusion. Thus failure of both strict
alternatives in the displayed dichotomy contradicts the theorem.
Neither `t in A` nor `2t in A` is used or obtained.

The note correctly identifies why the second alternative cannot
be charged directly to `T_0(A)=sum_(t in A) r_A(t)`:
doubling the index does not preserve membership in `A`. The
dichotomy therefore does not supply the unconditional origin-mass
estimate needed for the global weight recursion.

## 5. The unmasked near-full model

With `q=2t`, the largest representative at most `Ns` in the
opposite residue is `n_r(s)+t` when the deficit is at least `t`,
and `n_r(s)-t` otherwise. This is valid on the equality boundary
and for every integer representative of the residue. Exact
`t`-exclusion therefore gives `h(r,s)+h(r+t,s)<=1` without
any deletion. In particular the model does not incur a `t/q=1/2`
mass loss.

An integer sample cell has full length `q/N` when its integer
is at most `N-q`. There are at most `q` exceptional terminal
integers, so probability residue normalization gives
`d(h)>=|F|/N-q/N`. Values outside `[N]` vanish. Isolated cell
endpoints affect none of the integrals.

The output sample is exactly either the input sum or the input
sum plus `q`. After dropping the triangle constraint each integer
input pair occupies area at most `q^2/N^2` in its single residue
pair. Dividing by `q^2` yields

    I(h)<=[T_0(F)+T_q(F)]/N^2.

This is an inequality for ordered pairs, with all repeated inputs
retained. It has no finite-size or boundary count error.

The two-input defect proof is valid even when the two good classes
overlap: pairs with `x+q in F` inject into ordinary triples, as do
pairs with `y+q in F`; every remaining pair lies in
`(F\(F-q))^2`. Thus

    T_q(F)<=2T_0(F)+(|F|-r_F(q))^2,
    I(h)<=[3T_0(F)+D^2]/N^2.

This robust argument uses no exact sum-freeness assumption.

## 6. Near-full constants and its separate scope

The hypothesis `t<=eta N/16` ensures `q<=N` and loses at most
`eta/8` in density. If `D<=eta N/(8sqrt(Cr))`, the count bound is

    I(h)<=(1/16+1/64)eta^2/Cr
         =(5/64)eta^2/Cr < eta^2/(12Cr).

The singleton/time theorem therefore applies on `C_(2t)` with
the shift `t mod 2t`, including its order-two case. Its lcm cutoff
`4/eta` divides the assumed cutoff `8/eta`, so the same image
argument gives the contradiction. This proves the strict lower
bound on the defect for every eligible `N,t`.

The near-full note has the weaker count requirement
`T_0<=eta^2N^2/(48Cr)` and a much larger allowable radius
`eta/16`; the small-anchor note uses `/432Cr` and its explicit
exponential radius. Both can therefore be applied under the
smaller common parameter regime, but their conclusions still
leave all intermediate full-intersection sizes untreated.
No complete original-problem candidate follows from this review.
