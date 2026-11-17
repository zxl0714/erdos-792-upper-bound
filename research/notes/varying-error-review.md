# Independent scoped review of the variable-error upper bound

Reviewer: root agent, 2026-11-15. Reviewed artifact:
[varying-error-upper.md](varying-error-upper.md). This reviews a partial
bound while remaining in RESEARCH, not a solution to PROBLEM.md.

The argument passes the following checks.

1. Eberhard Theorem 4.2 and Lemma 5.1 permit separate N,Q,eta at each
   invocation. A Q-periodic sum-free subset of positive integers cannot
   contain residue zero; otherwise it contains Q and 2Q. Taking
   x=max(N,QM) ensures the pushed-forward measure is supported inside the
   interval on which this exclusion is known. The other branch uses
   that the dilation preimage of a sum-free set is sum-free. Thus the
   contraction is e'=(2/3)e+(2/3)eta without compatibility assumptions
   between periods.
2. The schedule eta_j=(3/4)^j/16 gives the exact majorizing solution
   e_j=(7/24)(2/3)^j+(3/8)(3/4)^j, starting at e_0=2/3.
   In particular e_j<=12eta_j. Minimality of J gives the strict lower
   bound eta_J>1/(16K), needed for the cost sum <64K.
3. Gowers Theorem 18.2, printed p.585 (PDF page index120), uses the
   right-associated expression 2 ↑ 2 ↑ delta^(-1) ↑ 2 ↑ 2 ↑ (k+9).
   Substituting delta=eta/4 and k=i matches the R in the saved argument.
   This was re-read in the [saved original PDF](../ARCHIVE_INDEX.md#record-074)
   through the primary mirror. Full R-blocks supply the progression for
   every n>=N; the remainder is bounded by R<=eta n/4.
4. Lemma 5.1's block count, lengths, and scale ratio match t=ceil(2/eta),
   a_{s+1}-a_s=ceil(4 n_{a_s}/eta), and L=ceil(32/eta). The largest
   support is n_{a_t}, not a_t. Writing b_s=n_{a_s} handles this correctly.
   The estimate b_{s+1}<=2^(2^b_s) and the uniform starting bound
   B=E_10(48K) justify total tower height at most 448K+10 above 48K.
5. The exponent-box overlap formula includes all valuations of a<=M.
   Lemma 5.3 then gives alpha(F)<=m/3+2m/K. Disjoint positive dilates
   give the stated upper bound for every cardinality n>=ceil(Km), even
   if cross-component Schur triples occur. All original choices of signs,
   zero, and repeated variables are respected.
6. The conversion of the support bound to H_K<=E_{500K}(1) has sufficient
   room for the bottom argument, ceilings, and witness size. Taking
   K=floor((log* n-1)/500) places H_K strictly below n; using log* n
   without this margin would not suffice.

As a finite indexing check, Jacobian operation
`combinatorics.recurrence.linear.evaluate` computed 31 exact terms with
characteristic roots 2/3 and 3/4. All terms agree with the closed form and
majorant above. Saved [request](../ARCHIVE_INDEX.md#record-075)
and [response](../ARCHIVE_INDEX.md#record-076) retain the
operation ID and exact results. The tool exposes no service version here.
The universal conclusion follows from the displayed algebra, not the finite
sample. The separate [schedule script](../ARCHIVE_INDEX.md#record-072)
checks stopping indices and reciprocal costs at several K.

Review outcome: the scoped deduction f(n)-n/3=O(n/log* n) is supported.
No claim of novelty is made; it quantitatively unpacks existing lemmas.
It remains far from the Omega(log log n) lower bound and fails the original
acceptance criterion of matching bounds. No complete candidate is saved.
