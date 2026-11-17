# Independent review: two-anchor common-character propagation

Run `2026-11-17T04-08-08-259Z-ba89c4b5`; 17 November 2026.

**Verdict: PASS as a conditional propagation lemma.** The reviewed
proof is [run17-common-character-propagation.md](../../proof/lemmas/common-character-for-interval-slices.md),
frozen SHA256

    5174097763d0d4a526e169955a2b30aac6ea8ebd707f89ec7e9597ec4f750669.

I independently checked the finite model choices, exceptional-slice
handling, weighted-to-planar conversion, anchor selection, the two
uniqueness comparisons, and the stated exceptional-time constants.
No substantive gap was found. The result is conditional on the
typical-pair structural premise and does not prove additive phase
alignment.

## 1. Structural and uniqueness interfaces

Each good pair must have parallel full-preimage cyclic intervals
approximating its two input sections, each with error at most `eps`,
each density in `[c,1-c]`, and a defining character of order greater
than the common `N0`. These are explicit hypotheses; the proof does
not obtain them merely from a small averaged count.

The hypothesis (U) is used at distance at most `2eps`. The
separately [reviewed uniqueness lemma](run17-cyclic-character-uniqueness-review.md)
does supply (U) when `2eps<b0=sin(pi*c)/(2pi)` and its stated
order threshold is used. In particular `eps<=b0/4` suffices.
The strict inequality in that source is therefore respected even
though individual errors in this note are non-strict. The conclusion
of uniqueness concerns the actual defining characters up to sign,
which is exactly what propagation needs.

## 2. Measurability and pointwise models

There are finitely many characters and cyclic interval lifts for a
fixed finite group. A finite ordered search for the first admissible
triple therefore gives measurable model data. Intersecting `Omega`
with the finite union of its admissibility sets removes only a
`mu`-null set and makes the model assertion pointwise on the retained
set. The positive density `3(s+t)` in the interior makes this removed
set planar null as well.

The explicit use of Fubini-good row and column coordinates is
appropriate for completed Lebesgue measurability: it avoids assuming
that every slice of an arbitrary planar measurable set is measurable.
After restricting to those full-measure coordinate sets, the bad-slice
lengths and the final exception sets are measurable. Along each
selected slice the finite model tests depend on one measurable
family and one fixed section, so the chosen models are measurable
there too. Initial null time sets can be removed without changing
the weighted exceptional measure.

## 3. Anchor geometry and constants

The weight `3(s+t)` integrates to one on the sum triangle. For
`I=[tau/4,tau/2]` and `T=(0,1-tau)`, both rectangles `T x I`
and `I x T` lie inside the triangle. On either, the weight is at
least `3tau/4`; hence each planar bad measure is at most
`4delta/(3tau)`.

Dividing by `|I|=tau/4` gives average bad-slice length at most
`16delta/(3tau^2)`. Markov at four times this bound leaves at
least three quarters of each anchor interval, namely
`3tau/16`, with bad length at most

    H=64delta/(3tau^2).

When `delta=0`, the nonnegative slice integrals vanish almost
everywhere, giving the same conclusion without dividing by zero.

The product of the two good anchor sets has measure at least
`9tau^2/256`. Since `I subset T`, the bad measure in `I^2`
is bounded by `4delta/(3tau)<=tau^2/75`. The strict comparison
`9/256>1/75` guarantees a good anchor pair in that product.
Both anchor coordinates thus have good measurable slices, and the
anchor pair itself has valid pointwise model data.

## 4. Character comparisons and final exceptions

For any good point on the chosen column, its model of the same
fixed section `B_v0` is within `2eps` of the anchor-pair model.
Both models retain the density and order hypotheses, so (U)
identifies their characters up to sign. Reflection of a cyclic
interval converts a lift for `-chi0` to a lift for `chi0` without
changing the set, its density, or its approximation error.

The row argument separately compares the two models of `A_u0`
and gives the same character for the second family. Each argument
uses the sum of both approximation errors. It does not presume
that the initially selected signs agree.

For each family, the omitted terminal time interval has measure
`tau`; its chosen slice contributes at most `H` more. Thus each
exceptional-time set has measure at most `tau+H`. The hypothesis
`delta<=tau^3/100` gives `H<=64tau/300<tau`, proving the
displayed bound by `2tau`. This is a bound for each exception
set, not a bound for their union. The nonexceptional statements
are pointwise after the preceding measurable choices, as claimed.

## Scope and verification method

The result establishes one common spatial character for most
sections of each input family, conditional on good parallel models
for most time pairs. It preserves arbitrary measurable, potentially
jumping interval phases. It neither relates these phases additively
nor identifies an output-role model, and it does not turn the
single-pair theorem alone into a typical-pair assertion. No effective
dependence on the original surplus or improved original bound is
inferred.

All checks above are elementary finite selection, Fubini, Markov,
and the separately verified character-uniqueness interface. No new
external mathematical result, numerical experiment, or finite
search was needed. The frozen proof file was not edited.
