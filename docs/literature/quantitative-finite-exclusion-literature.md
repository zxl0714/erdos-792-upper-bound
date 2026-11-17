# Quantitative finite exclusion: focused prior-literature audit

Run: `2026-11-15T11-03-40-924Z-43eaf45a`. Date: 2026-11-15.
Scope: literature/formulation audit, plus an exact replacement of the recent
popular-sum input by a published 2010 theorem. No novelty claim.

## Question and outcome

The new [finite exclusion note](../../research/ARCHIVE_INDEX.md#record-042)
proposes an absolute C and, for each small eta, an integer
`c_eta <= exp(C eta^(-20))`, with `Q_eta=lcm(1,...,floor(2/eta))`, such that
every sum-free `A subset [N]` containing a positive multiple t of Q_eta and
having `N>=c_eta*t` satisfies `|A|<(1/3+eta)N`.
The associated [rate calculation](../../research/ARCHIVE_INDEX.md#record-043)
would give `f(n)-n/3 = O(n/(log log n)^(1/20))` after its stated input is
established. This is a single-scale prescribed-member assertion, not a
classification of arbitrary dense finite sum-free sets.

The primary results inspected below supply nearby qualitative/multiscale
statements and the component machinery. They do not state the displayed
single-scale exponential bound or the fixed power-of-log-log consequence.
Twelve targeted searches and two citation-disambiguation searches located no
primary source stating either bound. This is a bounded scope finding, not a
proof that the argument or conclusion is new. In particular, an effective
finitary upper-bound proof already exists, so “first effective upper bound”
would be an unsupported and misleading claim.

## Direct precedents and their exact scope

1. **Eberhard–Green–Manners, Annals 2014, current arXiv v3 (29 July 2026).**
   The abstract metadata says v3 corrects a small inaccuracy in Lemma 6.3;
   the saved current full text was inspected. Corollary 5.1 gives, for an
   open `A subset C_q times[0,1]` of density at least `1/3+epsilon` and
   small Schur count T(A), a subgroup H of epsilon-bounded index and an
   interval I around zero of epsilon-bounded-below length with
   `mu(A intersect(H times I)) <<_epsilon T(A)`.
   This is the direct avoid-origin precedent. Section 4 uses arithmetic
   regularity to obtain high density on a long progression from difference
   doubling below four; Section 5 uses that structure. The introduction
   explicitly identifies its two arithmetic-regularity applications as
   the obstacle to a reasonable quantitative error. Neither Corollary 5.1
   nor the surrounding argument states the polynomial index and exponential
   scale in the new finite-exclusion note. The current route instead keeps
   the exact shift inequality supplied by the prescribed t and obtains
   subgroup exclusion from three sections, popular sums, and saturation.
   [Current paper](https://arxiv.org/abs/1301.4579),
   [published paper](https://annals.math.princeton.edu/2014/180-2/p05),
   [saved current text](../../research/ARCHIVE_INDEX.md#record-044).

2. **Eberhard, Bulletin LMS 2015, arXiv v1 (24 January 2014).**
   Theorem 1 supplies explicit multiplicative Følner examples with maximal
   sum-free density `1/3+o(1)`. Its introduction distinguishes an ineffective
   infinitary proof from an effective finitary proof with poor bounds.
   Theorem 4.2 chooses N(k,epsilon),Q(k,epsilon) using Szemerédi's theorem.
   If an initial prefix has density at least `1/(k+1)+epsilon`, then either
   that prefix lies in a Q-periodic k-sum-free set, or some one of at most
   `k*n_0` multiplicatively separated later scales has density at most
   `1/(k+1)+epsilon/2`. It does not assert a drop at every sufficiently large
   single scale. Lemma 5.1 averages densities over many such scales;
   Lemma 5.2 is the measure contraction and Lemma 5.3 transfers measures
   through Følner sets. These are the published predecessors of the current
   contraction/conversion, not the new single-scale input. The saved older
   [parameter audit](../../research/ARCHIVE_INDEX.md#record-045) and
   [varying-error upper note](../../research/notes/varying-error-upper.md) already track the
   costs of this route.
   [Current paper](https://arxiv.org/abs/1401.6390),
   [published record](https://doi.org/10.1112/blms/bdu091),
   [saved text](../../research/ARCHIVE_INDEX.md#record-046).

3. **Current descriptions of the remaining quantitative problem.**
   Bedert's paper still has only arXiv v1, 12 February 2025. Its introduction
   states the `n/3+o(n)` upper bound, discusses the poor arithmetic-regularity
   dependence, and distinguishes Eberhard's explicit examples. Green's
   current problem list is explicitly updated December 2025: Problem 1 is
   marked solved for an unbounded lower gain, while the comments still seek
   a reasonable upper error. Neither source announces a fixed-log-log-power
   upper error. These comments provide context, not exhaustive evidence of
   absence of later work.
   [Bedert](https://arxiv.org/abs/2502.08624),
   [saved text](../../research/ARCHIVE_INDEX.md#record-037),
   [Green, pp.2–3](https://people.maths.ox.ac.uk/greenbj/papers/open-problems.pdf).

4. **Component methods are established.**
   Positive Fourier/Bohr smoothing and regular Bohr radii are already
   documented with primary sources in the
   [finite-model note](../../research/ARCHIVE_INDEX.md#record-047) and its
   [source manifest](../../research/ARCHIVE_INDEX.md#record-048).
   The new contribution under review is their composition with the exact
   prescribed-translation inequality and balanced three-section argument.
   No claim of novelty is made for smoothing, the measure contraction,
   popular Kneser, or the Følner construction separately.

The search hit Tao–Vu's *Sum-free sets in groups: a survey*, J. Combinatorics
8 (2017), pp.541–552. Its Ackermann-type discussion concerns the inverse
problem for sets with no large subset sum-free **relative to the ambient
set** (Theorem 3.1), not the present f(n). It therefore supplies no missing
upper rate here. The misleading Choi–Komlós–Szemerédi search hit similarly
concerns the stronger condition forbidding sums of arbitrarily many distinct
other selected elements, not merely x+y=z. Neither was used as a theorem
input. A generic search result from an automated problem site was excluded
as a source of mathematical priority or correctness.

## The published 2010 popular-sum theorem is enough

Grynkiewicz, *On extending Pollard's theorem for t-representable sums*,
Israel J. Math. 177 (2010), 413–439, Theorem 1.1, is sufficient for both
saved robust section lemmas. The author's final PDF was downloaded and
its pp.1–3 inspected. The current arXiv record has only v1, 18 March 2008;
the publisher confirms publication 29 August 2010. No correction notice
appears on those inspected records. The 2026 Grynkiewicz–Wang paper also
cites the 2010 theorem and its 2013 book improvement as predecessors.

For finite nonempty subsets A,B of an abelian group and an integer
`1<=t<=min(|A|,|B|)`, write

    P_i={g:r_(A+B)(g)>=i},   T_t=sum_(i=1)^t |P_i|.

Theorem 1.1 says that either

    T_t >= t(|A|+|B|)-2t^2+1,

or there are `A' subset A`, `B' subset B` with

    |A\A'|+|B\B'| <= t-1,
    A'+B' = P_t = {g:r_(A'+B')(g)>=t}.

The theorem additionally gives a nontrivial stabilizer and a lower bound
for T_t. The robust proof needs only the displayed deletion and equality
conclusions, then applies ordinary Kneser independently.

For the [weighted robust section lemma](../../research/ARCHIVE_INDEX.md#record-049),
keep all its existing parameters. In its large branch `U=delta*q>=32`,
`t=floor(U/16)` lies in `[U/32,U/16]`, every threshold support has size at
least U/2, and `E_raw<=U^2/4096`. With `s_card=|X|+|Y|+|Z|` one has
`s_card-q>=3U/4`, so

    t(s_card-q)-2t^2-E_raw
      >= (3/128-1/128-1/4096)U^2
       = 63U^2/4096 > 0.

Since `T_t(Z,-Y)<=t(q-|X|)+E_raw`, this strictly beats even the 2010
threshold without its positive constant 1. The theorem therefore deletes
at most t−1 elements in total from Z and Y and makes their difference set
equal to the t-popular differences. Removing X's intersection with this
set costs at most `E_raw/t<=U/128`, exactly as before. All retained-mass,
saturation, and forbidden-shift deductions are unchanged. The 2010
statement does not separately assert the 2026 conclusion that both retained
sets have size at least t+1; that stronger assertion is unused. Positivity
already follows from original support sizes U/2 and at most U/16 deletions.
The branch U<32 never uses a popular-sum theorem.

Likewise the [unweighted robust section lemma](../../research/ARCHIVE_INDEX.md#record-050)
uses `U>=16`, `t in[U/16,U/8]`, `s-q>=U`, and `E<=U^2/64`. Its old-theorem
margin is at least

    U^2/16 - U^2/32 - U^2/64 = U^2/64 > 0.

Thus the whole proposed quantitative upper-bound chain can cite the 2010
published theorem with no change to its saved constants. It does not depend
on the sharper 2026 popular-sum threshold.

[Publisher](https://doi.org/10.1007/s11856-010-0053-6),
[author's final PDF](https://www.diambri.org/Mathpdfs/pollard--vFIN.pdf),
[arXiv record](https://arxiv.org/abs/0803.2601),
[saved PDF](https://www.diambri.org/Mathpdfs/pollard--vFIN.pdf),
[saved extraction](https://www.diambri.org/Mathpdfs/pollard--vFIN.pdf).

## Audit record and remaining scope

The [search record](../../research/ARCHIVE_INDEX.md#record-051)
preserves the twelve targeted queries, two citation follow-ups, and browser
responses. The [source manifest](../../research/ARCHIVE_INDEX.md#record-052)
records inspected versions, saved artifacts, hashes, and access failures.
The finite exclusion and global upper-bound proofs have their own scoped
reviews; this audit is not a replacement for those reviews. Even a verified
`O(n/(log log n)^(1/20))` upper excess remains far from Bedert's
`Omega(log log n)` lower gain and does not resolve the requested constant-factor
asymptotic order.
