# Current primary upper-bound comparison for the logarithmic error

Run: 2026-11-17T12-05-38-564Z-905bb2c7. Checked 17 November 2026.
Bounded literature audit, not a mathematical verification or a priority claim.

The primary papers inspected do not state an upper excess O(n/log n)
for the quantity in PROBLEM.md. They establish n/3+o(n) and supply
substantial parts of the architecture used here. Twenty targeted search
queries, together with the current papers below, located no primary
source announcing this rate. This does **not** establish novelty or
exclude an overlooked result. No concrete conflict with the scope of the
[reviewed upper composition](../../proof/main.md) was found.
The original constant-factor question remains unanswered.

## Current papers and corrections

**Eberhard–Green–Manners.** The current arXiv record is v3,
29 July 2026; its version comment identifies a correction in Lemma 6.3.
Theorem 1.1 still gives n/3+o(n). The introduction attributes its poor
quantitative dependence to two uses of arithmetic regularity. Corollary
5.1 supplies the direct precedent: a dense, small-count set in
C_q x [0,1] has little mass near the origin in a bounded-index subgroup.
Lemma 5.2 constructs improving weights; Section 3 samples an integer set.
The corrected Lemma 6.3 concerns an even-length arithmetic progression
and the containment P subset 5X-4X when |X|>|P|/2; Section 6 is described
as independent of the main proof. The correction is not a stated change
to the upper error. Their positive-integer witnesses forbid even
three-distinct-variable Schur triples, a stronger requirement than the
ordinary sum-free upper bound needed here.
[Current v3](https://arxiv.org/abs/1301.4579),
[full text](https://arxiv.org/html/1301.4579v3),
[Annals 180 (2014), 621–652](https://annals.math.princeton.edu/2014/180-2/p05).

**Eberhard, Følner sequences.** The current arXiv record remains v1,
24 January 2014; the published paper is BLMS 47 (2015), 21–28, first
published online 1 December 2014. Theorem 1 gives explicit multiplicative
Følner families with maximal k-sum-free density 1/(k+1)+o(1).
The paper contains both an infinitary proof and an effective finitary
proof with poor bounds. Thus a claim of the *first effective upper bound*
would be false or misleading. Theorem 4.2 uses Szemerédi's theorem in a
periodicity-or-density-drop alternative over several separated scales.
Lemmas 5.1–5.3 average and contract measures, then transfer them through
Følner sets. No polynomial single-scale origin radius or logarithmic
cardinality error is stated.
[Current paper](https://arxiv.org/abs/1401.6390),
[published record](https://doi.org/10.1112/blms/bdu091).

**Jing–Wu, generalized sum-free subsets.** The current arXiv record is
v3, 11 January 2021, marked accepted in Transactions AMS. Theorem 1.1(iv)
states M_(k,l)(N)=(1/(k+l)+o(1))N for every fixed k>l>0.
Section 7, particularly Theorem 7.1, transfers large subsets of a
multiplicative Følner sequence to an infinite set of large multiplicative
upper density using ultraproducts and Loeb measure. This includes the
ordinary (2,1) problem but does not supply the sought error rate.
The logarithmic terms in Theorem 1.1(ii),(iii) are lower improvements
for other parameter choices, not an upper excess for (2,1).
[Current v3](https://arxiv.org/abs/2001.05632),
[Theorem 1.1 and Section 7](https://arxiv.org/html/2001.05632v3).

**Recent primary descriptions.** Bedert's current arXiv record remains
v1, 12 February 2025. Its introduction still asks for a reasonable upper
error after EGM and distinguishes Eberhard's explicit examples. Green's
currently served problem list, marked updated December 2025, does the
same in Problem 1. These statements support the relevance of the
quantitative question at their dates; they are not evidence that no later
paper exists. Bedert supplies the unmatched lower gain Omega(log log n).
[Bedert](https://arxiv.org/abs/2502.08624),
[Green, pp.2–3](https://people.maths.ox.ac.uk/greenbj/papers/open-problems.pdf).

## What is reproduced, and what the comparison does not identify

**Additional 2026 primary comparison.** Franchi–Gowers–Yip,
*Product-free subsets of (0,1)*, currently v1 of 7 July 2026, proves
the sharp continuous exponential-weight analogue (Green Problem 3).
Theorem 1.2 gives |A+A|, |A-A| >= 4|A|-2d(A), where
d(A)=sup_I(2|A intersect I|-|I|). Corollary 1.5 implies the lower bound
4|A|-2t under the exact exclusion A intersect(A-t)=empty.
The discrete Corollary 1.6 instead gives
|A+A+{0,1}|>=4|A|-2t. It does not state an integer-set error rate.
[Primary theorem and corollaries](https://arxiv.org/html/2607.06073v1),
[current record](https://arxiv.org/abs/2607.06073).

This is a relevant alternative source for continuous interval
localization under a prescribed shift. The missing interface is concrete:
adding {0,1} introduces an adjacent carry, and the measure theorem does
not bound a popular sumset or ordinary Schur count of an arbitrary
integer set. Likewise, the continuous exponential-weight conclusion
alone supplies neither finite quotient compatibility nor quantitative
discrete rounding. No improvement of the retained rate follows merely
by citing it. Testing a robust carry-aware version could be useful,
but was not undertaken in this bounded audit. The full primary capture
is also saved in the [lower-status source collection](../../research/ARCHIVE_INDEX.md#record-061).

The origin-exclusion/contraction/random-sampling strategy is established
literature, not a new strategy of this project. The fixed-precision
inverse-pair input is likewise Griesmer's theorem: see the saved
[source audit](run17-spatial-critical-pair-source-audit.md) and
[single-pair lemma](../../proof/lemmas/stability-of-cyclic-critical-pairs.md). Neither a
qualitative inverse theorem nor its use at a single fixed precision
alone supplies a rate as the final excess tends to zero.

The additional interface in the current argument is the use of exact
translation exclusion and a fixed-accuracy space-time character model,
followed by an **original integer Schur-count** orbit-prefix estimate.
The saved [origin theorem](../../proof/lemmas/excluding-small-divisible-shifts.md)
has kappa_eta=K eta^2, count threshold a eta^2, and a universal
modulus with log Q_eta=O(1/eta). The every-N weight and container
steps then have logarithmic parameter cost O(1/eta).
This audit did not find those combined quantitative statements in the
inspected primary papers. It does not claim that any component,
the composition, or its conclusion is new. Proof correctness is covered
by the separately saved reviews, not by literature absence.

Search hits about strong sum-freeness (forbidding sums of arbitrarily
many distinct elements), sum-freeness relative to an ambient set,
random subsets of a fixed finite group, and counting sum-free subsets
were not treated as upper rates for this problem. The previously saved
[scope audit](quantitative-finite-exclusion-literature.md) records the
first two common false matches. Automated problem/AI-result pages were
excluded as mathematical and priority evidence.

The current records inspected show the EGM correction above and no
withdrawal of the cited papers. This is a record check, not a claim of
an exhaustive errata search. Captured source responses, exact queries,
versions, reuse hashes, and retrieval details are in the
[source manifest](../../research/ARCHIVE_INDEX.md#record-062).
