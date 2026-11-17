# Independent end-to-end review of the logarithmic upper bound

Run `2026-11-17T12-05-38-564Z-905bb2c7`; 17 November 2026.
Reviewer: `/root/run17_fresh_upper_review`.

**Verdict: PASS at the stated upper-bound scope.** The frozen
[upper proof](../../proof/main.md), SHA256

```text
9c22824bcfdc246bbdd191422f88b8bee2004ace9f28a99cd8e58eaa5e9d2719
```

proves that absolute constants C,n0 exist such that **every** integer
`n>=n0` has an n-element positive integer set `A_n subset[n^2]` with

```text
alpha(A_n)<=n/3+C*n/log n.
```

Here sum-free excludes all `x+y=z`, including equal inputs. This is
not a PASS for the constant-factor asymptotic order in
[PROBLEM.md](../../research/PROBLEM.md). The retained lower excess remains
`Omega(loglog n)`, and the two sides do not match. This review does
not establish publication priority or a useful numerical onset.

I audited the new origin interface and the entire weight, container,
and cardinality composition. The two pending component reviews were
received and checked before this verdict was written. No proof or
root checkpoint file was changed.

## 1. Frozen dependencies and independence of the checks

The new arithmetic input is
[the universal origin theorem](../../proof/lemmas/excluding-small-divisible-shifts.md),
SHA256

```text
b356e77e7fdb40aced2594a08103ec39d68b057bf8dd662334a692a8d05d4adf.
```

Its independent [review by run17_long_gap](run18-polynomial-radius-origin-review.md)
is PASS, SHA256

```text
294fb2a9770e02f3c16fa28d803489cefbfa3330878557fd122e6faa81e237b0.
```

The required full-profile structural theorem is
[the one-profile model](../../proof/lemmas/interval-structure-of-a-cyclic-profile.md), SHA256

```text
aa190cab861a87ea845587971c354e0ccfa3892029231e3055eca43118232b9c.
```

I authored that component, so I do not count a self-check as its
independent verification. Its independent
[review by run17_occupancy_trial](run18-one-profile-spacetime-model-review.md)
is PASS, SHA256

```text
655e3103259a4294c43f905c226baf80d049db18b9445f316e7cc24c7e5bf53f.
```

That review includes the separate
[one-profile circle/phase interface review](run18-one-profile-circle-phase-interface-review.md),
SHA256 `be77f363f221de8bb96ff72e678ee1525f6bff7a0e0da75fa53b4f7aab4ecd35`.
The scalar flattening component has a separate
[root review](run18-one-profile-scalar-review.md).

The universal origin proof also uses the independently reviewed
[raw unfolding](run18-raw-model-integer-unfolding-review.md),
[affine core reduction](run18-affine-orbit-core-review.md), and
[original-count block transport](run18-orbit-block-hinge-transport-review.md).
The latter's frozen proof hash is
`0b5ffbcbfecf05dbe304f68dcebc7d29bac6b9da7e0eefc4f2bc1ce0babb0b54`.
I read the block proof and its prefix/analytic inputs while checking
that its ordinary-count conclusion, strip width and discrepancy
premises match the origin composition.

For the unchanged empirical return, raw sampler, initial origin
certificate, weight induction and container argument, I reread the
relevant sections of the
[standalone proof](../../proof/lemmas/square-root-logarithmic-upper-bound.md), frozen SHA256
`d90a36be2f14c5aeb231f8e0698e60423d70b99bc75946824d235ec3f683933f`.
Its prior [independent end-to-end audit](run17-standalone-upper-review.md)
and the [container review](run17-container-rounding-review.md) remain
applicable: the new proof changes the origin parameter costs, not
their exact interfaces.

## 2. Source scope and the structural precision

The source-dependent pair theorem uses Griesmer's current v3,
Theorems 1.1 and 1.15 with Definitions 1.4, 1.13 and 1.14, at
the finite cyclic scope checked in the
[single-pair source/proof review](run17-single-pair-cyclic-stability-review.md).
The pair's two inputs are exactly shift-independent indicator sets;
no fractional or merely approximate version is substituted. The
one-profile theorem obtains these actual input sets from typical
time sections. Its propagation has the required density margin,
large quotient order and robust uniqueness threshold.

The new discrepancy input is the constant-target specialization of
[Martin--Sitar, Theorem 1.2](https://arxiv.org/html/0903.1834v1#S1.Thmtheorem2).
I reopened the primary text during this audit. The maximum over
initial exponential sums and its coefficients agree with the saved
[arithmetic source audit](../../proof/lemmas/rotation-discrepancy.md).
Zero target variation and the geometric-series estimate give the
claimed all-block error `M/(H+1)+3t/(2b0)`. Closed majorants and
closed complementary arcs cover the other endpoint conventions.
The saved [current-version/source manifest](../../research/ARCHIVE_INDEX.md#record-026)
contains the v1 primary text and record; no additional theorem about
selected orbit points is being imported.

I also reopened the primary
[Saxton--Thomason v3 text](https://arxiv.org/html/1204.6595v3).
The application remains precisely its already audited Definition 3.2
and Corollary 3.6, with the recorded co-degree normalization, edge
reduction, and entropy constant. The separate small-tau conditions
from other formulations and the online property are not used.
Grynkiewicz and Kneser retain the exact finite-set hypotheses audited
in the standalone review; neither has acquired an additional
quantitative demand in this composition.

Most importantly, the structural accuracy is the single fixed number
`epsilon_model=(delta0/100)^2/(4*4096)`, with `delta0=1/1000`.
It does not vary with the origin surplus eta or the final certificate
precision epsilon. Thus its implicit positive beta, and the resulting
return k,L, are absolute constants. The one-profile theorem is never
invoked at accuracy epsilon=eta. The improvement in the final exponent
does not rely on an unproved rate for Griesmer's stability modulus.

## 3. Universal origin interface: counts, divisibility and all N

The frozen origin theorem has exactly the interface used in Section 1
of the upper proof. Its constants K,a,eta0,Cstar are fixed absolutely,
and for `0<eta<=eta0` it sets

```text
H=ceil(Cstar/eta), Q=lcm(1,...,H),
kappa=K eta^2<=eta/16, tau=a eta^2.
```

It gives the stated origin-set estimate whenever the **original**
normalized integer count is at most tau. I checked the principal
parameter transitions independently:

1. With `B=ceil(16/eta)<=17/eta`, positive `t<=K eta^2 N`
   and `K<=1/(272L)` imply `BtL<=eta N/16`. The full return
   uses fixed k,L and produces `q/N,t/q<=eta/16`.
2. The masked raw profile is an indicator, exactly t-independent,
   has mean at least `1/3+3eta/4`, and full count at most
   `3a eta^2+xi^2<=beta^2/(6Cr)`. There is no extra additive
   boundary error in this count estimate.
3. Taking `eta_s=8/H` gives `floor(8/eta_s)=H` exactly and
   `eta_s<=eta<=beta`. Integer divisibility Q|t implies membership
   of `t mod q` in `Q C_q`, regardless of common divisors.
   Thus the one-profile theorem has every required hypothesis.
4. Its fixed-accuracy model has displacement at least 5/16. Raw
   unfolding loses less than `4eta/(16-eta)`, leaving
   `||omega t||>1/4`. The fixed affine approximation and all-block
   discrepancy meet the affine reduction's thresholds.
5. Affine reduction discards at most `8a eta^2 N/delta0` points
   and fills an open core without increasing the ordinary count.
   The closed core at width `3delta0=3/1000` lies strictly inside
   that core and is within the block theorem's `1/100` width limit.
   Its density theorem uses original T0, not the carried return
   count. The four final losses are each at most eta/16.

The resulting contradiction is between densities at least
`1/3+7eta/8` and at most `1/3+eta/4`. Exact shift independence
need not survive core filling, since it is not used thereafter.

The input positive t itself implies N>=16, so there is no hidden
minimum N in this argument. If the tested origin region is empty,
the certificate is immediate. Otherwise removal of at most eta N/8
lower endpoints makes the required shift-independent F, and

```text
sum_(t in A) #{x in A:x+t in A}=T0(A)
```

is the exact ordered identity giving the origin bound. This retains
equal inputs. Every count comparison before and after unfolding is
at its own stated normalization; the returned full-profile count is
used only for fixed coarse structure, while the surplus-scale
density estimate uses the original integer count.

## 4. Linear logarithmic modulus cost

The elementary lcm proof is correct. Passing from m to 2m raises
each prime exponent by at most one. If it rises, some prime power
lies in `(m,2m]`, and that power contributes one to the corresponding
Legendre valuation of `binom(2m,m)`. All other valuation summands
are nonnegative. Hence the quotient of the two lcms divides the
binomial coefficient. This is a statement about the exponent increase,
not a claim that the entire newly encountered prime power divides
the binomial coefficient.

Summing the logarithmic bound along dyadic integers and enclosing H
between consecutive powers of two proves `log Q<4H log2`.
Thus `log Q=O(eta^-1)`. The radius and count threshold contribute
only fixed constants plus multiples of `log(1/eta)`, giving the
whole displayed cost `O(eta^-1)`.

For the finitely many initial geometric parameters eta_j above eta0,
the old origin certificate is legitimate since eta_j<=1/16<1/12.
Their costs can be dominated by one larger absolute constant times
eta_j^-1. The number of these initial stages may be enormous but is
fixed independently of the terminal epsilon. No parameter-dependent
initial cost is hidden in this convention.

## 5. Weight recurrence and uniform parameters at every length

At the induction step `N>=ceil((2Q/kappa)N0)` gives

```text
M=floor(kappa N/Q)>=N0,
kappa N/(2Q)<=M<=kappa N/Q,
Q[M] subset[1,kappa N] subset[N].
```

The old weight family is therefore available at the actual M.
The new weights have mean one, lower bound 1/4 and height at most
`(2Q/kappa)W`. In the dense branch the origin-set bound, multiplied
by the old height and the exact factor `3/(4M)`, contributes at most
`12WQ I_N(A)/(eta kappa)<=1/12`. Adding the uniform part gives
at most 1/3. In the other branch, the dilation `j -> Qj` preserves
every Schur relation and gives

```text
I_M(A_Q)<=(N/M)^2 I_N(A)<=delta.
```

There is no extra Q factor. The old certificate then gives exactly
`e'=3e/4+eta/4`. The two density cases cover all A and their
common endpoint. The threshold's third branch is precisely tau_eta,
as needed for the new origin lemma.

The induction starts validly with weights one and e0=2/3. At step j,
`e_j<=12eta_j` implies
`e_(j+1)<=(37/4)eta_j<=12eta_(j+1)` for ratio 7/8.
The stopping rule yields both `e_J<=epsilon/4` and
`7epsilon/384<eta_J<=epsilon/48`.

Writing `a_j=log(2Q_j/kappa_j)` and using the upper proof's Phi_j,
we have `log W_j=sum_(i<j)a_i<=S_j`. The integer ceilings in the
length recurrence cost at most one factor two per stage, so
`log N_J<=2S_J`. The exact maximum recurrence for the inverse count
threshold retains the old height only once:

```text
R_j+2a_j,
log72+log W_j+a_j+log(1/eta_j),
log(1/tau_j).
```

Each branch is bounded by a fixed multiple of `S_j+Phi_j` if
`R_j<=C S_j`; the +1 in Phi_j absorbs fixed constants. Thus
`R_J=O(S_J)` without a factor J. Finally the inverse eta_j grow
geometrically, giving

```text
S_J=O(sum_(j<J)eta_j^-1)=O(epsilon^-1).
```

This proves the simultaneous bounds
`W,N_min,delta^-1<=exp(C0/epsilon)`. They are fixed before N and
valid for a weight at **every** N>=N_min. Compatibility of weights
at different interval lengths is unnecessary and is not assumed.

## 6. Containers, diagonals and polynomial onset

The imported container lemma is unchanged and its hypotheses match:
the weight height is W, its mean is one, and
`zeta=min(delta,1/4)` ensures the count certificate with
`theta=1/3+epsilon/4<=1`. All bounds apply at the same interval N.

I rechecked the Schur-hypergraph normalization. Its distinct edges
are `{x,y,x+y}` with `x<y`; their number is
`floor((N-1)^2/4)`, with average degree at least `3N/16`.
The codegrees used in the saved proof give the required container
condition at `tau=100/sqrt(zeta N)`. Every genuine sum-free set
is independent in this hypergraph. The reverse implication is not
needed. A container's full ordered count is bounded by twice its
distinct-edge count plus at most N/2 diagonal triples, so the
weight certificate does apply to every container.

Independent Bernoulli rounding with probabilities `w(n)/W` has mean
size N/W and the saved variance/tail bounds. The simultaneous event
controls all containers and both cardinality tails. The polynomial
onset `N>=10^40 max(2,W,epsilon^-1,zeta^-1)^10` absorbs the
container entropy and is valid for every larger N. Substituting the
new exponential parameter bounds therefore gives
`N>=exp(C1/epsilon)` with an absolute C1; it does not reintroduce
an inverse-square exponent or an extra logarithmic stage factor.

## 7. Exact cardinalities and the ambient interval

Choose C2 as in the upper proof. For every integer
`n>=exp(C2/epsilon)`, the single common height W is already fixed.
The selected length

```text
N=ceil((1+epsilon)Wn)
```

is eligible for both the weight certificate and the rounding lemma.
Since `n>=epsilon^-1` and W>=1, it is at most
`(1+2epsilon)Wn`. The size lower bound is strictly above n because
`(1-epsilon/4)(1+epsilon)>1`; the upper bound is at most
`(1+3epsilon)n`. Thus an actual n-element subset can be selected,
without padding or a subsequence restriction.

Deletion cannot increase the largest sum-free subset size. Expanding
the two factors gives

```text
(1/3+5epsilon/4)(1+3epsilon)
 =1/3+(9/4)epsilon+(15/4)epsilon^2
 <=1/3+3epsilon     for epsilon<=1/12.
```

Also `max A_n<=2n exp(C0/epsilon)`. At every sufficiently large n,
take `epsilon=2C2/log n`. The required cardinality onset becomes
sqrt(n)<=n, and the excess becomes `6C2*n/log n`. Since C2>=C0,

```text
max A_n<=2n^(1+C0/(2C2))<=2n^(3/2)<=n^2
```

for n>=4. All small-precision prerequisites are met once n exceeds
one absolute n0. The witnesses are positive and are therefore
admissible in the original minimum over arbitrary integer sets.

## 8. Outcome and limits

No substantive gap or required repair was found in the frozen upper
composition. The claimed `O(n/log n)` excess, exact cardinality and
ambient `[n^2]` bound all follow at their stated scopes. The original
constant-factor order remains open in this workspace; this result
does not justify VERIFY or DONE for PROBLEM.md.

No numerical search or computation was needed. The source checks,
elementary constants, floor/ceiling bounds and recurrences were
checked directly. A local extraction attempt found BeautifulSoup
unavailable, so I read the primary source through the web tool;
this did not affect any evidence or proof. Frozen hashes were checked
with sha256sum before writing the report. All source and component
evidence links above refer to saved artifacts or their primary texts.
