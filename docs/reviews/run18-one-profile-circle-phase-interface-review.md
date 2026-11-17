# Independent review of the one-profile circle and phase interface

Run `2026-11-17T12-05-38-564Z-905bb2c7`; 17 November 2026.

**Verdict: PASS at the stated conditional interface.** I independently
checked [the frozen proof](../../proof/lemmas/phase-alignment-of-interval-slices.md),
SHA256

```text
0abe5a49ff2edfc37416a8a35a45862f516c10194a1463615171b2c797647825
```

including its full-count finite-to-circle conversion and the endpoint
geometry at interval length exactly one third. It assumes a measurable
common-character interval approximation and a scalar mass error; it
does not construct that approximation. No centered-profile or
overlap-anchor premise is used in the conclusions.

## Exact-length replacement and counts

Each finite cyclic interval has a canonical half-open circle arc
representative, with a measurably chosen center since only finitely
many finite interval sets occur. The concentric exact-third arc is
nested with the representative. Their preimages are therefore nested,
so the symmetric-difference measure is exactly the difference of
their grid measures. A length-one-third arc has grid measure within
`1/n` of one third. This proves the integrated F-to-B error at most
`2delta+M+1/n`, safely below the defined `a=2delta+M+2/n`.

Replacing three bounded indicator factors in the actual full self
count costs at most the sum of their spatial L1 errors. The ordinary
time triangle has input marginals `1-s` and output marginal `s`,
so the combined integrated error is at most `2a`. This step retains
all original fiber correlations; only after replacement are the
sets full character preimages and their count reducible to `C_n`.

In the uniform-residue coupling, each input moves within one grid
cell and can change its arc indicator only in one of at most two
boundary cells. The output displacement is less than `2/n`.
Conditional on the two within-cell displacements, its residue is
uniform; at most two residues can cross each endpoint. Thus the
pointwise count error is at most `2/n+2/n+4/n=8/n`. Integrating
over the time triangle of area one half gives precisely `4/n`.
This proves `E_circle<=J+2a+4/n`. No cyclic interpolation of the
arbitrary original F sections or translated-count hypothesis occurs.

## Phase geometry and reconstruction

For two exact-third input arcs and an exact-third output arc, the
translation-invariant center defect is
`d=||p(u)+p(w)-p(u+w)||`, with `p=c+1/2` and `0<=d<=1/2`.
The convolution triangle on `[0,2/3]` has density
`C(x)=min(x,1/3,2/3-x)`. Direct integration gives the claimed
count `H0(d)-H0((d-1/3)_+)`.

For `d<=1/3` this is `d^2/2`. For `1/3<=d<=1/2` its derivative
is `C(d)-C(d-1/3)=1-2d>=0`. Hence the global lower bound
`(1/2)min(d,1/3)^2>=(2/9)d^2` holds on every wrap regime,
including the endpoints. In particular the length-one-third endpoint
does not require a strict inequality from an earlier anchor lemma.

The phase chord is at most `2pi d`; Cauchy--Schwarz and the triangle
area give the stated residual `3pi sqrt(E_circle)`. The reviewed
[quantitative phase theorem](../../proof/lemmas/quantitative-character-stability.md)
applies to this measurable unimodular function with constant
`C_phase=20000 exp(24)`. For circular center distance d, the chord
is at least `4d`, while equal-arc symmetric difference is at most
`2d`. Thus reconstruction costs at most half the chord. The
symmetric difference of the two arcs has at most four boundary
points, giving the safe additional finite-grid error `4/n`.
This checks every coefficient in formula (5) of the proof.

The sign is consistent: the target arc center is `1/2+lambda s`,
so its preimage is exactly `1_[1/3,2/3)(chi(g)-lambda s)`.
The half-open middle-third arc is sum-free under circle addition;
the resulting model is consequently sum-free wherever the time
addition is defined. No assertion of exact shift independence of
this final model is needed.

## Shift separation and scope

Exact F shift exclusion implies
`m(B_s intersection(B_s+v))<=2m(F_s triangle B_s)` pointwise
off null times. The corresponding circle intersection has length
`max(1/3-theta,0)`, where `theta=||chi(v)||`. Its grid error is
at most the stated `2/n`. Integration therefore gives
`theta>=1/3-2a-2/n`, without any missing exceptional-time term.

When the unfolding lemma's separate hypotheses hold, its frequency
error is less than `4t/(q-t)`. Under `a+1/n<=1/100` and
`t/q<=1/100`, the resulting lower bound is
`1/3-1/50-4/99>1/4`. This is only a weak positive displacement,
which is exactly the scope claimed. It does not justify a strict
separation above one third or exact v-independence of the model.

All integral comparisons use measurable finite choices or ordinary
Fubini; triangle boundary times are null. No hidden centered-role,
anchor, or group-size assumption was found. No correction, numerical
experiment, or edit to the frozen proof was necessary. The initial
structural approximation and any original integer origin conclusion
remain separate tasks.
