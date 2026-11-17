# Divisor-dilated time laws and all cyclic middle-third selectors

Run `2026-11-17T04-08-08-259Z-ba89c4b5`. Scoped RESEARCH derivation;
[independent review](run17-divisor-time-selectors-review.md): PASS. This is a selector certificate, not an upper
bound for arbitrary sum-free sets or for the original integer problem.

## Question and source context

The existing C4 averaged-time law passes its nontrivial spatial selectors,
but an arbitrary-modulus analogue was not in the current checkpoint.
The discriminating question here is whether a single explicit positive
family can pass these necessary tests on every cyclic extension.
Failure would reject this family before more general sum-free optimization;
success only identifies a candidate needing stronger tests.

The starting inputs are the reviewed [C4 necessity identity](../ARCHIVE_INDEX.md#record-112),
[scalar convex-density bound](../ARCHIVE_INDEX.md#record-113), and
[divisor arithmetic density](../ARCHIVE_INDEX.md#record-114). The current
primary records checked on 2026-11-17 are Eberhard's
[arXiv v1](https://arxiv.org/abs/1401.6390) and Eberhard--Green--Manners'
[arXiv v3](https://arxiv.org/abs/1301.4579), whose record states a correction
to Lemma6.3. Neither paper is used as a black box for the identity below.
A bounded search for sum-free divisor weights, dilation time measures,
and profinite selectors located no theorem asserting this full candidate
is extremal. [DLMF 27.10](https://dlmf.nist.gov/27.10) records the standard
finite Fourier/Dirichlet-character framework; all needed arithmetic is
proved here. No novelty claim follows from these searches.

## Probability law

Let P>=2 have only prime divisors congruent to2 modulo3. Put

    R=rad(P), C=product_(p|P)(1+1/p)=sum_(d|R)1/d.

Let omega be a probability law on positive time with bounded density p.
Relative to uniform measure on C_P and Lebesgue time, define

    w_P(r,t)=(1/C) sum_(d|R,d|r) (1/d) p(t/d).             (1)

The notation p for the density is separate from the primes in products.
Formula(1) defines a probability density. Equivalently, select d|R with
probability 1/(dC), select r uniformly among multiples of d in C_P,
select T with law omega independently, and output (r,dT).
The density of that component is d*1_(d|r)*(1/d)p(t/d),
which proves both the mixture formula and its normalization.

The spatial density is exactly

    integral w_P(r,t)dt=(1/C) product_(p|P)(1+1_(p|r)).     (2)

The time marginal is sum_(d|R)(1/(dC)) D_d omega, where D_d multiplies
time by d. Pointwise on the unbounded time axis,

    0<=w_P(r,t)<=||p||_infinity,                         (3)

since the reciprocal-divisor subsum is at most C. This does NOT bound
the density after truncating and rescaling time to [0,1].
For P=4 this is precisely the earlier averaged-time parity law.

The same formula with r in C_q defines the uniform lift for every P|q;
the identical mixture representation holds with multiples of d in C_q.

## Elementary circle identity

Let I=[1/3,2/3) in R/Z, and V(x)=1_I(x mod1). This half-open interval
is pointwise sum-free, including repeated inputs. For m>=1 set

    A_m(x)=(1/m) sum_(j=0)^(m-1) V(x+j/m).

Counting the grid points in a half-open arc gives, for EVERY real x,

    A_m(x)=1/3                                  if 3|m,
    A_m(x)=1/3+(chi(m)/m)(V(mx)-1/3)             otherwise, (4)

where chi(m)=1 for m=1 modulo3 and -1 for m=2 modulo3.
One way to verify the endpoints as well as interiors is to count
integers in [m/3-mx,2m/3-mx), using ceil(B)-ceil(A).
For m=3h,3h+1,3h+2 the counts are respectively h,
h+V(mx), and h+1-V(mx). The half-open convention makes these identities
valid at their jumps, so no exceptional-scale proviso is needed.

## Exact cancellation on the base modulus

Consider the sum-free selector

    S_(k,lambda)={(r,t): k r/q + lambda t mod1 belongs to I},

where k is an integer and lambda is real. In mixture component d,
write

    m_d=(q/d)/gcd(k,q/d).

Uniform averaging over its subgroup gives selector mass

    sum_(d|R) [1/(dC)] integral A_(m_d)(lambda dT)domega(T). (5)

Suppose the additive order m=q/gcd(k,q) is divisible by some prime
p|P. Pair each divisor d not containing p with pd. Because the order
has a p factor, valuation comparison gives

    m_(pd)=m_d/p,  (pd)m_(pd)=d m_d.

If 3 divides m_d, both terms of (4) are exactly1/3. Otherwise
chi(m_d/p)=-chi(m_d), and

    (1/(pdC))*chi(m_d/p)/(m_d/p)
         =-(1/(dC))*chi(m_d)/m_d.

Thus the two error integrals cancel exactly. Formula(5) equals1/3.
In particular, with q=P every nontrivial spatial character has exact
selector mass1/3, for every lambda and every base probability law omega.
No moment, continuity or convexity is needed for this cancellation.

## Uniform control over ALL cyclic extensions

Now assume p is convex and nonincreasing. A dilation of omega has the
same property, and the reviewed scalar bound says that every positive
real sum-free measurable set has mass at most1/3 under any such law.
The set {T>0:V(lambda d m T)=1} is sum-free for any real lambda;
when lambda=0 it is empty. Consequently its omega mass is <=1/3.

If the order m has a prime in common with R, the cancellation above
applies. Otherwise gcd(m,R)=1. Then m_d=m for every d|R (check this
prime by prime in q/gcd(k,q)), and (5) becomes

    1/3+(chi(m)/m)*(B-1/3),
    B=sum_(d|R)[1/(dC)] integral V(lambda d mT)domega(T),  (6)

when 3 does not divide m. Here 0<=B<=1/3. If 3|m the mass is1/3.
Thus m=1 modulo3 gives at most1/3; m=2 modulo3 gives at most
1/3+1/(3m). The case m=1 also covers the trivial spatial character.

If Y>0 and P contains every prime p<=Y congruent to2 modulo3, an order m
coprime to R and congruent to2 modulo3 has at least one such prime
factor greater than Y. Therefore m>Y. We have proved uniformly in
all multiples q of P, all k and all real lambda,

    mu_(P,q)(S_(k,lambda))<=1/3+1/(3Y).                 (7)

This is an unconditional bound for this class of selectors only.
It does not imply the same bound for arbitrary sum-free subsets.

## Remaining mathematical tests

The law avoids the old matched-profile selector obstruction and treats
all cyclic extensions at once at the selector level. Three independent
questions remain: its maximum on general sum-free sets; preservation of
small full density after time truncation/rescaling; and quantitative
supersaturation. The initial C4 case already contains the unresolved
full C4 profile problem. Consequently(7) supplies no new bound on f(n).
No finite search or numerical computation is used in this derivation.
