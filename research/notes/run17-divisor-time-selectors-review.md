# Review of divisor-dilated time laws and cyclic selectors

Run `2026-11-17T04-08-08-259Z-ba89c4b5`; 2026-11-17.
Independent scoped RESEARCH review by `run17_occupancy_trial`: **PASS**.
Reviewed [the saved derivation](run17-divisor-time-selectors.md), including
its cited local scalar reduction and averaged-time normalization. No
computation is needed; all delicate endpoint and valuation cases admit
exact checks below. This review does not establish an arbitrary sum-free
profile bound or any new estimate for the original integer problem.

## Half-open identity and endpoints

The circle interval I=[1/3,2/3) is pointwise sum-free. The sum of two
representatives lies in [2/3,4/3); modulo1 this avoids I, including
at the endpoints and when the two inputs coincide.

Write v={mx}. Counting integers in [m/3-mx,2m/3-mx) gives
ceil(2m/3-mx)-ceil(m/3-mx). For m=3h this equals h. For m=3h+1 it
is

    h + ceil(2/3-v)-ceil(1/3-v) = h+1_I(v).

For m=3h+2 it is

    h + ceil(4/3-v)-ceil(2/3-v) = h+1-1_I(v).

At v=1/3 the two indicator expressions take their inside values; at
v=2/3 they take their outside values. Hence equation(4) holds pointwise
for every real x, not merely almost everywhere. Integrating it against
an arbitrary atomic time law is legitimate. The mixture formulation,
rather than a Lebesgue density formula, defines the extension to such
laws when the cancellation paragraph dispenses with density assumptions.

## Mixture normalization and subgroup orders

For a fixed d|R, the subgroup of multiples of d in C_q has uniform-density
function d*1_(d|r), because d divides q. The law of dT has time density
p(t/d)/d. Multiplying and then weighting by1/(dC) gives exactly the d
summand of equation(1). The mixture weights sum to1 since C=sum_(d|R)1/d.
Integrating over time leaves C^(-1) times the count of squarefree divisors
d|R of r, which is the product in equation(2). The unscaled height bound
follows from p(t/d)<=||p||_infinity and the reciprocal-divisor subsum
being at most C. Rescaling the time axis would introduce a Jacobian, so
the explicit scope restriction after(3) is essential and correct.

For P=4, R=2 and C=3/2. The total residue-time density is

    (2/3)p(t)+(1/3)1_(2|r)p(t/2).

Each odd residue has total mass1/6 and conditional law omega; each even
residue has total mass1/3 and conditional law(omega+D_2 omega)/2.
Thus this is precisely the earlier averaged-time parity law.

On the subgroup of multiples of d, r=dj and kr/q=kj/(q/d), whose image
has order m_d=(q/d)/gcd(k,q/d) and is uniform. This proves equation(5)
with no assumption that k is primitive or that q is squarefree.

## Valuation cases and uniform extension estimate

Fix a prime ell|P that also divides m=q/gcd(k,q), and pair d with ell*d
for d not divisible by ell. Let a=nu_ell(q), b=nu_ell(k); for k=0 one
may take b=infinity, but the present positive-order-valuation case
necessarily has finite b<a. Since ell does not divide d,

    nu_ell(m_d)=a-b,
    nu_ell(m_(ell*d))=a-b-1.

All other valuations are unchanged. Therefore m_(ell*d)=m_d/ell,
including the boundary a-b=1, when the quotient loses its ell factor.
Also (ell*d)*m_(ell*d)=d*m_d, so the time argument is identical in the
two errors. As ell=2 modulo3, the mod3 character changes sign. The
weights1/d cancel the order denominator exactly as displayed. If3|m_d,
then3 also divides the paired order since ell is not3; both errors are
zero. This proves exact cancellation on every cyclic extension, and
covers prime powers in both P and q.

If instead gcd(m,R)=1, then nu_ell(q)<=nu_ell(k) for every ell|R.
Dividing q by the squarefree d cannot create a positive order valuation
at any of these primes. At primes outside R the numerator q/d has the
same valuation as q. Consequently m_d=m for every d|R, exactly as
required for(6), including the trivial character k=0.

The map T -> lambda*d*m*T modulo1 is an additive homomorphism for every
real lambda. Its inverse image of I on positive time is measurable and
pointwise sum-free; for lambda=0 it is empty. The reviewed convex scalar
bound therefore gives each integral in B at most1/3. Positivity and the
normalized mixture weights give0<=B<=1/3. The two signs in(6) yield the
claimed bounds, and3|m is handled separately by the constant grid count.

For the final quantitative display take Y>0 (making this explicit in the
statement would remove an otherwise implicit convention). If m=2 modulo3,
then some prime factor of m is2 modulo3; gcd(m,R)=1 and the assumed
prime coverage force that prime to exceed Y. Hence m>Y, proving the
uniform1/3+1/(3Y) selector estimate.

All deductions remain confined to the displayed middle-third homomorphism
selectors. The outstanding general-profile, time-normalization-height,
and supersaturation questions are correctly retained. No correction to
the mathematics is required.
