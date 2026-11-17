# Period cost survives typical independent rounding

Run `2026-11-17T12-05-38-564Z-905bb2c7`; 17 November 2026.
Scoped RESEARCH corollary; independent review pending.

This combines two reviewed statements; it is not a lower bound for f(n).
The [universal-origin cost ceiling](run18-universal-origin-cost-ceiling.md),
[review](run18-universal-origin-cost-ceiling-review.md), forces
`log Q_eta >= 1/(18 eta)` for every sufficiently small eta when Q_eta
satisfies the exact every-N origin predicate in that note.
The [mixed rounding obstruction](run18-sparse-mixed-rounding-obstruction.md),
[review](run18-sparse-mixed-rounding-review.md), applies to mean-one
weights on [N], bounded by W, equal to 1/4 off Q_eta Z, with N>=2Q_eta.
Set mu=N/W and sample independently with probabilities w(n)/W.

Fix positive constants c<=1 and C. Suppose eta tends to zero,
mu tends to infinity, and

    P(alpha(S)<=(1/3+C eta)|S|)>=c.                 (1)

Then

    log mu >= 1/(36 eta) + (1/2)log(c/384)          (2)

for all sufficiently small eta. Indeed C eta<=1/100 eventually.
The good event in the mixed-rounding proof has a nonempty sample
and the strictly larger excess 5|S|/384. Consequently (1) and its
failure estimate imply

    c <=33/mu+64(mu^2+mu+1)/Q_eta.

For mu>=max(1,66/c), the first term is at most c/2 and
mu^2+mu+1<=3mu^2. Hence mu^2>=c Q_eta/384. Take logarithms and
apply the period bound to obtain (2). In particular
`liminf eta log mu >=1/36`.

This conclusion constrains a construction whose certified relative
error is comparable to the origin parameter eta and whose independent
rounding has success probability bounded below. It identifies an
exponential expected-cardinality cost in reciprocal precision for
that particular combination of interfaces. It does not show that an
actual witness has excess at least n/log n, nor that a rare successful
sample cannot be much smaller. It also does not give a bound in terms
of an arbitrarily smaller target error unrelated to eta.

## Near-size deletion does not evade the typical-sample obstruction

The statement persists, with changed constants, if a final output A
is obtained by deleting o(|S|) points from S. Deterministically, if d
points are deleted, intersecting a largest sum-free subset of S with A
shows

    alpha(A)>=alpha(S)-d,
    alpha(A)-|A|/3 >= alpha(S)-|S|/3-2d/3.

On the mixed-rounding good event, if d<=|S|/256, its stronger bound gives

    alpha(A)-|A|/3 >= (5/384-1/384)|S|
                           = |S|/96 >= |A|/96.

Thus a target relative error below 1/100 is still impossible on that
event for any such deletion rule, even one chosen after seeing S.
If this small-deletion bound holds on every successful outcome, the
same probability argument proves (2). If it holds only with probability
tending to one, replace c by c/2 eventually and replace 384 by 768.
This does not cover discarding a fixed substantial fraction of S or
selecting a very small favorable subconfiguration.

The reviewed final upper construction uses only a vanishing relative
size deletion. This corollary therefore closes the bounded-success,
much-smaller-sample shortcut for the same universal-period weights.
The exact limitations remain: probabilities tending to zero, strongly
correlated sampling, different outer weights, adaptive certificates,
and substantial deletions are not ruled out. No numerical computation
or new source theorem is used.
