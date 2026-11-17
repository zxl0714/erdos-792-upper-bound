# A dense integer obstruction to a generic coherent moment improvement

Run `2026-11-17T04-08-08-259Z-ba89c4b5`;17November2026.
Scoped RESEARCH result, pending independent review. This is not a candidate
for the original constant-factor asymptotic problem.

## Statement and exact scope

For infinitely many positive integers k there are exactly sum-free sets
F subset[N] and arithmetic progressions

    S=bt{0,...,L-1},  L>=4*6^k,
    eta=1/k, b=ceil(16/eta),
    Q_eta=lcm{1,...,floor(8/eta)}, t=Q_eta,
    btL<=eta*N/16,
    |F|>=(1/3+7eta/8)N,

for which the actual coherent ratio

    B_k(F,S)=sum_(q!=0) nu_S(q) r_F(q)^k T_q(F)
             /sum_(q!=0) nu_S(q) r_F(q)^k,
    r_F(q)=|F intersection(F-q)|,
    T_q(F)=#{(x,y) in F^2:x+y+q in F},
    nu_S(q)=#{(s,s') in S^2:s-s'=q},

is at least c*d*N^2/k^2. Here c=e^-9/100 is absolute, and d can be
chosen at least c_v*k^(1-2/v) for any fixed integer v>=3 along a sequence
of k. Consequently no uniform estimate B_k(F,S)=O(N^2/k^(1+epsilon))
with any fixed epsilon>0 follows from just the displayed assumptions.
In particular a generic O(N^2/k^2) estimate is false for actual dense
integer sets and actual short progression multiplicities.

The essential omitted hypothesis is

    F intersection(F+t)=empty.

The constructed F contains every integer in(.6N,.95N], so that hypothesis
fails strongly. Also t is not in F for sufficiently large N. This does
not contradict a return theorem using the joint density, low-count,
small-divisible-shift-exclusion hypotheses, nor does it disprove the
existence of some particularly good return. It concerns this precise
coherent weighted average.

## 1. Profile input and parameter order

Use the explicit [generic profile construction](run17-generic-profile-moment-obstruction.md).
For each selected k=1000R it supplies a cyclic spatial group
G=C_M, a {0,1}-valued finite step profile f on G times(0,1], and d independent
coordinates, with the following properties. Integration on time uses
Lebesgue measure and sums on G use probability Haar measure.

1. The profile is exactly sum-free for the addition law
   (a,u)+(b,v)=(a+b,u+v), with times outside(0,1] excluded.
2. Its density rho is at least7/20. Every spatial residue occurs at all
   times in(3/5,19/20]. Every occupied time is greater than12/25.
3. Define

       R(r)=M^-1 sum_a integral_0^1 f(a,u)f(a+r,u) du,
       I_r=M^-2 sum_(a,b) integral_(u,v>0,u+v<=1)
                       f(a,u)f(b,v)f(a+b+r,u+v) du dv.

   Then R(r)>=7/20 for every r, I_0=0, and

       Phi_k=sum_r R(r)^k I_r / sum_r R(r)^k
             >= e^-9*d/(50k^2).                    (1)

The construction uses a product of distinct prime cyclic groups, hence
is cyclic by CRT. Its primes may be chosen arbitrarily large. Choose all
of them greater than16k; since b=16k and t=Q_eta has no prime divisor
greater than8k, this ensures gcd(bt,M)=1. The lower bound(1) is uniform
in these prime choices. The AP-free sphere construction in the profile
note gives d>=c_v*k^(1-2/v), with c_v>0 depending only on fixed v.

All choices k,eta,b,t,G,f are made first. Next choose a positive integer
L that is a multiple of M, with L>=max(2M,4*6^k). This may be very large;
there is no upper restriction on L in this statement. Finally let N tend
to infinity, keeping every previously chosen parameter fixed. No exchange
of limits or uniform-in-M Riemann estimate is used.

## 2. Exact integer realization and limiting counts

Define

    F_N={n in[N]: f(n mod M,n/N)=1}.                (2)

This set is exactly sum-free for every N: an integer relation x+y=z
would give the forbidden profile relation

    (x mod M,x/N)+(y mod M,y/N)=(z mod M,z/N).

The half-open intervals in the profile make this a pointwise assertion,
including endpoints and repeated inputs. It does not rely on an almost-
everywhere modification of f. In particular T_0(F_N)=0 exactly.

For each fixed integer q, periodic Riemann sums give

    |F_N|/N -> rho,
    r_(F_N)(q)/N -> R(q mod M),
    T_q(F_N)/N^2 -> I_(q mod M).                    (3)

Here is a direct justification. In each residue class modulo M, the
points n/N have spacing M/N. For density and overlap, the functions of
time are finite step functions. Replacing time u+q/N by u can affect only
O(1) lattice points per boundary and per residue; summing all the finitely
many residues and boundaries gives o(N) after normalization. The remaining
one-dimensional Riemann sums have the stated limits.

For the count, fix input residues a,b. The grid of input times has mesh
M/N in each coordinate. Its indicator is the product of the three fixed
step functions, with the output evaluated at u+v+q/N and residue a+b+q.
Discontinuities lie on finitely many vertical, horizontal and diagonal
segments. These form a measure-zero set and their mesh neighborhoods have
area tending to zero. Ordinary two-dimensional Riemann sums therefore
converge to the integral in(3). Points with x=y are included in the exact
count; they are O(N) and do not affect its N^2-normalized limit. Constants
may depend on the fixed profile, M and q. This is sufficient because only
the finite set S-S is used below.

## 3. Progression multiplicities and the removed integer diagonal

Write nu=nu_S. Explicitly

    nu(jbt)=L-|j| for |j|<L, and nu(q)=0 otherwise.

Since gcd(bt,M)=1 and M divides L, every residue occurs exactly L/M times
among the L members of S. Counting ordered pairs by residue gives

    sum_(q congruent r mod M) nu(q)=L^2/M           (4)

for every r in G. This includes all integer differences, including q=0,
whose multiplicity is L.

Use(3) for the finitely many differences. The N^2-normalized ratio tends to

    B_k(F_N,S)/N^2 ->
       [(L^2/M) sum_r R(r)^k I_r]
       /[(L^2/M) sum_r R(r)^k - L*R(0)^k].          (5)

The numerator loses no term when integer q=0 is deleted, because I_0=0
(and T_0(F_N)=0 exactly). The denominator loses the nonnegative term
L*R(0)^k. It stays strictly positive: before division it is precisely the
sum over q!=0 of nu(q)R(q mod M)^k, and R is everywhere at least7/20 while
L>=2. Thus the limit in(5) is at least Phi_k. Nonzero integer multiples of
M remain in the sum; deleting them would be a different measure and is
neither needed nor done.

Choose N sufficiently large that the ratio is at least half the lower
bound(1). Then

    B_k(F_N,S) >= e^-9*d*N^2/(100k^2).              (6)

This explicitly retains the ordered, triangular progression multiplicities
and excludes only the integer diagonal required by the coherent-fiber
identity. The [conditioned-fiber ledger](../ARCHIVE_INDEX.md#record-096)
defines the same ratio and orientations.

## 4. All stated side conditions and the missing condition

Because k>=1000, the fixed gap

    7/20 - (1/3+7/(8k)) > 0

allows N large enough in(3) to ensure the required density. Increase N
further to ensure btL<=eta*N/16. Exact sum-freeness is already established.
The divisibility Q_eta|t is an equality by construction. Thus all displayed
conditions in the statement hold simultaneously, for arbitrarily large N.

Every integer in(.6N,.95N] lies in F_N. For N sufficiently large this
interval contains two integers differing by t, so
F_N intersection(F_N+t) is nonempty. All occupied times exceed12/25;
hence min F_N>(12/25)N and t is not a member once N>25t/12. These facts
identify precisely why this example cannot simply be substituted into
the small-prescribed-member or shift-exclusion argument.

The short candidate window also gives |F_N+S|<=N+btL<2N, while
|F_N|>N/3, so its doubling parameter K=|F_N+S|/|F_N| is below6. Thus the
usual coherent-fiber collision denominator is available here; failure
of a quadratic moment estimate is not caused by an empty denominator
or a large translation-union parameter.

For any fixed epsilon>0 choose v>max(2,2/epsilon). Equations(6) and the
AP-free cardinality estimate give, along the selected unbounded k,

    k^(1+epsilon) B_k(F_N,S)/N^2
       >= c*c_v*k^(epsilon-2/v) -> infinity.

This rules out every fixed improvement of the power1 for this generic
coherent-average class. It does not prove a matching O(1/k) upper bound
for the average, and it does not constrain a method selecting special
returns by additional arithmetic information.

## Provenance and verification

The new transfer is elementary and uses no numerical computation or
external theorem beyond the saved explicit profile construction. Its
mathematical uncertainty was whether modular uniform averages can survive
the actual short integer progression, the triangular weights and removal
of q=0. Equations(2)--(5) answer that question. Existing source context and
AP-free construction provenance are linked in the profile note. Independent
review is required before this scoped obstruction is treated as retained.
