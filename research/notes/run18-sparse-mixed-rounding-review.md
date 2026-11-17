# Independent review of the sparse mixed-weight rounding obstruction

Run `2026-11-17T12-05-38-564Z-905bb2c7`; reviewed 17 November 2026.

**Verdict: PASS at the stated probability-model scope.** I checked
[the frozen proof](run18-sparse-mixed-rounding-obstruction.md), SHA256

```text
66018f5bace44977cc286474a99e2aa6fe871f7f0f6af2ac8277a193554971c7
```

including its exact finite constants, all repeated-input and
inner/outer configurations, and the connection to the retained
weight recursion. No correction is required. The result rules out
a success probability bounded below in its stated sparse regime;
it does not rule out rare successful samples, other sampling laws,
or a smaller original extremal excess.

## 1. Assumptions and expected deletion cost

The mean-one assumption and `0<=w<=W` force `W>=1`, so every
sampling probability is legitimate. Outside `QZ` the common
probability is exactly `p=1/(4W)`. Since `Q>=2`, at least half
of `[N]` is outside `QZ`, giving
`mu/8<=mu_out<=mu/4`. The assumption `N>=2Q` gives

    ceil(N/Q)<=N/Q+1<=3N/(2Q).

The universe counts in Section 3 are valid upper bounds: fixing
two inputs leaves at most this many possible third vertices in
the required residue, and fixing one vertex leaves at most this
many possible partners for each pair condition. The nonzero
2-torsion residue is unique when it exists, so its universe has
at most that same size. Excluding distinctness restrictions only
increases these universe bounds.

The actual random configurations impose their own distinctness,
so their probabilities are `p^3`, `p^2`, and `p`, respectively.
Linearity of expectation is sufficient even though configurations
overlap. Multiplying their counts by the number of vertices
deleted gives exactly

    E D <=(9/2)N^3p^3/Q+9N^2p^2/Q+(3/2)Np/Q
         =(9mu^3/128+9mu^2/16+3mu/8)/Q
         <=(mu^3+mu^2+mu)/Q.

In particular a repeated input has been charged at probability
`p^2`, not `p^3`. The bound is uniform in every inner weight;
no inner probability appears in it.

## 2. Complete Schur-configuration coverage

After deletion, the remaining outer set has no repeated residue,
no distinct opposite residues, no nonzero 2-torsion residue, and
no modular Schur triple, including equal inputs. For any chosen
sum-free inner subset J, partition the three variable positions
of a possible integer Schur relation by inner/outer membership.

* Zero outer positions is excluded by J's sum-freeness.
* Three outer positions gives a three-distinct modular triple or
  the equal-input pair. Equality of an input with the output is
  impossible for positive integers; in the modular argument it
  would force the other outer input to have zero residue.
* One outer position forces its residue to be zero, a contradiction.
* Two outer input positions with inner output are excluded by
  opposite residues when distinct and the 2-torsion deletion when
  equal.
* An outer input and outer output, with the other input inner,
  must have equal residues. They are distinct integers because
  the inner input is positive, so the repeated-residue deletion
  excludes this case.

This is an enumeration by variable positions, so it also treats
the case of two positions occupied by the same outer integer.
Swapping the two input positions introduces no additional case.
Thus `J union O'` is genuinely sum-free for the original convention.

The elementary circle averaging argument supplies `|J|>=|I|/3`
for any positive integer set I, including the empty set. It is
applied after I has been sampled. Compatibility holds for every J,
so no independence between this choice and the outer deletion is
required. The exact resulting lower bound is

    alpha(S)>=|S|/3+(2/3)|O|-D.

## 3. Finite probability constants

Bernoulli variance bounds give
`P(|S|>2mu)<=1/mu` and

    P(|O|<mu/16)
      <=P(|O|<mu_out/2)<=4/mu_out<=32/mu.

The direction of the first inclusion is correct because
`mu_out/2>=mu/16`. Markov applied to the displayed expected
deletion cost gives

    P(D>mu/64)<=64(mu^2+mu+1)/Q.

These events need not be independent: the union bound alone
gives the announced total failure probability. On their common
complement,

    (2/3)|O|-D>=mu/24-mu/64=5mu/192
       >=5|S|/384>|S|/100.

The last strict inequality uses `|S|>0`, which follows from
`|O|>=mu/16` and `mu>0`. This verifies both the finite statement
with its weaker `1/100` coefficient and the stronger observation
about excluding targets with relative excess at most `1/100` on
this event. A negative finite probability lower bound is simply
vacuous; no small-mu case has been silently discarded.

Under `mu->infinity` and `mu^2/Q->0`, every failure term tends
to zero, since also `(mu+1)/Q->0`. Chebyshev additionally gives
`|S|/mu->1` in probability. Thus the interpretation for an
`o(|S|)` target is justified as sampled cardinalities grow.

## 4. Weight-recursion interface and limits

I compared the assumption with Section 7, equation (21), of the
[standalone weight proof](../../proof/lemmas/square-root-logarithmic-upper-bound.md):

    w'_N(n)=1/4+(3N/(4M))1_(Q[M])(n)w_M(n/Q).

It is exactly `1/4` whenever `Q` does not divide n. Multiples
of Q beyond `Q[M]` may also have value `1/4`; this is allowed
by the obstruction's unrestricted inner weights. The new height
parameter may exceed the actual maximum weight, which is likewise
allowed. Whenever `Q>=2` and `N>=2Q`, this family satisfies the
stated interface. Whether its chosen parameters also satisfy the
sparse asymptotic regime is a separate question, correctly left
unasserted in the frozen proof.

An event with probability tending to zero can remain nonempty at
every finite stage. The proof therefore does not invalidate a
positive-probability existence argument solely because its success
probability vanishes. The full-support remark is properly
conditional: inner probabilities can be zero or one in the actual
statement, and the proof does not claim all finite sets then have
positive probability. Correlated sampling and different outer
weight profiles remain outside the theorem.

No external random-set theorem, finite computation, or asymptotic
uniformity in a missing parameter was used. The separate source
audit provides context only. I did not edit the frozen proof or
any root handoff file, and this review makes no claim about the
unresolved constant-factor order of the original problem.
