# Independent review of the universal-origin modulus obstruction

Run `2026-11-17T12-05-38-564Z-905bb2c7`; 17 November 2026.
Reviewer: `/root/run17_fresh_upper_review`.

**Verdict: PASS at the stated certificate and declared-recursion scope.**
Reviewed [the route-ceiling note](run18-universal-origin-cost-ceiling.md),
frozen SHA256

```text
f449fe935afb60848057d36554035a663dc62a16c32dd43daa6f3c11ed925466.
```

The periodic example applies to the exact new predicate (P), and
forces `log Q=Omega(eta^-1)`. This is not a lower bound for
`f(n)-n/3`, nor a lower bound for all possible upper constructions.
No correction to the frozen note is needed.

## 1. The finite periodic counterexample

For `p=3k+2`, the proposed interval
`C={k+1,...,2k+1}` has k+1=(p+1)/3 elements and avoids zero.
Its ordinary sum interval is `[2k+2,4k+2]`. Modulo p, its
nonwrapped part is above C and its wrapped part lies in `[0,k]`.
Hence `(C+C) intersection C` is empty, including all equal-input
pairs. This also covers p=2: C={1} and 1+1=0 modulo 2.

If p does not divide the positive integer Q, choose any r in C
and take `d=r Q^(-1) mod p`. This is a unit, and dQ belongs to C.
The periodic pullback A_N consequently has **zero full ordered
integer Schur count**, because every integer solution would reduce
to a forbidden residue solution. Repeated inputs cause no exception.

Its density tends to `1/3+1/(3p)`. The strict prime condition
`p<1/(3eta)` therefore leaves a positive density gap above the
predicate's threshold. For every sufficiently large N the density
condition holds. Choose such an N also with
`N>=max(Q,Q/kappa)`. Then Q is an actual member of A_N and of
`QZ intersection[1,kappa N]`. Thus the left side of (P) is at
least one while its right side is zero.

This works for every fixed positive kappa and every nonnegative
count threshold admitting zero, however small either is. All of
Q,kappa,tau are fixed before N, as (P) requires. It defeats even a
version of (P) asserted only above an arbitrary fixed N onset.
There is no need to synchronize N with p or to discard an endpoint
rounding error: the limiting density has a strict margin and N can
be made arbitrarily large. Since each distinct prime under the stated
cutoff must divide Q, their product divides Q.

## 2. Prime-number input and its range

I read the saved published extraction at printed p.431 and reopened
the [current primary record](https://arxiv.org/abs/1802.00085) and
[v3 text](https://arxiv.org/html/1802.00085v3). The record still lists
v3, revised 27 November 2018. The HTML's generated 2026 date is not
a newer revision. Theorem 1.2 applies to q>=3 and coprime a,q;
its constants are bounded by (1.10)--(1.11). Thus q=3,a=2 gives
the saved error `x/(840 log x)` for x>=8*10^9, with no extra
unproved number-theoretic hypothesis.

At `y=1/(6eta)`, the sufficient explicit range is
`eta<=1/(48*10^9)`. The theorem then gives
`theta(y;3,2)>=y/2-y/(840 log y)>=y/3`. Every prime counted
is strictly below `1/(3eta)=2y`, so the necessary divisibility
indeed yields `log Q>=1/(18eta)`. No prime at the strict cutoff
has been silently included.

This is the same prime input as in the already reviewed
[universal-period note](../ARCHIVE_INDEX.md#record-146) and its
[review](../ARCHIVE_INDEX.md#record-147). Its
[saved source manifest](../ARCHIVE_INDEX.md#record-149)
records the published PDF, whose SHA256 remains
`958b0390475236b68afdec28ce006b1a1d6ac59484eea9443e0b287e9f61a541`.
The existing published theorem is used within its scope; its internal
computations do not need to be rerun for this application.

## 3. What the cost lower bound does and does not imply

In the retained compatible-weight recursion the actual declared
radius satisfies kappa<=eta/16<1. Consequently each declared
height multiplier `2Q/kappa` costs at least log Q. Its declared
minimum interval length uses the same multiplier up to a ceiling.
The last used eta is a fixed constant multiple of the target epsilon,
so this parameter ledger must pay `Omega(epsilon^-1)` already at
that stage. The new upper proof achieves this order for its total
logarithmic ledger. Altering only its fixed return or stability
constants cannot remove the necessary prime factors from Q.

This conclusion concerns that universal set-independent predicate
and those declared parameters. A large declared height bound need
not be the smallest possible height of the resulting weights.
Likewise, an upper bound on the witnesses' maximum sum-free subsets
does not give a matching lower bound for those witnesses. The note
explicitly avoids both inferences, as well as a lower bound for f.

A period chosen after seeing the test set would evade the quantifier
used in the periodic obstruction, but would no longer directly define
one universal weight chosen before all test sets. The note correctly
leaves that minimax/construction change as a separate unproved route.
The result does not rule out other certificates, different weight
recurrences, or a different conversion to integer witnesses.

No numerical computation was needed. The frozen proof was left
unchanged, and no root handoff or phase file was edited.
