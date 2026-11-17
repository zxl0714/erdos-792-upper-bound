# Independent review: robust cyclic-character uniqueness

Run `2026-11-17T04-08-08-259Z-ba89c4b5`; 17 November 2026.

**Verdict: PASS at the stated finite-group scope.** The reviewed note
is [run17-cyclic-character-uniqueness.md](../../proof/lemmas/uniqueness-of-cyclic-characters.md),
frozen SHA256

    3ac1a4695d425cfbc9cc8832a12cdab1c96b5b877891787442a91535d73dd362.

The assertion holds for every finite abelian group: sufficiently close
full preimages of cyclic intervals, with densities uniformly away from
zero and one and sufficiently large quotient orders, have the same
defining additive character up to sign. The constants in the statement
are valid. No gap or proof correction was found.

## Checks

1. **Definition and measures.** Griesmer's current v3 Definition 1.4
   uses full inverse images of step-one cyclic progressions under a
   surjective quotient map. This was checked directly in the
   [saved primary text](https://arxiv.org/html/1807.01694v3)
   during the [single-pair review](run17-single-pair-cyclic-stability-review.md).
   The present additive-character formulation is equivalent. All
   quotient fibers have equal measure; no cyclicity of the ambient
   group is needed. The current source and search records are in the
   [manifest](../../research/ARCHIVE_INDEX.md#record-007). The
   quantitative argument itself is proved in full and invokes no
   inverse theorem.

2. **Fourier support.** Invariance of `1_Q` under `ker(psi)` forces
   any nonzero Fourier coefficient to be at a character trivial on
   that kernel. Factoring through the cyclic quotient identifies it
   with an integer multiple of `psi`. This obtains actual equality
   of characters, not just a relation between their kernels.

3. **Coefficient estimates.** For an interval of length `ell` in a
   quotient of order `L`, the normalized geometric sum has magnitude
   `|sin(pi*j*ell/L)|/(L*|sin(pi*j/L)|)` at a nonzero harmonic.
   The starting point and cyclic wrapping contribute only a phase.
   Density in `[c,1-c]` gives a fundamental coefficient at least
   `sin(pi*c)/pi=2b0`. For a signed nonzero representative with
   `|j|<=L/2`, the elementary chord bound gives magnitude at most
   `1/(2|j|)`. This also covers the even-order midpoint.

4. **Recovering both characters.** Symmetric-difference error less
   than `b0` bounds the change of every Fourier coefficient by less
   than `b0`. Thus the coefficient of `1_Q` at `chi` is greater
   than `b0`, giving `chi=j*psi` with nonzero signed
   `|j|<1/(2b0)`. Reversing the two sets gives `psi=i*chi` with
   the same bound. Only at this point is equality of the generated
   cyclic character groups, and hence equality `M=N` of their
   exact orders, inferred. This order of deductions is sound.

5. **Removing modular ambiguity.** Substitution gives
   `N | (ij-1)`. The bounds imply
   `|ij-1|<1/(4b0^2)+1<b0^-2+1<N`, where the last inequality
   follows from the stated strict order threshold. Hence `ij=1`
   in the integers. The only possibilities are `i=j=1` and
   `i=j=-1`, proving equality up to sign. No assumption that either
   harmonic is a unit was used prematurely.

The same-set approximation corollary follows directly from the
triangle inequality, with the **sum** of both approximation errors
strictly below `b0`. It also applies when the common reference is a
fractional function, because only this `L1` triangle inequality is
needed. Density and quotient-order conditions remain conditions on
the progression approximants themselves.

The singleton examples correctly show why a fixed density margin and
some exclusion of small orders are needed. The displayed threshold is
conservative and is not claimed optimal. Strictness at the error
threshold is retained throughout.

## Scope

The conclusion identifies one pair of characters up to sign. It does
not align interval endpoints, phases, or the sign conventions of a
time family; it also does not produce interval approximants in the
first place. Any propagation theorem must separately establish those
approximants, their density margins and orders, and the two-error
budget required for each use of uniqueness. No additive phase
alignment or original-problem improvement is established here.

No numerical computation or finite search was warranted: the proof
is a uniform geometric-series argument. The recorded
[Jacobian discovery](../../research/ARCHIVE_INDEX.md#record-008)
concerns specific finite transforms and was not used to extrapolate
to arbitrary group orders. The frozen proof was not edited.
