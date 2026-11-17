# Containers remove the random-rounding cost, given a discrete certificate

Run `2026-11-17T04-08-08-259Z-ba89c4b5`; current primary-source audit.
The selected question was whether containers replace the exponential
cost of [positive-majorant transfer](../../research/ARCHIVE_INDEX.md#record-059).
The answer has two separate parts: the random rounding can be done at
polynomial cost; deriving the required discrete arithmetic certificate
is a distinct step, not supplied by the inspected container theorems.

The concrete positive output is the
[rounding lemma](../../proof/lemmas/rounding-weighted-sets.md), with
[independent PASS review](../reviews/run17-container-rounding-review.md). If
normalized weights0<=w_n<=W on[N] satisfy

    T(C)<=delta*N^2 implies (1/N) sum_(n in C)w_n<=theta

for every C subset[N], then independent inclusion with probabilities
w_n/W gives one set B controlling all its sum-free subsets, with
|B|=(1±epsilon/4)N/W and alpha(B)<=(theta+epsilon)|B|. It suffices
that N>=10^40*max(2,W,delta^-1,epsilon^-1)^10. This holds for every
eligible N and for inhomogeneous probabilities. The proof explicitly
handles repeated-variable Schur triples. No functional certificate,
weight lower bound, or continuous representation is required.

## Current sources and exact applicability

All primary snapshots, hashes, search expansions and read scopes are
in the [source manifest](../../research/ARCHIVE_INDEX.md#record-001).

* Saxton–Thomason, [*Hypergraph containers*, current v3,
  28 November2014](https://arxiv.org/html/1204.6595v3), Definition3.2
  and Corollary3.6, is sufficient. On the distinct Schur3-graph,
  average degree is of order N and codegrees are bounded. Taking
  tau of order(delta*N)^(-1/2) gives containers with few triples and
  logarithmic family size O(sqrt(N/delta)*log(1/delta)*log N).
  Bernstein concentration for arbitrary independent Bernoulli variables
  then gives the polynomial bound above. The source's own Section2.5
  uses a separate removal input for its solution-free counting result;
  the container theorem does not assert that this arithmetic input is
  automatic. No correction or withdrawal was listed in the inspected
  current record or found by the targeted search.

* Campos–Samotij, [*Towards an Optimal Hypergraph Container Lemma*,
  published15 June2026](https://doi.org/10.1007/s00493-026-00214-1),
  TheoremsC/D, supplies stronger general container formulations. C
  assumes explicit codegree bounds; D produces containers in which
  a suitable balanced supersaturation subhypergraph cannot be found.
  These formulations still require the relevant supersaturation
  argument for the application. Their improved uniformity dependence
  is not needed for our fixed uniformity3. The
  [current arXiv v2 record](https://arxiv.org/abs/2408.06617),
  19 September2024, expressly retracts Conjectures7.1 and7.3 from
  v1 and revises Section7. Those withdrawn conjectures are not used;
  the published theorem statements were inspected.

* Spiro, [*Supersaturation for Hypergraph-Weighted Independent Sets*,
  v1,15 July2026](https://arxiv.org/html/2607.14022v1), weights an
  independent set by the edges it induces in another hypergraph.
  Theorems1.5/1.7 assume a hereditary family and a prior extremal
  estimate ex(n,P)=O(n^beta) with beta<h. They do not directly state
  a near-threshold supersaturation theorem for arbitrary real vertex
  weights. The literal h=1 vertex-weight interpretation with a linear
  extremal scale has beta=h, outside those hypotheses. More elaborate
  encodings would require their own verification. The generated HTML's
  August date is not a later arXiv revision.

* Carenini–Seth–Yoshida, [*A quantitative container characterization
  of one-sided testability*, v1,2 August2026](https://arxiv.org/html/2608.01523v1),
  Theorem2.2, translates removal parameters into ordered-container
  parameters and conversely. The bounded-arity extension retains the
  same kind of interface. This is an effective equivalence, not a
  new parameter-free arithmetic removal estimate. Its dense relational
  distance also differs from the fixed Schur-host vertex-weight
  setting. No continuous-to-discrete compatible-extension theorem was
  identified in these statements.

## Why the continuous certificate is a separate interface

The continuous certificate controls functions on C_q times[0,1]
uniformly in compatible q. The discrete certificate above controls
the exact integer equation x+y=z. A naive piecewise interpolation of
an arbitrary discrete set does not preserve that count: adjacent-cell
carries introduce equations x+y=z±1. For example, interpolate the odd
integers of[N] by their intervals((n-1)/N,n/N). The integer set is
sum-free, but the interpolated set has a positive count bounded below
independently of N. For N divisible by8, pairing the N/8 odd indices
at most N/4 and taking the half of each cell pair with fractional
coordinates summing below1 already gives continuous count at least
1/128.

Additional residue coordinates can repair particular examples, so this
is not a general impossibility theorem. It identifies why a count
preserving arithmetic model is needed. The saved positive-majorant
proof supplies one using smoothing and a small approximate period;
the [parameter audit](../../research/ARCHIVE_INDEX.md#record-060) records
its cost. Containers alone do not replace that model.

The current proposed alternative is therefore well targeted: construct
the weighted discrete certificate directly, for every N above a common
threshold, using the finite origin-exclusion recursion. The reviewed
container lemma then applies without any continuous discretization.
If that discrete construction has single-exponential W,delta^-1 and
N_min at the desired error scale, the rounding cost remains on that
single-exponential scale. This is the precise conditional implication;
the source audit by itself is not a new bound for the original problem.
