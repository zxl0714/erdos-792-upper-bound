# Representation counts in a rotation set

Let $[N]=\{1,\dots,N\}$ and $\phi(n)=\{\omega n\}$ for $\omega\in\mathbb R$. Write $a=1/3$, $b=2/3$ and $I=[a,b)$. Throughout, $0<\delta\le1/24$, and $F\subseteq[N]$ satisfies
$$
\{n:\phi(n)\in[a+\delta,b-\delta]\}
\subseteq F\subseteq
\{n:\phi(n)\in[a-\delta,b+\delta]\},
\tag{1}
$$
where the sets on the outside are restricted to $[N]$. Thus all freedom in $F$ is at the two endpoints of $I$.

For $z\in[N]$ put $M=z-1$, $f=1_F$, and $i(n)=1_I(\phi(n))$. Define the signed deviations before $z$ by
$$
\begin{aligned}
L_z&=\sum_{\substack{1\le n<z\\\phi(n)\in[a-\delta,a+\delta]}}(f(n)-i(n)),\\
R_z&=\sum_{\substack{1\le n<z\\\phi(n)\in[b-\delta,b+\delta]}}(f(n)-i(n)).
\end{aligned}
$$
Let $E_M$ be the supremum of the absolute difference between the number of points $\phi(n)$, $1\le n\le M$, in a circle interval and $M$ times its length. Any endpoint convention is allowed and $E_0=0$.

**Lemma.** The number $r_F(z)=\sum_{n=1}^{z-1}f(n)f(z-n)$ of ordered representations of $z$ satisfies
$$
\begin{array}{ll}
r_F(z)\ge (Ms+2L_z-3E_M)_+ & \text{if }\phi(z)=b+s,\quad |s|\le2\delta,\\[2mm]
r_F(z)\ge (-Ms+2R_z-3E_M)_+ & \text{if }\phi(z)=a+s,\quad |s|\le2\delta.
\end{array}
\tag{2}
$$
Equal inputs are counted. Multiplying by $f(z)$ gives the contribution at $z$ to the Schur count.

**Proof.** First suppose $\phi(z)=b+s$. Restrict $n$ to the $M$-point prefix with phase in the closed window
$$
W=[a-3\delta,a+s+3\delta].
$$
The map $n\mapsto z-n$ preserves these indices, because reflection $x\mapsto b+s-x$ interchanges the endpoints of $W$ and the entire window lies in $(0,1)$. For the set of these indices $D$, inclusion–exclusion gives
$$
r_F(z)\ge \sum_{n\in D}(f(n)+f(z-n)-1)=2\sum_{n\in D} f(n)-|D|.
\tag{3}
$$
The window contains the whole left transition strip and none of the right one. The upper endpoint is at most $a+5\delta<b-\delta$. Hence the number of points of $F$ in $D$ is the number in the baseline interval $[a,a+s+3\delta]$, plus $L_z$. The two interval lengths in (3) are $s+3\delta$ and $s+6\delta$. Bounding the baseline count below and the window count above using $E_M$ gives $Ms+2L_z-3E_M$. Nonnegativity gives the first line of (2).

For $\phi(z)=a+s$ use $W=[b+s-3\delta,b+3\delta]$. In this window the map of phases is $x\mapsto 1+a+s-x=2b+s-x$, so the same involution applies. The lower endpoint is at least $b-5\delta>a+\delta$. The window contains the right transition strip and none of the left one. Its baseline interval is $[b+s-3\delta,b)$, with $b$ excluded as in $I$. Thus $\sum_D f$ is that baseline count plus $R_z$. The lengths are $3\delta-s$ and $6\delta-s$, giving $-Ms+2R_z-3E_M$. The wrap here is in the circle phase. Both integers in (3) are still $n$ and $z-n$.

For the frequency separation $\|h\omega\|_{\mathbb T}\ge hb_0/t$ for $1\le h\le H$, the [rotation discrepancy bound](rotation-discrepancy.md) gives $E_M\le M/(H+1)+3t/(2b_0)$. In particular, the right-output bound is at least $(Ms+2L_z-3M/(H+1)-9t/(2b_0))_+$. The full range $|s|\le2\delta$ includes outputs in the filled core on the inner sides of the endpoint strips.

## Affine phases

For $\psi(n)=\{\omega n+\beta\}$ and a real lift of $\beta$, the identity is $\psi(n)+\psi(z-n)\equiv\psi(z)+\beta\pmod1$. With (1) and the definitions of $L_z,R_z,E_M$ taken for $\psi$, the same proof applies with $s+\beta$ in place of $s$ in the right-hand sides of (2) when $|s+\beta|\le2\delta$. The windows use the actual sum phase $\psi(z)+\beta$.

The offset matters. Fix $\beta=-2\delta$ and an irrational $\omega$. There are arbitrarily large $z$ with $\psi(z)\in[b+\delta/4,b+\delta/2]$. Indeed, for any fixed $H$ the separation hypothesis of the discrepancy bound holds with $t=1$ and some $b_0>0$, so $E_M/M\to0$ by first letting $M$ grow and then increasing $H$. Take $N=z$ and let $F$ consist of the prefix points with phase in $I$ together with $z$. Then (1) holds and $L_z=0$. Every pair from the prefix has real phase sum in $[b,2b)$, whereas the required residue is in $[b-7\delta/4,b-3\delta/2]$. This interval lies below $b$, and its translate by one lies above $2b$. Consequently $r_F(z)=0$. Using $s=\psi(z)-b>0$ without the offset would give a positive lower bound for large $z$.
