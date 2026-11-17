# Averaged circle-phase stability: source and interface audit

Run `2026-11-17T04-08-08-259Z-ba89c4b5`; 17 November 2026.
Bounded source audit; no original-problem completion.

**Outcome.** A directly relevant local approximate-character theorem
exists: Christ--Shao, Proposition 5.1, allows arbitrary measurable
circle phases, an error outside a small exceptional set, and an
arbitrary real frequency. Its one-dimensional case applies on an
interval square. A short sum-fiber argument can extend the same-phase
version to the positive triangle. This avoids applying a uniform-error
real-valued theorem or a whole-group homomorphism test to the wrong
domain. The remaining arithmetic issue is deriving the required
circle-valued functional residual from the interval-profile geometry.

## 1. Search, current version, and source capture

The search used restricted-domain Cauchy/Pexider stability, stability
in measure, approximate characters, near-extremizing Young phases,
and local homomorphism terminology. The phrase **approximate characters**
led to the useful result. Searches were expanded using its authors,
proposition number, references, and correction/erratum terms.
Exact search responses, current records, primary full text/PDF,
and the retrieval command are in the
[source manifest](../../research/ARCHIVE_INDEX.md#record-011).

The [current Christ--Shao arXiv record](https://arxiv.org/abs/1006.4318)
lists only v1, dated 22 June 2010. The
[author's publication list](https://shao.ku.edu/research) confirms
publication in *Advances in Mathematics* 230(3) (2012), 957--977,
DOI [10.1016/j.aim.2012.03.020](https://doi.org/10.1016/j.aim.2012.03.020).
The publisher full page returned HTTP 403; its search metadata and
the author page agree on the bibliographic record. The author page
links the same arXiv version. No correction or withdrawal was displayed
on the inspected current records or located by the bounded targeted
search. This is not an exhaustive erratum claim.

The statement used below is read directly from
[Section 5 of the primary text](https://arxiv.org/html/1006.4318v1),
also [saved locally](https://arxiv.org/html/1006.4318v1).

## 2. Exact applicable primary interface

Christ--Shao Proposition 5.1 states: for a bounded disk
`D subset R^d` and every `e>0`, there exists `d0>0` such that
measurable `psi:D -> R` and `h:D+D -> C` satisfying

    |{(u,w) in D^2:
       |exp(i[psi(u)+psi(w)])-h(u+w)|>d0}|<d0

admit `xi in R^d` and `z in C`, `|z|=1`, with

    ||exp(i psi)-z exp(i xi dot s)||_(L2(D))<e.

It explicitly includes `d=1`, where a disk is an interval.
A measurable circle-valued input has a measurable argument, so
no continuous real lift or small-winding assumption is required.
The frequency is unrestricted in `R^d`, not constrained to the
integer characters of a compact circle. The proof obtains compactness
after modulation; it gives no explicit modulus `d0(e)`.

For the same-phase triangle problem, take `D=(0,1/2)`,
`exp(i psi)=f|D`, and `h=f` on `(0,1)`. If the unweighted
triangle residual is `R`, Markov gives the displayed exceptional
measure at most `R/d0`. Hence `R<=d0^2/2` suffices for the
source's strict hypothesis. This is the exact source interface;
the extension to all times is a separate elementary deduction.

## 3. The bounded extension check and its limits

Suppose the source gives

    k=||f-z exp(i lambda s)||_(L1(0,1/2))

small. Comparing the two inputs to this model and pushing the
sum `u+w` from `(0,1/2)^2` yields

    integral_0^1 min(s,1-s)
        |f(s)-z^2 exp(i lambda s)| ds <=R+k.

On the overlap `[1/4,1/2]`, this output approximation and the
source's input approximation force `z` close to `1`. Truncating
the two endpoints then gives an unweighted `L1(0,1)` approximation
by `exp(i lambda s)`. A separate fully stated proof is being
saved as the triangle same-phase lemma; the present source audit
does not treat the interval-profile-to-phase implication as known.

An averaged residual using the balanced weight `3(u+w)` can
also be converted to an unweighted one: for `0<a<1`, boundedness
of circle-valued phases gives

    R_unweighted<=a^2+R_weighted/(3a).

The small triangle `u+w<a` has area `a^2/2` and residual at
most two. Thus the vanishing weight at the origin is manageable;
one must not simply assert a uniform lower bound for it.

The completely general Pexider premise
`f(u)g(w) approximately h(u+w)` is broader than the same-phase
premise. On a square it can plausibly be reduced by swapping
`u,w` and controlling `f/g`; a global propagation argument would
then still be needed. That variant is not established or required
here. Root's selected geometric route may instead supply the
same `F` phase in both input slots.

## 4. Other primary interfaces and the actual remaining bridge

The previously inspected [Tabor 1996 restricted-domain result](../../research/ARCHIVE_INDEX.md#record-056)
uses uniform pointwise error for real/vector-valued additive
equations. It is not an averaged circle-valued theorem. No lifting
of a circular residual to a small real residual follows merely
from choosing representatives.

Charalambides' [current v2](https://arxiv.org/abs/1203.5370),
24 October 2012, studies exact almost-everywhere Cauchy--Pexider
equations on suitably curved submanifolds. Its
[primary text](https://arxiv.org/html/1203.5370v2) supplies exact
exponential-affine rigidity under geometric conditions. It is not
the needed averaged-error interval theorem; no quantitative
triangle conclusion is imported from it.

The [all-three common-character model](../../research/ARCHIVE_INDEX.md#record-057)
currently permits arbitrary measurable interval positions. To use
the phase theorem, one must still prove that the centered spatial
identities fix the relevant interval centers compatibly, including
orientation/sign choices and quotient endpoint errors, and that low
count forces a small residual

    |f(u)f(w)-f(u+w)|

for a consistently selected unimodular phase. Small spatial symmetric
difference alone does not state this residual estimate. Nor does an
implicit fixed-precision phase stability modulus improve the original
quantitative origin radius by itself.

The [drifting critical profile](../../research/ARCHIVE_INDEX.md#record-058)
already shows why arbitrary real slope must be retained. The bounded
next discriminator is therefore the geometric conversion to a
same-phase triangle residual, not another uniform-error functional
equation theorem or a numerical search over phases.

No computation was needed: the useful operation was locating and
checking the primary local approximate-character theorem, followed
by explicit one-dimensional integral identities.
