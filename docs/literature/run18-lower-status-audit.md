# Current lower-bound and problem-status check

Run `2026-11-17T12-05-38-564Z-905bb2c7`; checked 17 November 2026,
approximately 13:22--13:27 UTC. Focused primary-source audit only.

**Finding.** The current primary material inspected still gives the
universal lower excess `Omega(log log n)`. I found no primary
follow-up determining the constant-factor order or improving that
universal excess. This is the outcome of a bounded search, not a
proof that no later result exists. Nothing in this audit establishes
novelty of the run's separately reviewed upper-bound work.

## 1. Bedert's current result and the exact problem convention

The current [arXiv record for 2502.08624](https://arxiv.org/abs/2502.08624)
lists only **v1, 12 February 2025**. It displays no withdrawal or
correction notice. The freshly retrieved
[full v1 text](https://arxiv.org/html/2502.08624v1) is byte-identical
to the previously saved text, with SHA256
`dd8738743f8a8bd52ce8255df7f874454166795060610c9a499a4395262652c2`.

I rechecked Theorem 1.2 and the opening of Section 2. The theorem
gives an absolute positive constant times `log log n` beyond `n/3`
for integer host sets. The setup removes zero and permits either
sign; its sum-free definition does not require distinct variables.
The introduction records the qualitative upper error `o(n)` and
does not assert that the logarithmic lower excess is sharp.
[Primary theorem and setup](https://arxiv.org/html/2502.08624v1).

For the launch statement's literal permission to include zero,
discarding zero loses at most one host element. Thus the resulting
bound is at least

    (n-1)/3+c log log(n-1)
       >=n/3+(c/2)log log n

for sufficiently large n. This is an elementary asymptotic
normalization, also recorded in the [existing lower audit](lower-bound-audit.md).
The small-cardinality zero issue does not change the asymptotic
lower order.

## 2. Current problem statements: solved unbounded gain versus open order

Green's freshly downloaded [100 open problems PDF](https://people.maths.ox.ac.uk/greenbj/papers/open-problems.pdf)
is the **December 2025 update**, as its page-2 footnote states.
Its bytes match the previously saved version, SHA256
`e06971245914947f152550dee59bbb29fe0e798f0c51b2bc2557f824c2f9a44a`.
Problem 1 is marked solved because it asks whether the gain tends
to infinity. The added update cites Bedert's `c log log n` result.
This is a weaker question than determining the gain up to constants;
the solved label must not be used as evidence that PROBLEM.md has
been resolved. The comments still discuss the qualitative upper
bound and interest in a quantitative error.

The search index of the primary
[Erdős 792 discussion page](https://www.erdosproblems.com/forum/thread/792)
labels the estimation problem open and lists Bedert's lower bound
and Eberhard--Green--Manners' qualitative upper bound. Its indexed
metadata says the problem text was last edited 23 January 2026;
the indexed page itself is an older crawl, not a fresh full read.
Direct current retrieval of both `/792` and its discussion thread
failed: the browser returned 403/robots errors and the independent
raw requests timed out. Accordingly **the complete current comment
thread was not verified**. I do not infer an absence of later
comments from that retrieval failure.

The indexed primary synopsis and all inspected papers are
consistent with a remaining second-order gap. They do not establish
matching bounds. This access limitation is retained in the source
manifest rather than hidden behind a categorical current-status
claim.

## 3. Follow-ups checked at their actual scope

| Current primary source | Version checked | Relevant conclusion and limitation |
| --- | --- | --- |
| [Bloom--Green, Remarks on the inverse Littlewood conjecture](https://arxiv.org/html/2602.16482v2) | v2, 18 April 2026 | Theorem 1.2 gives a large initial segment with normalized energy bounded below in terms of the Fourier L1 parameter. The updated numerical constant is for the Littlewood inequality. The paper does not state an improved universal sum-free excess. |
| [Bedert, Polynomial bounds for the Chowla Cosine Problem](https://arxiv.org/html/2509.05260v3) | v3, 24 July 2026 | Theorem 1.1 gives the cosine minimum exponent `1/5-o(1)`; the version comment explicitly records the improved exponent. This is a different extremal quantity, and no stronger bound for the present f(n) is stated. |
| [Franchi--Gowers--Yip, Product-free subsets of (0,1)](https://arxiv.org/html/2607.06073v1) | v1, 7 July 2026 | Theorem 1.1 proves that an open product-free subset of `(0,1)` has measure less than one third. Its introduction still cites Bedert's logarithmic iterated lower gain for integer sets. Its main result concerns Green Problem 3 and a continuous weighted analogue, not the discrete second-order function. |

The last paper was surfaced while following the discussion lead;
its primary text was then read directly. No claim about the exact
current forum posts is needed for this source-scope conclusion.
Likewise, local additive-energy structure or a negative cosine
minimum is not itself an additive gain beyond `n/3`: an additional
argument would be required. The already saved
[lower-route audit](../../research/ARCHIVE_INDEX.md#record-063) and
[mechanism audit](../../research/ARCHIVE_INDEX.md#record-064) address that
separate mathematical gap and are not being replaced by search
results here.

## 4. Search coverage, captures, and limits

The bounded searches used the exact Bedert title and arXiv ID,
correction/erratum terms, author plus sum-free and 2026, universal
`n/3` and logarithmic excess phrases, and the problem's primary
discussion URL. ArXiv-restricted queries were included. Searches
also returned restricted-sumset Erdős--Moser questions, lattice-cube
enumeration, and finite-field stability; their distinct hypotheses
do not supply the requested universal integer-set excess. Secondary
reports and generated problem summaries were search leads only,
not mathematical evidence for a stronger or matching bound.

The [source manifest](../../research/ARCHIVE_INDEX.md#record-061)
records requested/final URLs, times, raw-byte hashes, successful
captures, and explicit access failures. The
[capture script](../../research/ARCHIVE_INDEX.md#record-065) uses
Python 3.12.3 and raw `urllib.request` bytes without content
conversion. Reproduction commands were:

```text
python3 notes/sources/run18-lower-status/capture.py
python3 notes/sources/run18-lower-status/capture.py erdos-792-forum.html franchi-gowers-yip-abs.html franchi-gowers-yip-v1.html
```

The script's final version accepts optional filenames and merges
their records into the manifest. The original first batch preceded
addition of the final three URLs. The
[search record](../../research/ARCHIVE_INDEX.md#record-066) preserves
queries, browser outputs and blocked retrievals; the
[primary passage record](../../research/ARCHIVE_INDEX.md#record-067)
preserves the final theorem/scope checks. A TLS certificate error
prevented the raw Cambridge author-page capture; it is not used
as a mathematical premise. No numerical experiment was run.

For the research checkpoint, retain the lower bound
`f(n)-n/3=Omega(log log n)` and an unresolved constant-factor order.
Even an independently verified upper `O(n/log n)` would leave a
large unmatched gap. This audit neither verifies that upper proof
nor asserts it is new; its verification and any priority assessment
are separate tasks.
