# Independent review: circle count and centered phase defect

Run `2026-11-17T04-08-08-259Z-ba89c4b5`; 17 November 2026.

**Verdict: PASS for the exact continuous-circle model.** The
reviewed proof is
[run17-circle-centered-phase-defect.md](../../proof/lemmas/circle-interval-triple-count.md),
frozen SHA256

    24d438ea8f942e52f18fff42582262c9453b75a8c0d37cdef9cbb41d9f102362.

I independently checked the interval centers and lengths, count
normalization, all wrap cases, monotonicity, and the weighted
integrated consequence. The pointwise lower bound and the exact
local formula are correct. No proof correction was needed.

## 1. Geometry and normalization

With `h=1/2-theta`, the two shifted `F` arcs have centers
at `p(s)-h` and `p(s)+h`, where `p(s)=c(s)+1/2`.
Their length is `1/3`, and the assumptions give `0<h<1/6`.
They therefore have intersection length `a=1/3-2h` and union
length `2/3-a`, both centered at `p(s)`.

For the input pair `X_u,F_w`, put `b=1/3` and `s=a+b`.
Its sum support has center `p(u)+p(w)-1/2` and length `s<1`.
Its complement has center `p(u)+p(w)` and exactly the length
of `Y_z`. Thus displacement of the output from that complement
is precisely the signed phase defect in the statement, modulo one.

After translating the sum support to `[0,s]`, the convolution
density is `C(x)=min(x,a,s-x)` there and zero outside. This
is the length of the allowable first-input interval for the fixed
sum, because `a<=b`. Its integral is `ab`, with no factor from
unordered pairs. There is no overlap of integer translates of the
sum support. All endpoint conventions differ only on null sets for
these Haar counts.

## 2. Exact leakage at every circular distance

The output count is the convolution mass in
`S\(S+delta)`. Reflection about the center of `S` changes
`delta` to `-delta` and preserves the density. Periodicity then
reduces the count to `d=||delta||` in `[0,1/2]`.

Let `H(t)=integral_0^t C(x)dx`, with `C` extended by zero
outside `[0,s]`. If `d+s<=1`, the lost part of the support is
`[0,min(d,s)]`, giving `H(d)`. If `d+s>1`, then
`s>1-d>=d`, so the shifted support wraps and leaves precisely
the interval `(d+s-1,d)` inside `S`. Therefore in all cases

    E_a(d)=H(d)-H((d+s-1)_+).

This checks the formula even when the nonwrapping shift exceeds
the entire support length.

In a wrapping case, set `L=d+s-1`. Then `0<L<d<s` and
the derivative is `C(d)-C(L)`. One has `C(L)<=L` and
`C(L)<=a`, while `d>=L` and `s-d>=L` because `d<=1/2`.
Each of the three entries defining `C(d)` is consequently at
least `C(L)`. The derivative is nonnegative. Outside the wrapping
case it is simply `C(d)>=0`. Absolute continuity of the displayed
formula justifies global monotonicity, including the transition
points. No phase distance is omitted from this argument.

## 3. Quadratic and integrated bounds

For `d<=a`, one has `d+s<=2a+b<=1-2c0<1` and
`C(x)=x` for `0<=x<=d`. Hence the exact count is `d^2/2`.
For `d>=a`, monotonicity gives at least `a^2/2`. This proves
the first lower bound in (3).

Since `a,d<=1/2`, the inequality `min(a,d)>=2ad` is valid
in either order of `a,d`. Thus the count is at least
`2a^2d^2>=2c0^2d^2`. Positivity of `a` then gives the
claimed equivalence between zero count and zero phase defect.

For measurable phases, multiply this pointwise bound by the
triangle weight `3(u+w)<=3` and integrate. The normalized measure
`mu` has total mass one, giving exactly

    E_mu ||p(u)+p(w)-p(u+w)||^2 <= 3I/(2c0^2).

The stated exceptional-pair bound follows by Markov. No choice of
a real scalar lift of the phase is made or required.

## Scope

The proof assumes exact arc width `1/3`, exact same-time
centering, a fixed displacement, and a positive margin for both
ends of the centered-overlap range. The separately reviewed
[finite-to-circle bridge](run17-finite-circle-centered-transfer-review.md)
charges the appropriate approximation and grid errors; this note
does not silently absorb them. Its conclusion is a small circle-valued
additive defect, not approximation by a linear phase. Such stability
remains a separate theorem with its own hypotheses.

No numerical calculation, finite search, or additional external
result was needed. The frozen file remained unchanged. No
original-problem upper bound is established by this review.
