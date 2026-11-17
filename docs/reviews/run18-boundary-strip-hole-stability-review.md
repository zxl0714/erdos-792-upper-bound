# Independent review of boundary-strip hole stability

Run `2026-11-17T12-05-38-564Z-905bb2c7`; 17 November 2026.
Reviewer: `run17_occupancy_trial`. Scoped RESEARCH review.

**Verdict: PASS at the stated product-group, pointwise core/support
scope.** The proof handles arbitrary holes and correlations between
finite-group fibers. No correction is needed. It does not yet handle
coarse L1 core filling, an arbitrary finite cyclic extension, or an
original-problem asymptotic improvement.

Reviewed [frozen proof](../../proof/lemmas/stability-near-the-middle-third.md), SHA256

    a40aa9ad6f3448fa5d119d9d31a3e02f7409e70caa9aeb1b79e96dde21e20587.

## 1. Halfline inclusion--exclusion and normalization

For fixed `s`, choose the truncation size `M` larger than the supports
of all step-function deviations and the relevant translates, and large
enough that simultaneous nonzero factors in `L1(u)L2(s-u)` occur only
inside `[-M,M]`. The two integrals there are precisely `M+l_1`
and `M+s+l_2`: the shifted positive step in the second integral
occupies length `M+s`. The elementary inequality
`xy>=x+y-1` on `[0,1]^2` therefore gives
`L1*L2(s)>=s+l_1+l_2`. Taking the maximum with zero proves (4).
No bounded-support claim for either whole halfline function is needed.

The output replacement has the same signed mass as the original
right profile, so `integral(R-R0)=0`. Subtracting the weight value
at `r` makes the integrand nonnegative on each side of `r`.
All differences have bounded support, and the chosen ramp weight
vanishes sufficiently far left; the integrals used are finite. This
proves the halfline lower bound `e>=S_+^2/2` with the stated factor.

For the hole bound, the right-side mass above `r` equals the deficit
below `r`. Among densities between zero and one with that fixed
right-side mass, the increasing ramp has minimum integral on an
initial interval of the same length. Thus

    e>=integral_0^h (u+S)_+du >=(h-S_-)_+^2/2.

The implication `h<=S_-+sqrt(2e)` correctly includes `h<=S_-`.
Only a lower envelope of the actual convolution is used; the proof
does not assume that convolution itself is monotone.

## 2. Exact endpoint localization

I checked both directions of the claimed equality of the original
count with the two halfline edge counts.

- Without wrapping, the real sum must lie between `2/3-2d` and
  `2/3+d`. Each input lies in `[1/3-d,1/3+2d]`; its left offset
  is in `[-d,2d]`, and the output right offset is in `[-2d,d]`.
  The continued value one in the offset ranges beyond the boundary
  strips is justified by the actual filled core, since `3d<=1/3`.
  Conversely, nonzero halfline factors force exactly these bounds.
- With wrapping, the real sum lies between `4/3-d` and `4/3+2d`.
  Each input lies in `[2/3-2d,2/3+d]`; right offsets are in
  `[-2d,d]` and the output left offset is in `[-d,2d]`. Again
  the halfline continuation agrees with the filled core, and its
  nonzero integrand cannot introduce an extra triple.

All real sums lie in `(0,2)`, so these exhaust the possible residues
in the output support. The direct and wrapped ranges are disjoint;
the input bands are also disjoint because `4d<1/3`. Both strict
separations hold under the stated `d<=1/24`. Translations and the
reflection have Jacobian one, so `T(F)=T_L+T_R` has no factor two,
triangle-area factor, or circle normalization correction.

Endpoint conventions and null modifications do not affect these
integrals. Since `K` is finite, fiberwise exceptional null sets can
all be discarded; their input and sum pullbacks are still null.

## 3. Reflection, signed masses and conditional averages

The signed endpoint masses lie in `[-d,d]`, and direct integration
over the two strips gives exactly `|F_k|=1/3+l_k+r_k`.
Reflecting a right profile gives a left profile with signed mass
`r_k`; reflecting the left output gives a right profile with signed
mass `l_(k+l)`. Thus the reflected count uses exactly `S'`, and its
output-hole quantity is the defined `h_L(k+l)`. No sign reverses in
these signed-mass integrals after the change of variables.

For uniform pairs in `K^2`, both the sum and each input have uniform
marginals. Consequently

    E S+E S'=3m,
    E_l S(k,l)=l_k+m,
    E_l S'(k,l)=r_k+m.

These identities require only the translation bijection on `K`.
They do not replace the actual joint fiber occupancies by independent
conditional densities. Each halfline inequality is applied to a fixed
triple first, as required.

## 4. Complete constant ledger

From the two positive-part square estimates,

    P<=sqrt(2)(sqrt(T_L)+sqrt(T_R))<=2sqrt(T).

The mean assumption gives `Q=P-3m<=P`, with `Q>=0`. The averaged
hole inequality therefore gives

    E_K(h_L+h_R)<=Q+sqrt(2)(sqrt(T_L)+sqrt(T_R))
                      <=4sqrt(T).

The factor two converting each hole mass to symmetric difference
is retained, so the total distance to mass-preserving interval fibers
is at most `8sqrt(T)`. Also `3m=P-Q<=2sqrt(T)`, which is exactly
`T>=9m^2/4` for `m>=0`.

Conditional Jensen applies to `x -> (x_+)^2`. Since `m>=0`, it
bounds the positive parts of `l_k,r_k` by the corresponding positive
parts after adding `m`. Hence

    P0=E(l_k)_++E(r_k)_+<=2sqrt(T),
    E(|l_k|+|r_k|)=2P0-m<=4sqrt(T).

The intervals with endpoints `1/3-l_k` and `2/3+r_k` are proper
and share the prescribed filled core. Their differences from the
actual fibers are confined to the disjoint boundary strips, giving
the exact identities `|F_k triangle I_k|=2h_L(k)+2h_R(k)` and
`|I_k triangle I|=|l_k|+|r_k|`. Thus the final constant is correctly
`8+4=12`.

## 5. Scope retained

The conclusion uses the ordinary normalized Schur count of `F`.
One centered-role count alone is not silently substituted for it.
The support/core premise is pointwise in every fiber and allows
arbitrary holes only within the stated strips. All estimates are
uniform in the size and torsion of the finite abelian group, including
the trivial group. None of this asserts that general small L1 error
implies the support/core premise or controls a cyclic carry.

The proof is self-contained measure geometry and elementary
probability. No new theorem search or mathematical computation was
needed for this review, and the frozen proof was left unchanged.
