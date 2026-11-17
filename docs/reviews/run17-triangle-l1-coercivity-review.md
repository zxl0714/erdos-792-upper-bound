# Independent review of the two triangle functional inequalities

Run 2026-11-17T04-08-08-259Z-ba89c4b5; 17 November 2026.
Scoped analytic review in RESEARCH. No original-problem completion.

**Verdict: PASS.** Reviewed
[run17-triangle-l1-coercivity.md](../../proof/lemmas/additive-equations-on-a-triangle.md),
frozen SHA256

    563d8c9adb35244d40283fb8992ccf830ca56a1edf6175cd2c5d69de93d0071b

Both claimed inequalities hold for the full stated L1 classes:
\[
 \|g\|_1\le4458\|g(u)+g(v)+g(u+v)\|_{L^1(\mu)},
 \qquad
 \|b-\bar b\|_1\le132\,\mathbb E_\mu\mathcal R_b,
\]
where dmu=3(u+v)du dv on the positive time triangle.
The first allows complex-valued g; the range statement uses real b.
No boundedness, continuity, finite discretization, or endpoint
regularity is silently required.

## 1. Normalization and interior cancellation

The measure is a probability law. Its two input marginals and
sum-time marginal add to 3ds, so the displayed integral identity
and the bound R<=3||g||_1 are correct. In particular all required
weighted integrals exist.

Expanding the four residuals in equation (3) cancels every term
except 2g(u)-2g(v). For K=[1/4,2/3], J=[1/4,1/3], and
H=[1/16,1/8], all transformed inputs are positive. The first
and third residual sums lie between 3/8 and 15/16; the other
two sums are u and v. They are therefore all in the time triangle
with weight at least 3/4.

The changes to the two residual coordinates have absolute
Jacobian one. Their unused-variable fiber lengths are, in order,
at most 1/16, 1/12, 1/16, and 5/12. Multiplication by 4/3
therefore gives the four bounds R/12, R/9, R/12, and 5R/9.
These sum to 5R/6. Dividing by 2|H|=1/8 gives the interior
pair-difference bound 20R/3. Averaging over J then gives
\[
                         \int_K|g-c|\le80R.
\]
This uses integration over three variables, not an estimate of
a two-variable L1 residual on any fixed line.

## 2. Constant and endpoint ledger

On J squared, u,v,u+v all lie in K and the residual weight is
at least 3/2. Each deviation term from c has multiplicity at
most |J|=1/12, including the output term because the convolution
of the two interval indicators has that maximum. Thus
3|c||J|^2<=2R/3+20R, giving |c|<=992R and
\[
                         G_K\le(1480/3)R.
\]
All these steps use only the triangle inequality and remain
valid for complex g and its complex average c.

For the left endpoint interval, v in [1/3,5/12] makes both v
and t+v belong to K. The residual weight is at least one.
The partner and output multiplicities are respectively at most
1/4 and 1/12. Dividing by the averaging length 1/12 therefore
gives exactly 12R+4G_K.

For the right endpoint interval, the moving averaging band has
length 1/12 and both inputs lie in [7/24,13/24], a subset of K.
The map (t,u) to (u,t-u) has absolute Jacobian one and weight
at least two. Each input has a t-fiber of length at most 1/6,
giving exactly 6R+4G_K after averaging.

The three time pieces cover (0,1) up to endpoints. Adding their
bounds gives
\[
             18R+9G_K\le18R+9(1480R/3)=4458R<4500R.
\]
Null sets remain null under the stated full-rank changes of
variables and Fubini, so the proof applies to arbitrary L1
equivalence classes.

## 3. Range Poincare inequality

On K times J the range dominates |b(u)-b(v)| and the weight
is at least 3/2. Averaging over J gives
G_K^b<=8R_b. At the left endpoint only one partner deviation
is needed, so the resulting bound is 12R_b+3G_K^b.
At the right endpoint the corresponding bound is
6R_b+2G_K^b. The same domains and fiber lengths as above apply.

Hence ||b-c||_1<=18R_b+6G_K^b<=66R_b. Since the ambient
time interval has length one, |bar b-c|<=||b-c||_1, yielding
||b-bar b||_1<=132R_b. The range is integrable because it is
bounded by the sum of the three absolute section values, whose
total marginal density is three.

## 4. Conditional consequence and dependency scope

For g=f-1/3, its residual is D-1. Under integral f>=1/3,
the balanced identity gives a nonnegative mean residual. Therefore
\[
 \|D-1\|_{L^1(\mu)}
      =2\mathbb E_\mu(D-1)_+-(3\int f-1)
      \le2\mathbb E_\mu(D-1)_+.
\]
The coefficient 9000 in Section 5 is consequently valid and
slightly conservative. The source's bound for a uniform-error
functional equation is not substituted for this weighted L1
claim; the displayed proof establishes it directly. The
[source/planning note](../../research/ARCHIVE_INDEX.md#record-003)
was read for that dependency distinction.

Together with the separately reviewed
[centered range-surplus estimate](../../research/ARCHIVE_INDEX.md#record-030),
these inequalities can control scalar section masses. They do
not establish alignment, symmetry, or any other spatial property
of the underlying finite-group profiles. No numerical computation
was needed for this review.
