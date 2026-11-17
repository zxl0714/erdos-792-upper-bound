# Independent review of two-role exclusion and time selection

Run 2026-11-17T04-08-08-259Z-ba89c4b5; 17 November 2026.
Scoped review in RESEARCH. The original problem is unresolved.

**Verdict: PASS.** Reviewed
[run17-two-independent-role-exclusion.md](../../proof/lemmas/shift-exclusion-for-three-sets.md)
at frozen SHA256

    a46d7313781fdbcd08dbf97e3ac6b9a1e3c22bc41fcd857d9842a149dd9c912b

The minimum-role hypothesis is retained through popular-sum deletion
and randomized rounding. The adaptive time assignment supplies that
hypothesis and preserves the stated aggregate count bound. The finite
weighted constant C_r=65536 and the final index bound 4/eta check.
This reviews the component only, not a general origin improvement.

## 1. Published hypotheses and the two-role Kneser step

I read Theorem 1.1 and Theorem A in the
[saved author-final text](https://www.diambri.org/Mathpdfs/pollard--vFIN.pdf),
as well as Theorem 1 in the
[saved DeVos text](https://arxiv.org/abs/1303.3539).
The [existing version audit](../literature/quantitative-finite-exclusion-literature.md)
identifies the published 2010 Grynkiewicz result and its source record.
The popular-sum input used here is exactly the older published theorem:
finite nonempty sets, integer j between one and both input cardinalities,
threshold j(|A|+|B|)-2j^2+1, at most j-1 total deletions, and equality
of the retained ordinary sumset to the original j-popular sumset.
No stronger later deletion theorem or implicit removal estimate is used.

For exact cross-triple-free C1,C2,C3, let H stabilize C3-C2.
The H-saturation of C1 avoids C3-C2 because that difference set is
H-periodic. Kneser therefore yields
\[
                    \sum_i|C_i+H|\le N+|H|.
\]
If v belongs to H, either constrained role has at most half the
size of its saturation. Since both are nonempty, their two
saturations each have size at least |H|. Subtracting half of
their combined sizes leaves total cardinality at most N.
This is valid for any two constrained roles, including the output
role. The argument would fail to guarantee that subtraction if
one constrained role had disappeared; the note prevents this.

## 2. Robust unweighted deletion and nonempty roles

With V=sN<32, the count upper bound is less than one, so the count
is zero. Each input set is nonempty by the positive lower bound
V/2 on its size. The exact argument gives |H|>=V, stronger than
needed.

For V>=32, j=floor(V/16) obeys V/32<=j<=V/16 and
j<=min(|U2|,|U3|). The representation count over U1 is the
ordered cross count E, so the truncated-sum upper bound in the
note is correct. The stated positive margin verifies strict
failure of the published alternative, including its +1 term.

The two popular-sum input sets lose at most j-1 elements in total.
Removing U1's intersection with the popular difference set costs
at most E/j<=V/128. Every retained role remains nonempty since
its original size was at least V/2. Their total is at least
N+V-j-E/j>=N+V/2. All prescribed exclusions are inherited by
subsets. Applying the exact argument gives a proper subgroup
avoiding v, of size at least V/2. There is no exceptional small
group order omitted.

## 3. Weighted rounding preserves every mass

Normalizing all three functions by 1+kappa makes the two adjacent
sum conditions exact. For delta<=1/2 and kappa<=delta/4, the
two asserted lower bounds are valid:
\[
 \sum_i\mathbb E h_i\ge1+2\delta/3,
 \qquad\min_i\mathbb E h_i\ge4\delta/9.
\]
The auxiliary prime m can be chosen arbitrarily large while
avoiding the finitely many prime divisors of ord(v). The shift
(v,1) then has cycles of length ord(v)m>B, including when v=0.
Deleting the last vertex of each block loses at most 2/B of
the vertices and leaves separated paths; this also cuts the edge
closing each original cycle.

The even/odd threshold rule has the prescribed vertex marginals
and cannot select adjacent vertices because their probabilities
sum to at most one. Independent randomness is used for each
path and each constrained role. The unconstrained role uses
independent vertex randomness, independent of both other roles.
Each role's cardinality variance is at most BN. Hence the union
of the three lower-tail failures has probability at most
3072B/(delta^2 N)<1/4, as stated.

With B=ceil(128/delta), the retained bounds are exactly
\[
 \sum_iN_i/N\ge1+(13/24)\delta\ge1+\delta/2,
 \qquad\min_iN_i/N\ge(229/576)\delta>\delta/4.
\]
The minimum bound subtracts a cutting loss even from the
unconstrained role, so it is conservative there.

Three-role independence gives the product of marginal probabilities
for every cross triple, also when two or all group vertices coincide.
No independence within a single path is required for this count.
The two auxiliary summation coordinates cancel the normalization,
and cutting and normalization can only reduce the expected count.
Markov's count event and the three-mass event have a nonempty
intersection; the zero-count case follows directly from nonnegativity.

For s=delta/2, all unweighted hypotheses now hold, including
the minimum size sN/2=delta N/4 and
\[
       4e\le\delta^2/16384=s^2/4096.
\]
The resulting subgroup has index at most 4/delta<m. The image of
the prime-order auxiliary factor in its quotient must be trivial,
so the subgroup is H0 times C_m. Avoidance of (v,1) becomes
avoidance of v, and the index is unchanged. Thus the auxiliary
prime creates no size condition in the final finite weighted lemma.

## 4. Adaptive role assignment gives all three minimum masses

For three fixed section times, put D=sum f_r and b_r=f_r-x_r.
Assign X to an index i minimizing b_i and Y to a distinct index
j maximizing b_j. The remaining index receives F. The fixed
tie rule is measurable. The selected total mass is at least
D-rho because it equals D+b_j-b_i+e_j.

Every f_r is at least D-1-2rho. The bound x_r<=f_r+rho gives
b_r>=-rho; hence the selected Y mass is at least D-1-4rho.
For the selected X mass, the inequalities
\[
 b_i\le b_r\le1-2f_r+2\rho\quad(r\ne i)
\]
add to give b_i<=1-D+f_i+2rho. Consequently
x_i>=D-1-2rho. The remaining F mass has that same lower
bound. Thus all selected masses are at least D-1-4rho.
This explicitly supplies nonempty-role margins rather than
deducing them from the total surplus alone.

## 5. Balanced probability law and the adaptive count

The density 3(u+v') integrates to one on the time triangle.
Its two input-time marginals are each 3(1-s^2)/2, and its
sum-time marginal is 3s^2. Their sum is three, proving
E D=3d(F)>=1+9eta/4.

For delta=(D-1-4rho)_+, the section upper bound on f gives
delta<=1/2. Also E delta>=7eta/4. Removing the part delta<eta
loses at most eta in expectation, so the truncated variable V
satisfies E V^2>=(E V)^2>=9eta^2/16.

Although the role assignment depends on the section masses, its
count is pointwise bounded by the sum of all six role permutations.
Their unweighted time integrals sum to 2J: exchanging both input
times and both group variables pairs the two permutations for
each output role. The probability density is at most three.
Therefore E C_sel<=6J<=eta^2/(2C_r), strictly less than
E V^2/C_r. No independence of the chosen assignment and its
count is asserted or needed.

It follows that a positive-probability set of time pairs has
delta>=eta and C_sel<=delta^2/C_r. At each such pair the
selected total mass is at least 1+delta, all three masses are
at least delta, and the X and F sections satisfy the two shift
conditions with kappa<=delta/4. They therefore meet the finite
weighted lemma in whatever input/output positions they occupy.
The conclusion has index at most 4/delta<=4/eta.

Since the group is finite, the finitely many exceptional shift
section sets can be combined into a null set. All three time
marginals are absolutely continuous, so they can be avoided in
the positive-probability selection. Endpoints of the time triangle
do not affect its integral.

Finally the integer index d<=4/eta divides
lcm(1,...,floor(4/eta)). The corresponding quotient is annihilated
by that lcm, proving QG subset H0 and excluding v from QG.
This includes v=0. The already retained cutoff floor(8/eta)
is therefore sufficient as well.

The [common raw sampler](../../proof/lemmas/sampling-the-shifted-sets.md)
supplies the required section conditions with rho=2t/q and
kappa=0. Its proof and the
[asymmetric return review](../../research/ARCHIVE_INDEX.md#record-031)
are separate components. No numerical computation was needed for
this review, and no general upper-bound improvement follows here.
