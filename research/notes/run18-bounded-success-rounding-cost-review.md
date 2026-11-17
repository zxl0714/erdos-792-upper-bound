# Independent review: bounded-success rounding cost

Run: 2026-11-17T12-05-38-564Z-905bb2c7. Reviewed 17 November 2026.
Reviewer: /root/run17_long_gap.

**Verdict: PASS at the stated universal-period and independent-rounding
scope.** No correction is needed.

Reviewed [the corollary](run18-bounded-success-rounding-cost.md) at SHA256

    00054b45dd9f1f8c8614e1cf5434ea68c10a13bc823243f28769785df376b4b2

and checked its use of these already reviewed, frozen inputs:

- [Universal-origin cost ceiling](run18-universal-origin-cost-ceiling.md),
  SHA f449fe935afb60848057d36554035a663dc62a16c32dd43daa6f3c11ed925466.
- [Mixed-rounding obstruction](run18-sparse-mixed-rounding-obstruction.md),
  SHA 66018f5bace44977cc286474a99e2aa6fe871f7f0f6af2ac8277a193554971c7,
  including its stronger good-event margin in Section 5.
- Their linked independent reviews, including the mixed-rounding
  review SHA 69202425f4757909b1e2eabeef27ac57d9c66448c937bc7abe48c21d9b40c339.

## Probability event and constants

The hypotheses retain mean-one weights, 0<=w<=W, exact outer value
1/4, Q>=2, N>=2Q, independent inclusion with probability w(n)/W,
and mu=N/W tending to infinity. The modulus must satisfy the exact
universal-origin predicate, not merely be some chosen integer.
That predicate supplies log Q>=1/(18 eta) for sufficiently small eta.

For fixed C>0, eventually C eta<=1/100. On the mixed proof's
good event, |S|>0 and

    alpha(S)>=|S|/3+(5/384)|S|.

Since 5/384>1/100, the proposed success event is disjoint from that
good event, even when C eta=1/100. Thus a success probability at
least c implies

    c<=33/mu+64(mu^2+mu+1)/Q.

For mu>=max(1,66/c), the first term is at most c/2 and the polynomial
is at most 3mu^2. Rearrangement gives

    mu^2>=cQ/384,
    log mu>=1/(36 eta)+(1/2)log(c/384).

Multiplying by eta and taking the lower limit gives 1/36 because
c is fixed. The possible empty-sample success outcomes cause no
exception: the good event is nonempty, and all such outcomes are
already confined to its failure event.

## Deletion extension

For every A obtained by deleting d points from S, intersecting a
maximum sum-free subset of S with A gives

    alpha(A)-|A|/3
       >=alpha(S)-|S|/3-2d/3.

When d<=|S|/256 on the good event, the remaining excess is at least

    (5/384-1/384)|S|=|S|/96>=|A|/96.

Here A is nonempty, since S is nonempty and fewer than all its
points are deleted. Because 1/96>1/100, this excludes a successful
target with relative error at most 1/100. The deletion rule may
depend on the observed S; the argument is deterministic.

If the deletion bound holds on every successful outcome, the same
constant 384 follows. If it holds only with probability tending to
one, its failure probability is eventually at most c/2, so successful
outcomes satisfying the deletion bound have probability at least c/2.
Repeating the preceding calculation with c/2 replaces 384 by 768.
The note correctly states both alternatives; an unspecified
small expected deletion is not silently substituted for either.

## Scope

The bound concerns expected sample cardinality for this specific
outer-weight profile and a success probability bounded below.
It does not prove any lower bound for f(n), for the actual excess
of the retained witnesses, or for every possible construction.
Rare success, correlated sampling, different weights, substantial
deletions, and changing the universal certificate remain outside
the argument. The precision appearing in the lower bound is the
origin parameter eta; no relation to a smaller unrelated target
error is inferred.

This is a composition of the two saved inputs. No additional source,
numerical computation, or root handoff edit was used.
