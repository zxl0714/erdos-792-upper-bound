# Discrepancy of a rotation

For $x\in\mathbb R$, write $\|x\|_{\mathbb T}$ for the distance to the nearest integer. A circle interval is an arc in $\mathbb T=\mathbb R/\mathbb Z$, with length measured using total length one.

**Lemma.** Let $H,t$ be positive integers and let $b>0$. Suppose $\omega\in\mathbb R$ satisfies
$$
\|h\omega\|_{\mathbb T}\ge \frac{hb}{t}
\qquad (1\le h\le H).
$$
For every consecutive block $J$ of $M$ integers, every offset $\beta\in\mathbb R$, and every circle interval $I$,
$$
\left|\#\{n\in J:\omega n+\beta\bmod 1\in I\}-M|I|\right|
\le \frac{M}{H+1}+\frac{3t}{2b}.
\tag{1}
$$
The bound holds with either endpoint included or excluded.

**Proof.** Write $e(x)=e^{2\pi ix}$ and $c=16/(7\pi)$. For a closed interval, the constant-target case of the Erdős–Turán inequality of Martin and Sitar bounds the absolute discrepancy by
$$
\frac{M}{H+1}+
\sum_{h=1}^H
\left(\frac{2-c}{H+1}+\frac{c}{h}\right)
\max_{1\le m\le M}\left|\sum_{n=1}^m e(hu_n)\right|,
$$
where $u_1,\dots,u_M$ are the orbit points in the given block. The two endpoints of the target are constant, so their variation terms vanish. [Martin and Sitar, Theorem 1.2](https://arxiv.org/html/0903.1834v1#S1.Thmtheorem2)

For $u_n=\omega n+\beta'$ the geometric series has numerator of modulus at most two and denominator
$$
|1-e(h\omega)|=2|\sin(\pi h\omega)|\ge 4\|h\omega\|_{\mathbb T}.
$$
Hence the maximum is at most $t/(2bh)$. Translating the block changes only $\beta'$. The coefficient multiplying $t/(2b)$ is at most
$$
\frac{(2-c)H}{H+1}+2c<3,
$$
using $\sum_{h\le H}h^{-1}\le H$ and $\sum_{h\ge1}h^{-2}\le2$. This proves (1) for closed intervals. For any choice of endpoints, bound the count above using the closed containing arc. Bound it below by applying the same upper bound to the closed arc containing its complement. This also covers singleton endpoints by taking closed arcs of arbitrarily small length. The empty block is immediate.

If $t$ is divisible by every $h\le H$ and $b=\|t\omega\|_{\mathbb T}>0$, the frequency hypothesis follows from
$$
b=\|(t/h)(h\omega)\|_{\mathbb T}\le (t/h)\|h\omega\|_{\mathbb T}.
$$
This is the form obtained from the [integer rotation model](integer-rotation-model.md). For the middle third $I=[1/3,2/3)$ and $H=\lfloor8/\eta\rfloor\ge1$, $b\ge1/3$ gives an upper density of $1/3+\eta/8+(9/2)t/N$ on $[N]$.
