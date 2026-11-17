# Independent review of polynomial-cost container rounding

Run `2026-11-17T04-08-08-259Z-ba89c4b5`; parent review. **PASS** at the stated conditional discrete-certificate scope.

Reviewed [the proof](../../proof/lemmas/rounding-weighted-sets.md), SHA-256 `0a46507e0b5fcd6a0a4300e25a1ab03ab72057957a273d81e58868785a4434a6`, against the saved primary Saxton–Thomason v3 statement, Definition3.2 and Corollary3.6. That corollary requires 0<tau,eta<1/2 and the displayed co-degree bound; no omitted small-tau condition is needed. It explicitly permits c(r)=800(r!)³r. No online-property assertion is used, so the correction discussed in the source's postscript does not change this application.

For the distinct Schur 3-graph the exact edge count floor((N-1)²/4) and d≥3N/16 hold for N≥4. The conservative codegrees Δ2≤3 and Δ3≤1 give δ2≤16/(N tau), δ3≤16/(3N tau²), and 4δ2+2δ3≤75/(N tau²). With tau=100/sqrt(zeta N), N≥40001/zeta makes tau<1/2 and the co-degree function is less than zeta/72, as required for r=3. The entropy constant10^8 dominates518400*100. Every genuine sum-free set is independent; the converse is not needed. Ordered distinct triples count twice the edges, and diagonal triples number at mostN/2, so each container has total count≤zeta N².

The weighted certificate therefore bounds the expectation in each deterministic container by theta N/W. Bernstein applies to independent Bernoulli variables with unequal probabilities, including probabilities0 or1. With t=epsilon N/(4W), the stated exponent epsilon²N/(48W) is weaker than the direct variance bound. The same bound controls each tail of total cardinality. Since the container family is nonempty, log(|C|+2)≤log3+log|C|; condition(1) gives the claimed positive-probability simultaneous event.

On that event all sum-free subsets are controlled. The ratio inequality (theta+epsilon/4)/(1-epsilon/4)≤theta+epsilon follows for theta≤1, epsilon≤1/4. Thus the cardinality and independence bounds have exactly the stated scope.

Finally, log x≤4x^(1/10) and log x≤2x^(1/5) for x≥1 bound the entropy term by8*10^8 N^(3/5)R^(7/10), whereas the left side is at leastN/(96R³). At N≥10^40R^10 their ratio exceeds10^5 and increases thereafter; log3 and N≥40001/zeta are also absorbed. Hence the sufficient size is polynomial and valid for every N above it. No unproved uniform-probability, functional-certificate, or continuous-to-discrete step is hidden in this lemma.

This is a reviewed deduction from a published container theorem, not a full solution of PROBLEM.md. No computation was required.
