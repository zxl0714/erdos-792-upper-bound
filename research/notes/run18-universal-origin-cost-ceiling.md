# The logarithmic cost of the new universal origin certificate is optimal

Run `2026-11-17T12-05-38-564Z-905bb2c7`; 17 November 2026.
Scoped RESEARCH route audit; independent review pending.
This constrains the stated certificate, not the extremal function f.

## 1. Exact current certificate

The [reviewed new origin theorem](../../proof/lemmas/excluding-small-divisible-shifts.md)
has the following form, for fixed eta>0 and parameters Q,kappa,tau
independent of N, with Q a positive integer and kappa,tau>0:

    A subset[N], |A|/N>=1/3+eta, T0(A)/N²<=tau
       => |A intersection QZ intersection[1,kappa N]|
                                  <=8T0(A)/(eta N). (P)

It is asserted for EVERY N, or equivalently for every sufficiently
large N for the obstruction below. Constants on the right other
than eight would make no difference to the zero-count example.

Every such Q necessarily satisfies

    product_(p prime, p=2 mod3, p<1/(3eta)) p divides Q. (1)

In particular the [already reviewed prime-number estimate](../ARCHIVE_INDEX.md#record-146),
[review](../ARCHIVE_INDEX.md#record-147), gives

    log Q>=1/(18eta)                                  (2)

for every sufficiently small eta. The new origin theorem has
`log Q=O(eta^-1)`, so its modulus logarithm has the smallest
possible order for the exact universal certificate (P).

## 2. Check that the saved periodic obstruction applies to (P)

Let `p=3k+2<1/(3eta)` be prime and suppose p does not divide Q.
The cyclic interval

    C={k+1,...,2k+1} subset C_p

is sum-free, including repeated inputs, and has `(p+1)/3` elements.
Choose a unit multiplier d modulo p so that `dQ mod p` is in C;
this is possible because Q is a nonzero residue. Define

    A_N={1<=n<=N:d*n mod p belongs to C}.

Every ordinary integer triple in A_N would project to a triple in C,
so T0(A_N)=0. Its limiting density is
`(p+1)/(3p)=1/3+1/(3p)>1/3+eta`. Thus for all sufficiently
large N its density meets (P). Meanwhile Q belongs to A_N, and
choosing N also at least Q/kappa places Q in the origin region.
The left side of (P) is then at least one while its right side is
zero, a contradiction. This proves (1), with no endpoint rounding
assumption on N and no lower bound on tau needed.

For (2), reuse the primary fixed-progression prime estimate already
saved and reviewed in the linked period-cost note. At
`y=1/(6eta)`, every prime counted there lies strictly below
`1/(3eta)`, and the reviewed estimate gives
`sum_(p<=y,p=2 mod3)log p>=y/3=1/(18eta)` once eta is small.
No new asymptotic prime theorem or numerical computation is used.

## 3. What this says about the retained construction

At each compatible-weight induction step in the
[new upper proof](../../proof/main.md), the declared
height is multiplied by `2Q/kappa`, and its minimum interval length
is multiplied by the same factor, up to integer rounding. Hence
the sum of logarithmic parameter costs already pays at least the
right side of (2) at a final scale comparable to the target excess.
Making the return radius polynomial, as achieved here, leaves this
unavoidable modulus cost. Improving constants in scalar flattening,
phase stability, block transport, or the return does not remove it.

This is an obstruction to reducing the logarithmic cost inside this
specific universal-origin and declared weight-recursion interface.
It is NOT a lower bound for f(n)-n/3, a lower bound for every possible
integer construction, or a claim that every weight certificate needs
this modulus. It also does not prove that the actual largest sum-free
subset of these witnesses has excess comparable to n/log n; the
construction supplies only an upper bound.

## 4. Next-route discriminator

The original constant-factor problem remains far beyond the new
upper. A worthwhile upper-side continuation must identify which
premise of (P) it avoids: a single universal period independent of
the set, a uniform exclusion of every small divisible origin point,
or the present dilation/weight/cardinality conversion. An adaptive
period for each test set cannot be substituted directly into one
weight certificate chosen before the test set; that minimax step
would be a new mathematical claim requiring its own proof.

The existing [divisor-weight fractional formulation](../ARCHIVE_INDEX.md#record-148)
and [divisor-dilated time selectors](run17-divisor-time-selectors.md)
are possible comparison objects, but their saved scope does not
provide an alternative universal robust certificate. Their known
time-spread and general-sum-free-set gaps must not be forgotten.
On the lower side, the [current status audit](../../docs/literature/run18-lower-status-audit.md)
still leaves the signed correction/full-spectrum structure gap from
the earlier lower-route work. Neither direction is completed here.

This note is a purposeful reuse of a saved obstruction at the exact
new certificate scope, not a new original-problem result.
