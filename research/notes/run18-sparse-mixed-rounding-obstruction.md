# Typical sparse Bernoulli rounding has a fixed excess

Run `2026-11-17T12-05-38-564Z-905bb2c7`; 17 November 2026.
Scoped RESEARCH probabilistic obstruction; independent review pending.

## 1. Exact finite statement

Let N,Q be positive integers with `Q>=2` and `N>=2Q`. Let
`w:[N] -> [0,W]` have mean one and satisfy

```text
w(n)=1/4 whenever Q does not divide n.
```

Choose a random subset S of [N] by independent inclusion, with
probability `w(n)/W` for each n. Put `mu=N/W`. Then

```text
P(alpha(S)>=|S|/3+|S|/100)
 >=1-33/mu-64*(mu^2+mu+1)/Q.                              (1)
```

As usual a negative right side is harmless. Here alpha excludes
every solution `x+y=z`, including repeated inputs. The estimate is
uniform over all allowed weights on the multiples of Q; no upper
regularity or distribution condition on those inner weights is used.

In particular, along any sequence of such instances with

```text
mu -> infinity, mu^2/Q -> 0,                              (2)
```

the displayed fixed excess occurs with probability tending to one.
Consequently a target excess that is o(|S|) cannot occur with
probability bounded away from zero in this regime. This is a
statement about typical independent Bernoulli samples. It does not
exclude rare successful realizations, a positive-probability existence
proof whose success probability tends to zero, or correlated sampling.
It is not a lower bound for f(n).

## 2. The outer sample and all forbidden residue configurations

Write

```text
V={n in[N]:Q does not divide n},
O=S intersection V, I=S intersection QZ,
p=1/(4W), mu_out=E|O|=|V|/(4W).
```

The variables on V are independent with common probability p. Also
W>=1, since w has mean one. Since Q>=2,

```text
|V|>=N/2, mu/8<=mu_out<=mu/4, E|S|=mu.                    (3)
```

Each residue class modulo Q contains at most

```text
m_Q=ceil(N/Q)<=N/Q+1<=3N/(2Q)                            (4)
```

members of [N]. Consider the following configurations in O:

1. Ordered triples `(x,y,z)` of three distinct integers with
   `x+y=z mod Q`; denote their number by T3.
2. Ordered pairs `(x,z)` of distinct integers with `2x=z mod Q`;
   denote their number by T2. These are the repeated-input Schur
   configurations with an outer output.
3. Ordered distinct pairs `(x,y)` with `x=y mod Q`; call their
   number R_eq.
4. Ordered distinct pairs `(x,y)` with `x+y=0 mod Q`; call their
   number R_opp.
5. Points x with `2x=0 mod Q`; call their number H2.

All points in these configurations are outer points, so none has
zero residue. In item 5, at most the single nonzero residue Q/2
is possible, and it exists only when Q is even.

Delete from O **every vertex** occurring in any of these
configurations. Call the number of deleted vertices D and the
remaining set O'. This deterministic rule depends only on O.
The deletion count satisfies

```text
D<=3T3+2T2+2R_eq+2R_opp+H2.                              (5)
```

Repeated counting of a vertex only makes this upper bound larger.
Avoidance of all five configurations persists after deletion.

## 3. Expected deletion cost, including degeneracies

Given x,y, at most m_Q choices of z satisfy their required output
residue. Given x, at most m_Q choices of a second vertex satisfy
any of the pair conditions. Thus the corresponding universe counts
are at most `N^2 m_Q` for item 1, `N m_Q` for each of items 2--4,
and m_Q for item 5.

Independence contributes p^3 only for the three-distinct-vertex
configurations. The diagonal and other pair configurations have
probability p^2, and the half-residue points have probability p.
Using (4)--(5) gives the explicit expectation

```text
E D <=(9/2)*N^3*p^3/Q+9*N^2*p^2/Q+(3/2)*N*p/Q
     =(9mu^3/128+9mu^2/16+3mu/8)/Q
     <=(mu^3+mu^2+mu)/Q.                                 (6)
```

These estimates do not require independence between overlapping
configurations; linearity of expectation suffices. In a modular
Schur triple of outer points, equality of an input with its output
would force the other input's residue to be zero. Such degeneracies
cannot occur here. The only genuine repeated-vertex Schur case is
the equal-input pair of item 2, and it has been charged at p^2,
not at p^3. The repeated outer input whose output is inner is instead
covered by item 5.

## 4. Compatibility with any sum-free inner subset

For **every** sum-free subset J of I, the integer set `J union O'`
is sum-free. To see this, consider a possible ordinary sum relation.

- If all three elements lie in J, it is excluded by the choice of J.
- If all lie in O', their residues would form item 1 or item 2.
  Positive integers exclude a literal equality of an input with
  the output, so these are all cases.
- Exactly one outer element is impossible: the other two residues
  are zero, forcing that outer residue to be zero as well.
- If two outer elements are the inputs and the output lies in J,
  distinct inputs give item 4, while equal inputs give item 5.
- If one outer element is an input and another is the output, the
  remaining inner input has residue zero. The two outer residues
  must coincide. These are distinct integers because the inner input
  is positive, so item 3 excludes the relation.

This treats every input/output position and every repeated-input
case. It uses actual residue addition and positivity, not statistical
independence between the inner and outer sets.

For completeness, every finite positive integer set I has a sum-free
subset of size at least |I|/3. For uniform theta on the circle, the
set of elements n with `n theta in(1/3,2/3) mod1` is sum-free,
including repeated inputs. Since every n is nonzero, each belongs
with probability 1/3. Its expected size is |I|/3, so some theta
achieves at least this size. This elementary averaging fact also
handles I empty.

Choose such a J after observing I. By the just-proved compatibility,

```text
alpha(S)>=|I|/3+|O'|
         =|S|/3+(2/3)|O|-D.                              (7)
```

There is no assumption that the full inner sample is sum-free.
The assertion is uniform even if some inner inclusion probabilities
are zero or one.

## 5. Concentration and the finite probability bound

Independent Bernoulli variables, including degenerate ones, give

```text
Var|S|<=mu, Var|O|<=mu_out.
```

Chebyshev yields

```text
P(|S|>2mu)<=1/mu,
P(|O|<mu/16)
 <=P(|O|<mu_out/2)<=4/mu_out<=32/mu.                      (8)
```

The first inclusion in the second line follows from mu_out>=mu/8.
Markov's inequality and (6) give

```text
P(D>mu/64)<=64*(mu^2+mu+1)/Q.                            (9)
```

By a union bound, outside a set of probability at most the error in
(1), all three events

```text
|S|<=2mu, |O|>=mu/16, D<=mu/64
```

hold simultaneously. On this event (7) gives

```text
alpha(S)>=|S|/3+mu/24-mu/64
         =|S|/3+5mu/192
         >=|S|/3+5|S|/384
         >=|S|/3+|S|/100.                                (10)
```

The event also forces |S|>0. The stronger constant 5/384 in (10)
means that, for example, any event requiring
`alpha(S)<=|S|/3+epsilon|S|` with epsilon<=1/100 is contained in
the failure event in (8)--(9). This proves (1) and its stated
asymptotic consequence under (2).

## 6. Route value and exact limitation

The weights in the retained one-step dilation recursion have exactly
the stipulated constant value 1/4 away from multiples of their newest
modulus Q. This result identifies a typical-sample failure when the
expected sampled size is much smaller than sqrt(Q), even allowing
arbitrary admissible inner weights. It does not assert that the
particular large-N rounding already used for the reviewed upper bound
lies in this sparse regime.

The [parallel source audit](../ARCHIVE_INDEX.md#record-150)
compares uniform random-subset thresholds with this mixed model.
No external random-set theorem is a premise of the proof: the modular
counts, deletion, circle averaging, Chebyshev and Markov bounds above
establish the exact statement directly. The uniform-binomial results
must not be silently applied to the possibly inhomogeneous inner
weights here.

This does not rule out rare successful Bernoulli realizations. When
a sampling law has full support, even extremely atypical finite sets
can have positive probability; (1) does not contradict that fact.
It rules out success probability bounded below in the asymptotic
regime (2), not all possible positive-probability existence arguments.
Correlated rounding and different outer-weight profiles are outside
its assumptions. No lower bound for the original extremal function
or resolution of its constant-factor order is claimed.

[Jacobian discovery](../ARCHIVE_INDEX.md#record-151) returned
bounded finite-distribution and finite-modulus operations, none
matching this parameter-uniform proof. No numerical trial or finite
sweep was needed or run. No root handoff file was edited.
