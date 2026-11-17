# Density of an integer rotation set

Write $\phi(n)=\{\omega n\}$, $a=1/3$, $b=2/3$, and $I=[a,b)$. Suppose $F\subseteq[N]$ contains every point with phase in $[a+\delta,b-\delta]$ and is contained in the points with phase in $[a-\delta,b+\delta]$. All phases are represented in $[0,1)$.

**Lemma.** Suppose that for every consecutive block $J\subseteq[N]$ and circle interval $V$, with any endpoint conventions,
$$
\left|\#\{n\in J:\phi(n)\in V\}-|J||V|\right|
\le |J|d_0+K_0.
\tag{1}
$$
Partition $[N]$ into nonempty consecutive blocks of lengths $m_j$. Set $m_*=\min_jm_j$, $h=\max_jm_j/N$, and $D=d_0+(K_0+2)/m_*$. If $0<\delta$ and $\delta+2D\le1/24$, then the normalized ordered Schur count $E=N^{-2}\#\{(x,y):x,y,x+y\in F\}$ satisfies
$$
\frac{|F|}{N}-\frac13\le\sqrt E+\frac{32}{3}D+16h.
\tag{2}
$$
For $\delta\le1/100$ this gives the uniform estimate
$$
\frac{|F|}{N}-\frac13\le \sqrt E+1000\left(d_0+\sqrt{(K_0+2)/N}\right).
\tag{3}
$$

## Assigning phases within each block

In a block $J_j=\{A_j+1,\ldots,A_j+m_j\}$, order the indices $n_{j,r}$ by phase and assign index $n_{j,r}$ to the cell $[(r-1)/m_j,r/m_j)$. To bound its distance from its assigned phases, use (1) on the arcs with upper endpoint $\phi(n_{j,r})$. The number strictly below that phase is at most $r-1$, and the number at or below is at least $r$. With $\Delta_j=d_0+K_0/m_j$, these bounds give
$$
r/m_j-\Delta_j\le\phi(n_{j,r})\le(r-1)/m_j+\Delta_j.
$$
In particular each cell point is within $D$ of its assigned phase, even when phases tie.

On the time block $(A_j/N,(A_j+m_j)/N]$ set $A(s,\theta)=1_F(n_{j,r})$ for $\theta$ in cell $r$. Each original integer is given area $(m_j/N)(1/m_j)=1/N$, so $\int A=|F|/N$. Put $d=\delta+D$. This profile has a full core $[a+d,b-d]$ and vanishes outside $[a-d,b+d]$. Let $\ell(s)$ and $r(s)$ be the signed changes from $1_I$ to $A(s,\cdot)$ to the left and right of $1/2$, respectively. Then $|\ell|,|r|\le d$, and their primitives $L,R$ satisfy
$$
L(1)+R(1)=|F|/N-1/3.
\tag{4}
$$

## Comparing the two prefix sums

Let $L_n,R_n$ be the signed sums before $n$ in the [integer representation lemma](representation-counts-in-rotation-sets.md). On a complete block the left cutoff $1/2$ may be applied to either the assigned phase or the cell point. Whenever the two points cross this cutoff both have phase in the full core, where the change from $1_I$ is zero. The remaining change comes from replacing the reference indicator $1_I(\phi(n_{j,r}))$ by $1_I(\theta)$. To the left of the cutoff this is confined to the interval of length $2D$ about $a$. To the right it is confined to the analogous interval about $b$. Thus each complete block contributes an error of at most $2Dm_j/N$ to either normalized sum. In the current block, the absolute partial sum and the absolute partial integral are each at most $m_j/N$. For $n$ and $s$ in the same block this proves
$$
|L_n/N-L(s)|,\ |R_n/N-R(s)|\le2sD+2h.
\tag{5}
$$
Since $|(n-1)/N-s|\le h$, (1) bounds the prefix discrepancy by
$$
E_{n-1}/N\le (n-1)d_0/N+K_0/N\le sD+h.
\tag{6}
$$
Here $hd_0+K_0/N\le hD$ and $D\le1$.

## Bounding the endpoint integrals

Set $e(s)=16(sD+h)$. Take a right output with $\theta=b+x$, $-2d\le x\le d$, and write its assigned phase as $\phi(n)=b+x_n$. We have $|x_n-x|\le D$ and $|x_n|\le2(\delta+2D)$. Apply the integer representation lemma at width $\delta+2D$. The larger strips contain the original strips and add only points at which $1_F=1_I$, so the original prefix sums still apply. Using (5) and (6) in its right-output bound gives
$$
\frac{r_F(n)}N\ge\big(sx+2L(s)-8(sD+h)\big)_+
\ge\big(sx+2L(s)-e(s)\big)_+.
\tag{7}
$$
The error $8(sD+h)$ consists of at most $sD+h$ from replacing $((n-1)/N)x_n$, $4sD+4h$ from the prefix sum, and $3sD+3h$ from discrepancy. On the left, $\theta=a+x$ for $-d\le x\le2d$, the same estimates with $\phi(n)=a+x_n$ and the left-output inequality give $r_F(n)/N\ge(-sx+2R(s)-e(s))_+$.

Multiply both bounds by $A(s,\theta)$ and integrate in the corresponding windows. The windows are disjoint since $4d<1/3$. Even if a cell meets a window boundary, its total integrated contribution is at most $1_F(n)r_F(n)/N^2$, because its full area is $1/N$ and the integrand is bounded by $1_F(n)r_F(n)/N$. Summing over cells bounds the two integrals by $E$.

Extend the endpoint profiles outside $[-d,d]$ by their half-line values. Since $L(s),R(s)\le ds$, the right weight in (7) vanishes for $x\le-2d$ and the right profile vanishes for $x>d$. The left profile vanishes for $x<-d$ and its weight vanishes for $x\ge2d$. Thus the windows contain all contributions to the full endpoint integrals used in [density from prefix counts](density-from-prefix-counts.md). Applying that lemma and (4) yields
$$
|F|/N-1/3\le\sqrt E+2\int_0^1s e(s)\,ds
=\sqrt E+(32/3)D+16h.
$$
Only the original representation count at each assigned integer was used to bound the integrals.

## Choice of block length

Set $\sigma=d_0+\sqrt{(K_0+2)/N}$. If $\sigma\ge1/1000$, (3) follows from $|F|/N-1/3\le2/3$. Otherwise take $M=\lceil\sqrt{(K_0+2)N}\rceil<N/2$. Use blocks of length $M$, merging any short final block with its predecessor. Then $m_*\ge M$, $\max_jm_j\le2M$, $D\le\sigma$, and $h\le2\sigma+\sigma^2\le2.001\sigma$, using $2/N\le\sigma^2$. With $\delta\le1/100$ the strip condition holds, and (2) gives error less than $43\sigma$, proving (3).

For $d_0=1/(H+1)$ and $K_0=3t/(2b_0)$ with $t\ge1$ and $0<b_0\le1/2$, we have $K_0+2\le5t/(2b_0)$. The [rotation discrepancy estimate](rotation-discrepancy.md) therefore gives the convenient bound
$$
\frac{|F|}{N}\le\frac13+\sqrt E+
2000\left(\frac1{H+1}+\sqrt{\frac{t}{b_0N}}\right)
\qquad(\delta\le1/100).
$$
