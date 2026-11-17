# Independent root review of the truncated dilation prime test

Run `2026-11-17T12-05-38-564Z-905bb2c7`; 17 November 2026.
Verdict: PASS at the stated limiting prime-test scope.

Reviewed [the frozen proof](run18-truncated-dilation-prime-tests.md), SHA256
`411cbd02e3e08ef9965abe2a9737d5e49b213aa1cadd7ed09bd40cc092115050`.
The author and reviewer are different agents. No correction is needed.

For a bad prime p<=Y, the independent divisor law puts probability
1/(p+1) on p-divisible dilations. The limiting progression density is
zero there and (p+1)/(3p) otherwise, so the weighted density is exactly
1/3. Primes above Y have surplus at most 1/(3Y); good primes and p=3
have no positive surplus. If p divides the multiplier, the test is
empty. The half-open arc is pointwise sum-free, including repeated
inputs and both possible wrap cases.

The product moment formula is exact. With s=1/log Y, the harmonic
bound gives log E d^s<=(e-1)(1+log Y). The choice
D=exp(5(log Y)^2) therefore gives tail at most exp(e-1)Y^(e-6).
Dividing this by 1/Y and taking logarithms yields
(e-1)+(e-5)log Y<=2e-6<0. Thus the tail estimate holds for every
Y>=e, without a prime number theorem or an unstated onset.
The conditioning event has positive mass because d=1 does.

The exact mixture identity bounds the change of every [0,1]-valued
test by the discarded probability, without a factor two or an extra
normalization loss. Independence is used only before conditioning.
The integer cutoff floor(D) causes no loss. These facts prove the
announced 1/3+4/(3Y) bound for each limiting prime test.

For each fixed p, complete residue blocks in j have length p, leaving
an error at most p/M. This is uniform over dilations and multipliers,
so it survives mixing. It does not give uniform convergence over
unbounded p at a single M; the proof explicitly preserves this gap.
The support bound floor(D)M is exact.

The elementary identities reuse the saved reciprocal-divisor law and
conditioning argument at their proved scopes. This does not prove
an inequality for arbitrary sum-free subsets, a full time-dependent
certificate, finite-host uniformity over all prime tests, or a new
bound for f(n). Its value is to show that these limiting necessary
tests alone do not enforce the single universal-period cost.
No numerical computation or new external theorem was needed.
