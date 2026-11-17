# Independent review of orbit-block output-hinge transport

Run `2026-11-17T12-05-38-564Z-905bb2c7`; 17 November 2026.
Reviewer: `run17_long_gap`. Scoped RESEARCH review.

**Verdict: PASS.** Reviewed the frozen
[transport proof](../../proof/lemmas/density-of-an-integer-rotation-set.md), SHA256

    0b5ffbcbfecf05dbe304f68dcebc7d29bac6b9da7e0eefc4f2bc1ce0babb0b54.

The deterministic proxy, prefix budgets, original-count charging and
uniform corollaries all hold at their stated scopes. No proof edit
is needed. The convenient corollary assumes strip width delta<=1/100;
this bound must be retained in any parameter composition.

## 1. Inputs and rank cells

The proof uses the frozen [integer prefix inequalities](../../proof/lemmas/representation-counts-in-rotation-sets.md)
at hash a2eba933f34a6af1007144536ba3daff008cab792022952beb30c387d9869c5e,
including their wider |s|<=2delta output range. It also uses the
[prefix-integral density inequality](../../proof/lemmas/density-from-prefix-counts.md)
at hash cd93a0a53decb5037cc21d1887c527f4448af4bcba739cd7f976bc819d7c2a99.
Both have separate independent reviews. In particular the latter's
profiles take values in [0,1], as the binary proxy here does.

For each sorted block, discrepancies of the initial intervals with
strict and weak right endpoints bound the position of every order
statistic. The rank-cell phase differs from its assigned original
phase by at most the block's normalized discrepancy, with a harmless
possible cell-width allowance. The stated D, containing 2/m_*, is
therefore sufficient, including ties and phase zero. All comparisons
are between real representatives in [0,1), so no undocumented circular
rank convention is used.

Each integer is assigned a phase cell of length 1/m_j throughout
its time block of length m_j/N. It receives product mass exactly
1/N. Thus the proxy mass identity is exact. The phase displacement
bound gives the proxy the stated full core and empty exterior of
width d=delta+D, modulo rank-cell endpoints of measure zero.
Its two signed endpoint masses have absolute value at most d.

## 2. Prefix and discrepancy errors

For a full block, the original left signed excess can be written as
(f-i(phi)) times the indicator of the left half-circle. If assigned
phase and original phase lie on opposite sides of 1/2, both are in
the filled core, so that factor is zero. The cutoff therefore makes
no error. The remaining reference-indicator change on the left occurs
only within D of a=1/3 and has integrated size at most 2D. The
right argument is identical at b=2/3. This proves the stated full-
block errors 2D*m_j without assuming distribution of F inside a block.

Completed blocks have total length at most Ns. Each of the two
unmatched partial blocks costs at most h after normalization. Therefore

    |L_n/N-L(s)|, |R_n/N-R(s)| <=2sD+2h.

For the interval discrepancy on [1,n-1], its normalized bound is
at most ((n-1)/N)d0+K0/N. Since the original integer and proxy time
are in the same block, |(n-1)/N-s|<=h. Further,
K0/N<=h*K0/m_* because h>=m_*/N. These give
sD+hD<=sD+h, as D<1 under the strip-size assumption. Thus (10)
has no uncharged K0/N or rounding term.

## 3. Hinge transport and original-count charging

For the right window, the assigned original output offset satisfies
|x_n-x|<=D and |x_n|<=2(delta+2D). The prefix lemma can be
applied with enlarged width delta*=delta+2D<=1/24. Enlarging the
boundary strips does not change their signed prefix masses: the newly
included pieces are fixed core or empty exterior where f=i. The left
window has the same property.

The normalized input to the right positive part loses at most

    (sD+h)+(4sD+4h)+(3sD+3h)=8(sD+h)

from phase/time, signed-prefix and discrepancy changes, respectively.
The same estimate holds for the reflected left expression. Hence the
common choice e(s)=16(sD+h) is valid with slack. Positive parts
preserve these lower bounds.

The two selected output windows are disjoint because 4d<1/3.
At every time in a block, their combined intersection with a rank
cell has measure at most that full cell's measure, even if the cell
meets a window endpoint. Multiplication by the proxy value, followed
by integration over its time block, therefore charges the original
integer n by at most

    (m_j/N)(1/m_j)f(n)r_F(n)/N=f(n)r_F(n)/N^2.

Summing these charges is exactly the normalized ordinary integer
count E. There is no independent-input sampling, replacement by the
proxy's convolution, carried integer sum, or equidistribution claim
for the selected set. The role of the sorting is limited to these
one-output hinge estimates.

## 4. Full halfline coverage and energy

The proxy signed prefixes satisfy L(s),R(s)<=ds. Therefore the
right hinge vanishes for x<=-2d and its output profile vanishes for
x>d. On the left, the profile vanishes for x<-d and the decreasing
hinge vanishes for x>=2d. The windows used for charging cover every
nonzero halfline contribution. Their continued zero/one values agree
with the actual proxy on those windows, since the opposite transition
strip is separated by the stated margins.

Reflecting x in the left expression gives exactly the left-profile
input to the reviewed analytic density lemma. That lemma supplies
the coefficient-one square-root count term. The two errors contribute

    2 integral_0^1 s*16(sD+h)ds=(32/3)D+16h,

which proves the principal estimate. The argument requires no lower
cutoff on time; a large e(s)/s only decreases a hinge.

## 5. Uniform block choice and nonresonance corollary

Put gamma=d0+sqrt((K0+2)/N). If gamma>=1/1000, the claimed
1000gamma upper error is already at least one, exceeding the largest
possible density excess 2/3. Otherwise
M=ceil(sqrt((K0+2)N)) is less than N/2. Blocks of length M with
the last short block merged into its predecessor have all lengths
between M and 2M. Thus

    D<=gamma,
    h<=2M/N<=2gamma+gamma^2<=2.001gamma.

The step 2/N<=gamma^2 uses K0+2>=2 and is correct. For
delta<=1/100, the principal strip condition follows from
delta+2D<0.012<1/24. Its error is less than 43gamma, so the
displayed constant 1000 is conservative. The trivial large-gamma
case also handles every small-N exception.

Under the frequency discrepancy, K0=3t/(2b0). Since t>=1 and
b0<=1/2, one has 2<=t/b0 and hence
K0+2<=5t/(2b0). The square root of 5/2 is below two, proving
the stated corollary with constant 2000, uniformly in all parameters.

## 6. Scope

This theorem proves the original-count density bound for an exact
homogeneous orbit strip. Affine phase removal and conversion from a
coarse model to such a strip remain separate reviewed inputs. It does
not assert that sorting preserves time correlations, and its proof
does not need such an assertion. The width restriction of the uniform
corollary is explicit; a larger-width prerequisite cannot be substituted
without either a new argument or changing that prerequisite.

No numerical computation or new external theorem was needed. The
frozen proof was left unchanged.
