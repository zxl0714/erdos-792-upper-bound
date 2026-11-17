# From a cyclic profile to an integer rotation

Let $N,t,q$ be positive integers with $1\le t\le q\le N$, $t/q\le1/10$ and $q/N\le1/10$. Extend the indicator of $F\subseteq[N]$ by zero to all integers. For $r\in C_q=\mathbb Z/q\mathbb Z$ and $s\in(0,1]$, define
$$
n_r(s)=r+q\left\lfloor\frac{Ns-r}q\right\rfloor,\qquad
h_F(r,s)=1_F(n_r(s))\,1_{Ns-n_r(s)\ge t}.
$$
Let $I=[1/3,2/3)$ in $\mathbb T$, $\chi(r)=kr/q\bmod1$ with $k\in\mathbb Z$, and $\lambda\in\mathbb R$.

**Lemma.** Suppose
$$
\int_0^1\mathbb E_{r\in C_q}|h_F(r,s)-1_I(\chi(r)-\lambda s)|\,ds
\le\epsilon\le1/20.
\tag{1}
$$
Put $\omega=k/q-\lambda/N$. Some $\tau\in(t/N,q/N)$ gives an affine rotation set $B=\{n\in[N]:\omega n-\lambda\tau\in I\bmod1\}$ with
$$
|F\triangle B|/N\le\frac{\epsilon}{1-t/q}+\frac qN.
\tag{2}
$$
Moreover $|\lambda|(q-t)/N<4$, so $\|\omega t-\chi(t)\|_{\mathbb T}<4t/(q-t)$.

**Proof.** For $1\le n\le N-q$, take $r=n\bmod q$. At time $s=n/N+\tau$ with $t/N\le\tau<q/N$, the sample equals $n$ and its deficit is $N\tau\ge t$. The sampled value is $1_F(n)$, and the model is $1_I(\omega n-\lambda\tau)$. The cells for different $n$ in any one residue are disjoint. Their contribution to (1) yields
$$
\frac1q\int_{t/N}^{q/N}\sum_{n=1}^{N-q}
  |1_F(n)-1_I(\omega n-\lambda\tau)|\,d\tau\le\epsilon.
\tag{3}
$$
Averaging over the interval of length $(q-t)/N$ selects a *single* offset with normalized error on the first $N-q$ indices at most $\epsilon q/(q-t)$. The last $q$ indices cost at most $q/N$, proving (2).

On each of these cells the sampled value is constant, while the phase of the model traverses an interval of length $L=|\lambda|(q-t)/N$. On any interval of length $L$, the proportion in $I$ modulo one is at least $1/3-1/L$ and the proportion outside is at least $2/3-1/L$. To see this, split the interval into full unit intervals and a remainder of length less than one. If $L\ge4$, the mean error on each retained cell is therefore at least $1/12$, whichever constant was sampled there. By (3) this gives
$$
\epsilon\ge(1-q/N)(1-t/q)/12\ge 27/400>1/20,
$$
a contradiction. Hence $L<4$, and $\omega t-kt/q=-\lambda t/N$ gives the bound on the phase difference. This argument uses the retained width $q-t$.

## Separation from rational frequencies

If $\|\chi(t)\|_{\mathbb T}\ge1/3+c$ for $0<c\le1/6$, then
$$
\|\omega t\|_{\mathbb T}>1/3+c-\frac{4t}{q-t}.
$$
In particular $t/q\le c/(8+c)$ gives $\|\omega t\|_{\mathbb T}>1/3+c/2$.

Write $b=\|\omega t\|_{\mathbb T}$. For each $d\mid t$ and integer $a$, $at/d$ is an integer, so $b=\|t(\omega-a/d)\|_{\mathbb T}\le t|\omega-a/d|$. In particular, if $\operatorname{lcm}(1,\ldots,H)\mid t$, then
$$
\|h\omega\|_{\mathbb T}=\min_{a\in\mathbb Z}h|\omega-a/h|\ge hb/t
\qquad(1\le h\le H).
$$
This is the separation hypothesis in the [rotation discrepancy lemma](rotation-discrepancy.md). The offset in (2) may be nonzero. The [phase-removal lemma](removing-the-phase-offset.md) uses the original Schur count to control it.
