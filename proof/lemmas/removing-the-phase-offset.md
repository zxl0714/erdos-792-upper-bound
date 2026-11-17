# Removing the phase offset

A set close to an affine rotation model can have few Schur triples only if the phase offset is small. Once this is established, each point outside the enlarged middle third accounts for many triples. Points deep inside the middle third can then be added freely.

**Lemma.** Let $N\ge16$, $\omega,\beta\in\mathbb R$, and $I=[1/3,2/3)$ in $\mathbb T$. Write $\phi(n)=\{\omega n\}$ and $B_\beta=\{n\in[N]:\phi(n)+\beta\in I\pmod1\}$. Suppose for each consecutive block $P\subseteq[N]$ and each circle interval $J$, with any endpoint conventions,
$$
\left|\#\{n\in P:\phi(n)\in J\}-|P||J|\right|\le D.
\tag{1}
$$
Let $0<\delta\le1/100$ and $\gamma=\delta/100$. Suppose $F\subseteq[N]$ satisfies
$$
\frac{|F\triangle B_\beta|}{N}\le \epsilon\le\frac{\gamma^2}{4096},
\qquad
\frac{T(F)}{N^2}=\tau\le\frac{\gamma^2}{1024},
\qquad
\frac{D}{N}\le\frac{\gamma}{64},
\tag{2}
$$
where $T(F)$ counts ordered triples $x+y=z$ in $F$, with equal inputs allowed. Then
$$
\|\beta\|_{\mathbb T}<\gamma,\qquad
\frac{|F\triangle B_0|}{N}\le\frac{\delta}{32}.
\tag{3}
$$
Let $S=\{n\in[N]:\phi(n)\in[1/3-\delta,2/3+\delta]\}$ and $H=\{n\in[N]:\phi(n)\in(1/3+2\delta,2/3-2\delta)\}$. Put $F'=F\cap S$ and $\bar F=F'\cup H$. Then
$$
|F\setminus S|\le\frac{8T(F)}{N\delta},\qquad
H\subseteq\bar F\subseteq S,\qquad T(\bar F)=T(F')\le T(F).
\tag{4}
$$
In particular $|\bar F|\ge |F|-8T(F)/(N\delta)$. The closed core of width $3\delta$ lies inside $H$, and the support of $\bar F$ lies inside the enlarged interval of width $3\delta$. This gives the exact strip inclusions used in the [integer density estimate](density-of-an-integer-rotation-set.md).

## The phase offset is small

Put $\alpha_n=\phi(n)+\beta\bmod1$. The circle convolution $C=1_I*1_I$ is linear with slope $-1$ from $C(0)=1/3$ to $C(1/3)=0$, vanishes through $2/3$, and is linear with slope $1$ from $2/3$ to $1$. This follows by measuring $I\cap(\theta-I)$, including its wrapped part. An ordered representation of $z$ in $B_\beta$ requires $1\le x<z$, $\alpha_x\in I$ and $\alpha_z+\beta-\alpha_x\in I$. The permitted input phases form at most two circle intervals of total length $C(\alpha_z+\beta)$. Translation preserves the discrepancy bound, so
$$
r_{B_\beta}(z)\ge (z-1)C(\alpha_z+\beta)-2D.
\tag{5}
$$
Changing a set at $k$ indices changes its triple count by at most $3Nk$. In each of the three roles, fixing one changed index leaves at most $N$ choices of the other indices. Applying this to $B_\beta$ and $F$ gives
$$
T(B_\beta)/N^2\le\tau+3\epsilon\le 7\gamma^2/4096.
\tag{6}
$$

Take $\beta\in[-1/2,1/2]$. If $\beta\ge\gamma$, every $\theta$ in $J_+=[2/3-\gamma/2,2/3-\gamma/4]$ satisfies $C(\theta+\beta)\ge\gamma/2$. Before reduction modulo one the shifted interval lies in $[2/3+\gamma/2,7/6-\gamma/4]$. The increasing branch gives the bound below one, and the wrapped part lands at most $1/6-\gamma/4$ on the decreasing branch. If $\beta\le-\gamma$, reflection gives the same conclusion on $J_-=[1/3+\gamma/4,1/3+\gamma/2]$, using $C(-x)=C(x)$. Each interval lies in $I$ and has length $\gamma/4$.

At least $N\gamma/8-D\ge N\gamma/16$ indices $z>N/2$ have $\alpha_z$ in the appropriate interval. All belong to $B_\beta$, and (5) gives at least $(N/2-1)\gamma/2-2D\ge N\gamma/8$ representations for each. This forces $T(B_\beta)/N^2\ge\gamma^2/128$, contradicting (6). Hence $\|\beta\|_{\mathbb T}<\gamma$. The symmetric difference of $I$ with its translate has length $2\|\beta\|_{\mathbb T}$ in at most two intervals. Thus
$$
|F\triangle B_0|/N\le\epsilon+2\gamma+2D/N
\le (33/16)\gamma<\delta/32.
$$

## Removing exterior points and filling the core

For a phase outside $[1/3-\delta,2/3+\delta]$, the convolution $C$ is at least $\delta$. Write $\epsilon_0=|F\triangle B_0|/N$. For an exterior $z\in F$ with $z>N/2$, (5) with $\beta=0$ gives at least $(z-1)\delta-2D$ baseline representations. Replacing the two input indicators by $1_F$ costs at most $2\epsilon_0 N$. Hence at least $(N/2-1)\delta-2D-2\epsilon_0N\ge N\delta/4$ representations remain. Summing over such outputs bounds their number by $4T(F)/(N\delta)$.

For an exterior $x\in F$ with $x\le N/2$, count partners $1\le y\le N-x$ with $y,x+y\in B_0$. The eligible phases are $I\cap(I-\phi(x))$, of length $C(\phi(x))$ because $I$ is invariant under negation up to endpoints. Its at most two components give at least $(N-x)\delta-2D$ baseline partners. Replacing the partner and output indicators costs at most $2\epsilon_0 N$, so at least $N\delta/4$ remain. Summing in the first input role gives another $4T(F)/(N\delta)$. The two bounds prove the deletion estimate in (4).

All phases in $\bar F$ lie in the enlarged interval. For a triple whose phase sum does not wrap, both inputs are at most $1/3+2\delta$ and the output is at least $2/3-2\delta$. For a wrapped sum both inputs are at least $2/3-2\delta$ and the output is at most $1/3+2\delta$. Indeed the real sum in this case must be at least $4/3-\delta$, and either input is at most $2/3+\delta$. In either case no phase lies in the open core. Thus filling that core creates no triples. These endpoint inequalities also cover equal inputs. Summing the deletion and filling effects gives (4).

In the application, (1) follows from the [rotation discrepancy bound](rotation-discrepancy.md) with $D=N/(H_0+1)+3t/(2b)$ for the frequency cutoff $H_0$. The subsequent density estimate uses only (4) and the strip inclusions. It imposes no shift exclusion on the filled set.
