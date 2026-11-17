# Independent review: prescribed Croot--Sisask return and raw sampling

Run `2026-11-17T04-08-08-259Z-ba89c4b5`, 2026-11-17.
Reviewer: `run17_long_gap`. Outcome: **PASS for both scoped lemmas**.
No correction is required. This is an intermediate RESEARCH review,
not verification of the original constant-factor problem.

Reviewed files:

* [Direct CS return](../../research/ARCHIVE_INDEX.md#record-013), SHA256
  `e035ec6a2818b8f5508c51aee6e16a4e81905ba865d4b8fe0c163a230d61ee6d`.
* [Raw sampler](../../proof/lemmas/sampling-an-integer-set-modulo-q.md), SHA256
  `61fd6b5df3b4f2876ca4aa57f95ae510dac9e54fcdbaedfe9364237620032d8b`.

## 1. Primary CS theorem and the sparse candidate set

I read the current arXiv record and Proposition1.1 of
[Croot--Sisask1003.2978v2](https://arxiv.org/html/1003.2978v2).
The version remains 14 September2010. The group may be infinite;
convolution and the \(\ell^2\) norm use counting measure. For finite
sets \(U,V\), with \(|V+S|\le K|V|\), the source supplies
\(|X|\ge|S|(2K)^{-9/\zeta^2}\), and every difference of two elements
of \(X\) has convolution error at most
\(\zeta|U|^{1/2}|V|\). The square root in this last expression is
consistent with the source's squared-norm formulation. The saved
[source manifest](../../research/ARCHIVE_INDEX.md#record-033) belongs to the
return note.

The application uses \(U=V=A\),
\(S=\{0,bt,\ldots,(L-1)bt\}\), and
\(L=\lceil2\,12^{9/\zeta^2}\rceil\). Under \(btL\le\lambda N\),
\(0<\lambda\le1\), all sums lie in
\([1,N+(L-1)bt]\), so \(|A+S|\le2N\le6|A|\). No density of \(S\)
inside an ambient finite group is needed. Thus \(K=6\) is legitimate,
and the source's lower bound is at least2. Two distinct ordered
members \(x<y\) give
\[
 bt\mid q=y-x,\qquad bt\le q\le bt(L-1)<btL.
\]
This checks both the lower and upper bounds on the return. In
particular, the result is stronger than merely finding a nonzero
multiple of \(t\); the extra factor \(b\) is what makes the sampler's
deletion affordable. The \(+q\) and \(-q\) difference norms agree by
translation invariance.

Pairing the convolution difference with \(1_A\) gives
\[
 |T_q(A)-T_0(A)|
 \le\zeta|A|^{3/2}\|1_A\|_2=\zeta|A|^2.
\]
This uses ordinary integer sums and retains repeated summands. The
ceiling estimate \(L\le3\,12^{9/\zeta^2}\) is valid because the
exponential factor is at least1.

## 2. Pointwise shift and density of the raw sampler

For each residue \(r\), \(n_r(s)\) is the largest integer of that
residue at most \(Ns\); its deficit \(d_r(s)=Ns-n_r(s)\) lies in
\([0,q)\). If \(d_r(s)\ge t\), then \(n_r(s)+t\le Ns\), and this
integer is the largest admissible representative of residue \(r+t\).
Thus, wherever the retained \(h(r,s)\) equals1, exact shift
independence of \(F\) forces \(H(r+t,s)=0\). This proves the required
inequality at every time, including the boundary \(d_r(s)=t\).

Writing \(Ns=j+\theta\), \(0\le\theta<1\), the complete list of
deficits is \(\theta,\theta+1,\ldots,\theta+q-1\). Exactly \(t\)
are strictly below the integer \(t\). Hence deletion costs at most
\(t/q\), with no fixed-residue assumption. The untrimmed cell for
integer \(n\) has length at most \(q/N\) and exactly that length for
\(1\le n\le N-q\). Therefore
\[
 d(h)\ge |F|/N-q/N-t/q.
\]
This works for every allowed integer \(N,t,q\); it also handles the
degenerate case \(q=t\), when all vertices are deleted.

## 3. Carry count and its normalization

Adding the two deficits gives the third representative as either
\(a+b\) or \(a+b+q\), with the latter sign correct. Consequently the
sampled product is bounded by
\(f(a)f(b)[f(a+b)+f(a+b+q)]\). After enlarging the time triangle to
the unit square, a fixed ordered pair \((a,b)\) has at most
\((q/N)^2\) of sampling area and occurs in one ordered pair of
residues. The factor \(q^{-2}\) leaves precisely \(N^{-2}\). Thus
\[
 I(h)\le[T_0(F)+T_q(F)]/N^2
       \le2T_0(F)/N^2+\zeta(|F|/N)^2.
\]
No cyclic group was introduced, so there is no additional factor16.
If one chooses to express the same calculation in \(C_{4N}\), that
factor only converts its Haar normalization back to \(N^{-2}\).
It must not be inserted a second time.

## 4. Checked parameter bridge

With \(b=\lceil16/\eta\rceil\),
\(\zeta=\eta^2/(100C_r)\),
\(\kappa_\eta=\eta/(16bL)\), and \(t\le\kappa_\eta N\),
the return obeys
\[
 q/N<\eta/16,\qquad t/q\le1/b\le\eta/16.
\]
The sampler loses at most \(\eta/8\) in density. If
\(T_0(F)/N^2\le\eta^2/(48C_r)\), its count is at most
\[
 (1/24+1/100)\eta^2/C_r<\eta^2/(12C_r).
\]
These are the asserted interfaces to the existing singleton lemma.
The logarithmic scale is
\(\log\kappa_\eta^{-1}=O(\zeta^{-2}+\log(1/\eta))
=O(\eta^{-4})\). No hidden ambient-size threshold or precision
parameter occurs in either component.

The finite-origin composition, weight recursion, and final
cardinality inversion still belong to their separate write-up and
review. This report establishes that the two new components support
that composition at the stated scope.
