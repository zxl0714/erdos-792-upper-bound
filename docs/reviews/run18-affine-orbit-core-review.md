# Independent review of the affine orbit core reduction

Run `2026-11-17T12-05-38-564Z-905bb2c7`; 17 November 2026.
Reviewer: root, independently of the proof author.

Reviewed [proof](../../proof/lemmas/removing-the-phase-offset.md), SHA256
`7ea0b098b21bb3510678e1a969252cd3829e4ea6077c7b84e17740d25baa7202`.
Verdict: **PASS at its stated original-count reduction scope**.

The affine representation identity has the required extra phase `a`.
Its admissible input phases form an intersection of at most two arcs,
so the `2E` allowance is valid along the actual prefix, without input
independence. The displayed triangle convolution is correct on all
three intervals and across zero. For either sign of a separated phase,
the chosen output arc has length `gamma/4`, stays inside the affine
model, and its convolution is at least `gamma/2`; the wrapped portion
at `|a|` near one half does not create an exception.

At `N>=16`, the constants in the representation and output-count
lower bounds leave slack. The resulting `gamma^2/128` contradicts
`tau+3epsilon<=7gamma^2/4096`. The homogeneous distance estimate
then follows from two arc discrepancies; the bound `delta/32` is
valid with the stated tolerances.

Both exterior charges use actual ordinary triples and a partner
interval of length at least about `N/2`. Their replacement costs
are at most twice the global homogeneous symmetric difference.
The displayed assumptions imply each kernel is at least
`N*delta/4`. The separate input/output sums account for the factor
eight. Endpoint conventions in the symmetry `-I=I` affect only
the discrepancy allowance, not the Haar convolution.

Finally, the exact phase cap geometry excludes OPEN-core points in
every role of every triple among the retained supports, including
repeated inputs. Filling creates no triples, while deletion loses
at most `rN` density. The later closed core at width `3delta` is
strictly inside the filled `2delta` core. Shift independence need
not survive, and the proof correctly declines to use it afterward.

This review does not infer a density theorem for arbitrary strip
holes. That requires the separately selected output-prefix argument.
No proof edits or numerical computation were needed.
