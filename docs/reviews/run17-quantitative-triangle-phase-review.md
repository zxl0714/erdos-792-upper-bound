# Independent review of the explicit triangle phase theorem

Run `2026-11-17T04-08-08-259Z-ba89c4b5`; 17 November 2026.
Reviewer: `/root/run17_long_gap`.

**Verdict: PASS at the stated same-phase scope.**

Reviewed frozen proof:
[run17-quantitative-triangle-phase-stability.md](../../proof/lemmas/quantitative-character-stability.md)

    SHA256 4304bdb068913c13ecedc5f24f12283e6248534a2a3cf93f3780f0a271203b54

For every measurable unimodular `f` on `(0,1]`, the proof supplies
some real `lambda` such that

    ||f-exp(2pi i lambda s)||_L1 <= 20000 exp(24) R,
    R=integral_(u,w>0,u+w<=1)|f(u)f(w)-f(u+w)|du dw.

No correction is required. The review checks the proof directly;
no numerical test or qualitative compactness theorem is used to
justify the explicit constant.

## 1. Uniform frequency and cutoff

For `h=1/4` and `R<=1/32=h^2/2`, sum-fiber integration gives
`||f0*f0||_1>=h^2/2`. Its support has length `2h`, hence its
squared L2 norm is at least `h^3/8`. With the stated non-unitary
Fourier convention, the factor `1/(2pi)` cancels when comparing
the fourth Fourier moment with the second. Thus
`sup|f0hat|>=h/(2sqrt(2))` is correct. Riemann--Lebesgue and
continuity justify attaining the positive supremum. Character
modulation preserves the exact same-phase residual.

The trapezoid has boundary values zero, `W^(1,1)` derivative,
`||phi'||_infinity=64`, `||phi'||_1=2`, and L1 difference
`h/16` from the interval indicator. Therefore
`|A|>=h/(2sqrt(2))-h/16>1/16` and `|B/A|<=32`.
An extra unit constant is correctly not inserted during modulation.

## 2. Derivative, signs and initial value

The zero extension of `g` is bounded. Convolution against the
reflected `W^(1,1)` cutoff is Lipschitz and hence absolutely
continuous. Its weak derivative is
`U'(x)=-integral phi'(y)g(x+y)dy`; the minus sign is correct.
The endpoint `x=0` is included in its continuous representative,
and the definition gives **exactly** `U(0)=A` without requiring a
value of `g(0)` or continuity of `g`.

For `0<x<3/4`, all `0<y<1/4` input pairs belong to the original
triangle. Tonelli applied to the absolute residual bounds the two
errors by `R` and `64R`. With `kappa=B/A`,
`U'-kappa U=e1-kappa e0`, so its L1 norm is at most `96R`.
The argument uses the same function at both inputs and the output;
it does not prove the more general three-function Pexider theorem.

## 3. ODE and unimodularity

Variation of constants from zero gives a uniform error at most
`96 exp(24)R` on `[0,3/4]`, because `|kappa|(3/4)<=24`.
After division by `|A|>1/16` and integration over this interval,
the L1 error from `g` to `exp(kappa s)` is at most

    K R,  K=16+1152 exp(24).

The coefficient `1152` includes the factor `3/4`; it is not a
pointwise-to-L1 normalization omission. For `b=Im(kappa)`,

    |exp(kappa s)-exp(i b s)|
      =||exp(kappa s)|-1|
      <=|exp(kappa s)-g(s)|.

This removes the real part directly in L1. No separate estimate
for `Re(kappa)` or fitting of a free constant phase is needed.
The resulting local error `k<=2KR` is valid even when `R=0`.

## 4. Full-interval propagation and constants

On the truncated square with input times less than `L=3/4`,
the sum-fiber length is `z` up to `L` and `2L-z` thereafter.
It is at least `1/4` on `[1/4,1]`, including the entire output
range near one. Each local input error is charged over partner
measure at most `L`, giving weighted output error at most
`R+2Lk`. The omitted interval `(0,1/4)` is already controlled
by the local ODE estimate. Therefore the full error is at most

    k+4(R+3k/2)=4R+7k
      <=[228+16128 exp(24)]R<20000 exp(24)R.

For `R>1/32`, the trivial error bound two is at most `64R`.
Thus all nonnegative residuals are covered, with no hidden small-
error condition. Undoing modulation gives precisely
`lambda=(xi+b)/(2pi)`. Null-set modifications are harmless because
all three triangle marginals are absolutely continuous.

## 5. Scope and dependency consequence

The result is uniform over arbitrary measurable phases and arbitrary
real slopes. It establishes a linear modulus for the **unweighted**
same-phase triangle residual. The optional balanced-weight conversion
follows from the previously checked bound
`R<=(4/3)Rmu^(2/3)` for `0<Rmu<1`; it is not used in the main proof.

The elementary argument is self-contained apart from standard
Fourier Plancherel, Riemann--Lebesgue, and the fundamental theorem
for absolutely continuous functions. No publication-priority claim
is assessed or inferred. The result removes the phase-modulus gap
in the saved qualitative composition; it does not quantify the
finite-cyclic spatial inverse theorem or resolve the original
constant-factor asymptotic problem.
