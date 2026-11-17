# Independent review of triangle circle-phase stability

Run `2026-11-17T04-08-08-259Z-ba89c4b5`; 17 November 2026.
Reviewer: `run17_occupancy_trial`. Scoped RESEARCH review.

**Verdict: PASS at the stated qualitative functional scope.** No correction
is needed. This review does not verify the subsequent spatial composition,
assign an effective stability modulus, or resolve the original problem.

Reviewed frozen artifacts:

- [Triangle phase lemma](../../proof/lemmas/approximate-characters-on-an-interval.md), SHA256
  `2e177ea25365cadc431c4d2922262675c67f7ffbef3d3243783bad72f5782ef1`.
- [Source/interface audit](../literature/run17-circle-phase-literature.md), SHA256
  `c23a367050d0c6b0c240af01aafc411f7ef6119a9a4d2079eaa88bde12ffca1a`.
- [Source manifest](../../research/ARCHIVE_INDEX.md#record-011) and the
  [saved primary text](https://arxiv.org/html/1006.4318v1),
  SHA256 `28fdfb1cdcba2f7972569f5e339195ec6b0af94f4079138b2597b77bb30b13d0`.

## 1. Primary theorem and current scope

I read Proposition 5.1 directly in the saved primary HTML and independently
opened the [current arXiv record](https://arxiv.org/abs/1006.4318) and
[versioned primary text](https://arxiv.org/html/1006.4318v1) during this
review. The record still lists only v1, submitted 22 June 2010. The saved
author publication page confirms the stated 2012 journal bibliographic
record. The audit accurately records the publisher-page retrieval failure
and confines its correction search to the inspected sources; it does not
claim an exhaustive absence of errata.

Proposition 5.1 is stated for a bounded disk in arbitrary dimension, with
measurable real input phase and measurable complex output function. Its
small exceptional set is measured with ordinary Lebesgue measure, and its
conclusion is an L2 approximation by a unimodular constant times an
exponential of unrestricted real frequency. Thus dimension one and the
interval `(0,1/2)` are permitted. The source proof explicitly allows
translation and scaling of the disk. No sphere hypothesis from the main
restriction problem is imposed in this proposition.

The present application supplies a measurable principal argument of the
circle-valued input; this is a Borel measurable lift, with no assertion
that the lift is continuous or that its additive residual is small.
The output function in the primary proposition is the given `f` on
`(0,1)`. The source gives precisely the qualitative uniform modulus
needed, with no restriction on the resulting frequency.

## 2. Source application and null sets

Changing `f` on a one-dimensional null set is harmless: each input
projection and the sum projection from the triangle has an absolutely
continuous marginal. A principal argument can therefore be taken after
making `f` unimodular everywhere. Endpoint choices also have measure zero.

For `D=(0,1/2)`, its square lies in the positive triangle. With the
source tolerance `dstar` and the chosen
`delta=min(h0,dstar^2/2)`, Markov gives exceptional measure at most
`R/dstar<=dstar/2<dstar`. This meets the strict source hypothesis,
including when the original bound is `R<=delta`.
The source's L2 error `<h0` gives L1 error
`k<h0/sqrt(2)<=h0`; no normalized-measure factor is missing.

## 3. Sum propagation and removal of the constant phase

The two input replacement errors integrate over `D^2` to
`2|D|k=k`. The sum projection has fiber length
`min(s,1-s)` on `(0,1)`, without an additional Jacobian factor when
using coordinates `(u,s=u+w)`. Hence the weighted output error relative
to `c^2 exp(i xi s)` is at most `R+k`.

On `J=[1/4,1/2]`, both the original local approximation and the
propagated output approximation apply, and the fiber weight is at least
`1/4`. Since `|J|=1/4`, the comparison yields

    |c-c^2|/4 <= k+4(R+k),
    |1-c| <= 16R+20k,
    |1-c^2| <= 32R+40k.

These constants and the use of `|c|=1` are correct. This overlap is
essential: it forces the constant phase from the local theorem close to
one. The proof does not discard that phase without justification.
All assertions here are integrated statements, so no conclusion on an
exceptional fixed sum-time fiber is required.

## 4. Endpoint losses, parameters, and weighted residual

The two omitted intervals have total length `2a`; the pointwise error
is at most two, giving loss `4a`. The middle interval has fiber weight
at least `a`, so the complete bound is

    4a+(R+k)/a+32R+40k.

For `a=epsilon/16`, `h0=epsilon^2/10000`, and
`0<epsilon<=1`, this is at most

    epsilon/4+32epsilon/10000+72epsilon^2/10000
        <=0.2604epsilon<epsilon.

The choices of `a,h0,dstar,delta` precede the choice of `f`.
The source is used on one fixed interval. This proves the stated
uniform quantifiers and permits every real slope; it supplies no bound
on that slope or effective formula for `delta(epsilon)`. Tolerances
larger than one are covered by the proof at tolerance one.

For the optional balanced-weight bridge, the region `u+w<b` has area
`b^2/2`; the residual is at most two. Outside it the weight is at least
`3b`. Thus `R<=b^2+Rmu/(3b)` is valid. Choosing
`b=Rmu^(1/3)` for `0<Rmu<1` gives
`R<=(4/3)Rmu^(2/3)`. The zero case and the stated sufficient tolerance
`Rmu<=min(1/2,(3delta/4)^(3/2))` are also correct.

## 5. Scope retained

The verified result concerns the same circle-valued function in the
two input slots and the output slot on the positive triangle. It is
not a general Pexider theorem, a quantitative real-valued lifting
statement, or a homomorphism test on the whole circle group. Deriving
its residual from finite spatial interval models remains an independent
input, as the lemma and source audit expressly state. No numerical
computation or new export method was used in this review.
