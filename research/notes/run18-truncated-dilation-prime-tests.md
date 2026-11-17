# Small-dilation mixtures pass the limiting prime-periodic tests

Run `2026-11-17T12-05-38-564Z-905bb2c7`; 17 November 2026.
Scoped RESEARCH lemma; independent review pending.

## Statement and quantifiers

Fix a real Y>=e. Let P_Y be the finite set of primes p<=Y with
`p=2 mod3`. Independently include each such prime in a squarefree
integer d with probability `1/(p+1)`. Denote this probability law
by nu. Put

```text
D=exp(5(log Y)^2),
nu_D=nu conditioned on d<=D.                              (1)
```

For a positive integer M, let mu_(D,M) be the probability law on
positive integers obtained by drawing d from nu_D, drawing j
uniformly from [M] independently, and returning dj.
Its support lies in `[floor(D) M]`.

For each prime p, let

```text
C_p={r in C_p:r/p in[1/3,2/3)},
A_(p,a)={n>=1:a*n mod p belongs to C_p},                  (2)
```

where a is any integer. The same symbol C_p in the first line denotes
the indicated residue subset of the cyclic group of order p.
Every A_(p,a) is sum-free, including repeated inputs, since the
half-open middle third is sum-free in the circle.
For every fixed p,a the limiting mass exists, and

```text
lim_(M->infinity) mu_(D,M)(A_(p,a))
                         <=1/3+4/(3Y).                  (3)
```

The bound is uniform over all these limiting prime tests. More
precisely, the finite-M mass differs from its limit by at most p/M.
This does **not** assert one uniform finite M for all unbounded
prime moduli. It is not a bound for arbitrary sum-free sets or a
robust full-count certificate.

## 1. Exact cancellation before truncation

If `p=3k+2`, the residue set in (2) is exactly

```text
{k+1,...,2k+1}
 ={(p+1)/3,...,(2p-1)/3},
```

of size `(p+1)/3`. Its sumset modulo p misses it, including
equal-input sums. When p=2 this is the singleton {1}, whose double
is zero. If `p=3k+1`, its size is k=(p-1)/3; for p=3 its size
is one. Thus the latter prime tests have density at most one third.

If p divides a, the test is empty, since zero is not in the middle
third. Suppose therefore that a is a unit modulo p. On the
progression d[M], the limiting density in A_(p,a) is zero if p|d.
If p does not divide d, the residues ad j run through full periods
of length p, so the limiting density is `|C_p|/p`. The finite-M
error is at most p/M, uniformly in d and the unit a. Thus the
untruncated mixture has limiting test mass

```text
(1-rho_p)*|C_p|/p, rho_p=P_nu(p|d).                      (4)
```

For a bad prime p<=Y, independence in the definition gives
`rho_p=1/(p+1)`. Equation (4) is then exactly

```text
(p/(p+1))*((p+1)/(3p))=1/3.                             (5)
```

For a bad prime p>Y, no d in the support contains p, and (4) is
`1/3+1/(3p)<=1/3+1/(3Y)`. For p=3 or p=1 mod3, no d
contains p and (4) is already at most one third. Consequently the
untruncated law passes every limiting test with bound
`1/3+1/(3Y)`.

Equivalently, if `R=product_(p in P_Y)p` and
`Z=product_(p in P_Y)(1+1/p)`, the original probability of a
divisor d of R is `1/(d Z)`. This is exactly the reciprocal-divisor
mixture occurring in the reviewed
[divisor-time selectors](run17-divisor-time-selectors.md). The present
calculation needs only its prime-periodic, zero-time-frequency tests.

## 2. Elementary tail bound for the dilation size

Set `s=1/log Y`, so s>0 and p^s<=e for p<=Y. Independence gives

```text
E_nu d^s
 =product_(p in P_Y)(1+(p^s-1)/(p+1))
 <=exp(sum_(p in P_Y)(p^s-1)/(p+1))
 <=exp((e-1)*sum_(p in P_Y)1/p)
 <=exp((e-1)(1+log Y)).                                 (6)
```

Only the elementary harmonic bound
`sum_(p<=Y)1/p<=sum_(m<=floor Y)1/m<=1+log Y` is used.
Markov's inequality and (1) give

```text
r:=P_nu(d>D)
 <=D^(-s) E_nu d^s
 <=exp(e-1)*Y^(e-6)
 <=1/Y.                                                 (7)
```

For the last inequality, write L=log Y>=1. The logarithm of the
ratio of the preceding bound to 1/Y is
`(e-1)+(e-5)L<=2e-6<0`, since e<3. This is why the coefficient
five, rather than four, is used in D. No asymptotic prime estimate
or numerical evaluation is needed.

The event d<=D has positive probability: d=1 has positive probability.
Because d is integer, conditioning on d<=D is identical to
conditioning on d<=floor(D); the nonintegral endpoint causes no
additional loss.

## 3. Renormalization and the test bound

If r>0, write the original law as

```text
nu=(1-r)nu_D+r nu_bad.
```

For every function g of d with values in [0,1], this identity gives

```text
|E_nu_D g-E_nu g|
 =r*|E_nu_D g-E_nu_bad g|<=r.                            (8)
```

For r=0 the same inequality is immediate. This is the total
variation convention `sup_B|nu_D(B)-nu(B)|`; there is no factor
two for [0,1]-valued tests. It is the same elementary conditioning
principle as the normalization ledger in
[divisor-weight truncation](../ARCHIVE_INDEX.md#record-114).

Apply (8) to the limiting density on d[M] for each prime test.
Equations (4)--(7) prove (3). The same argument applies to the
finite-M density, and its distance from the limiting test remains
at most p/M after either mixing or conditioning. Independence of
prime factors and the exact values rho_p are asserted for nu only;
they are not assumed to survive the truncation.

## Scope and route value

The maximum retained dilation is `exp(O((log Y)^2))`, while the
limiting prime-periodic error is O(1/Y). The proof needs no universal
single period in its quantitative estimates. The original, untruncated
law can be indexed by divisors of a large primorial, but after
conditioning every retained dilation individually obeys (1).

This passes a necessary family of periodic tests. It neither proves
the mixed-modulus divisor-weight inequalities in the
[fractional-duality formulation](../ARCHIVE_INDEX.md#record-148)
nor controls general sum-free subsets, nonzero time-frequency
selectors, or a Schur supersaturation threshold. The limiting-in-M
quantifier must also be retained: the term p/M prevents this proof
from asserting uniform control over all primes at one finite M.
No new upper bound for the original extremal problem follows here.

This is an elementary bounded continuation of the three saved divisor
interfaces linked above. No new external theorem, numerical trial,
or root handoff edit was used.
