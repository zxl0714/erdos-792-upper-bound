# Excluding small divisible shifts

For $A\subseteq[N]$, let $T_s(A)$ count the ordered pairs $x,y\in A$ for which $x+y+s\in A$. Put $T(A)=T_0(A)$. Both counts include $x=y$.

**Lemma.** There are absolute constants $K,a,\eta_0>0$ and a positive integer $C_*$ such that the following holds for all $0<\eta\le\eta_0$. Set
$$
H=\lceil C_*/\eta\rceil,\quad Q=\operatorname{lcm}(1,\ldots,H),
\quad \kappa=K\eta^2,\quad \tau=a\eta^2.
$$
For every positive integer $N$, if $F\subseteq[N]$ satisfies $|F|/N\ge1/3+7\eta/8$ and $T(F)\le\tau N^2$, then
$$
F\cap(F+t)\ne\varnothing
\quad\text{for every }t\in Q\mathbb Z\cap[1,\kappa N].
\tag{1}
$$
Consequently, for $A\subseteq[N]$ with $|A|/N\ge1/3+\eta$ and $T(A)\le\tau N^2$,
$$
|A\cap Q\mathbb Z\cap[1,\kappa N]|\le\frac{8T(A)}{\eta N}.
\tag{2}
$$

## Choosing constants

Set $\delta_0=1/1000$, $\gamma=\delta_0/100$, $\epsilon_{\rm aff}=\gamma^2/4096$, $\epsilon_*=\epsilon_{\rm aff}/4$, $b_0=1/4$ and $A_0=2000$. Use the [structure theorem for a cyclic profile](interval-structure-of-a-cyclic-profile.md) at accuracy $\epsilon_*$, with fixed threshold $0<\beta\le1/12$ and $C_r=65536$. It applies at a parameter $\eta_s\le\beta$ to an indicator profile of mass at least $1/3$, with count at most $\beta^2/(6C_r)$ and disjointness under a shift in $\operatorname{lcm}(1,\ldots,\lfloor8/\eta_s\rfloor)G$. It gives a model $1_{[1/3,2/3)}(\chi(r)-\lambda s)$ within $\epsilon_*$ in $L^1$, with $\|\chi(v)\|_{\mathbb T}\ge5/16$ for the given shift $v$.

Choose the fixed sampling parameters $\xi=\beta/(10\sqrt{C_r})$, $k=\lceil32/\xi^2\rceil$ and $L=\lceil4\cdot6^k\rceil$. Take
$$
\begin{aligned}
C_*&=32000,\\
K&=\min\{1/(272L),\, b_0/(256A_0^2),\,1/16\},\\
a&=\min\{1/256,\,\delta_0/128,\,\gamma^2/1024,\,\beta^2/(72C_r)\},\\
\eta_0&=\min\{1/12,\,\beta,\,\epsilon_{\rm aff},\,\gamma/1024\}.
\end{aligned}
$$
All choices precede $\eta,N,F,t$. In the cyclic structure theorem use $\eta_s=8/H\le\eta\le\beta$, so $\lfloor8/\eta_s\rfloor=H$. Also $\kappa=K\eta^2\le\eta/16$.

## Finding a fixed-accuracy model

Suppose there is a shift as in (1) with $F\cap(F+t)=\varnothing$. Put $B=\lceil16/\eta\rceil\le17/\eta$. Then $BtL/N\le17KL\eta\le\eta/16$. The [square-root sampling argument](square-root-logarithmic-upper-bound.md#4-a-square-root-empirical-return-on-the-integers) gives a positive multiple $q$ of $Bt$ with
$$
Bt\le q<BtL,\qquad q/N,t/q\le\eta/16,\qquad
T_q(F)\le2T(F)+\xi^2N^2.
$$
Apply the [modulo-$q$ sampler](sampling-an-integer-set-modulo-q.md) on $G=\mathbb Z/q\mathbb Z$, keeping only samples with deficit at least $t$. This gives a profile $h$ disjoint from its translate by $v=t\bmod q$. Its mean is at least $|F|/N-q/N-t/q\ge1/3+3\eta/4$. Its count on the time triangle is at most
$$
\frac{T(F)+T_q(F)}{N^2}\le3a\eta^2+\xi^2\le\frac{\beta^2}{6C_r}.
$$
Since $Q\mid t$, we have $v\in QG$. The structure theorem now gives the stated model, with its displacement bound. The sampling precision $\xi$ is fixed throughout this step.

## Returning to the original count

The [integer rotation model](integer-rotation-model.md) gives an affine middle-third set $B_{\rm aff}$ with a frequency $\omega$ satisfying
$$
|F\triangle B_{\rm aff}|/N
\le \epsilon_*/(1-t/q)+q/N
\le\epsilon_{\rm aff}.
$$
Here the two terms are at most $4\epsilon_{\rm aff}/15$ and $\epsilon_{\rm aff}/16$. The same lemma gives
$$
\|\omega t\|_{\mathbb T}\ge\|\chi(v)\|_{\mathbb T}
-\|\omega t-\chi(v)\|_{\mathbb T}
>5/16-4\eta/(16-\eta)>b_0.
$$
For $1\le h\le H$, divisibility by $h$ gives $\|h\omega\|_{\mathbb T}\ge hb_0/t$. Thus any consecutive block of length $M$ has interval discrepancy at most $M/(H+1)+3t/(2b_0)$. For all blocks in $[N]$ this is at most
$$
D=N/(H+1)+3t/(2b_0),\qquad
D/N\le\eta/C_*+6K\eta^2\le 3\eta/2\le\gamma/64.
$$
[Rotation discrepancy](rotation-discrepancy.md)

The existence of $t\ge1$ and $t\le K\eta^2N$ gives $N\ge16$. The [phase-removal lemma](removing-the-phase-offset.md) applies at width $\delta_0$ by the discrepancy, approximation and original-count bounds. It gives a homogeneous strip set $\bar F$ with $T(\bar F)\le T(F)$ and $|F|\le|\bar F|+8a\eta^2 N/\delta_0$. The closed core at width $3\delta_0$ is inside the filled open core. Since $3\delta_0\le1/100$, the [integer density lemma](density-of-an-integer-rotation-set.md) gives
$$
|F|/N\le1/3+\sqrt a\,\eta+
\frac{A_0}{H+1}+A_0\sqrt{K/b_0}\,\eta+
\frac{8a\eta^2}{\delta_0}.
$$
Each of the four errors is at most $\eta/16$ by the choices of constants. This contradicts $|F|/N\ge1/3+7\eta/8$ and proves (1).

For an eligible $t$, remove from $A$ those $x$ for which $x+t\in A$. If there were at most $\eta N/8$ such points, the resulting $F$ would satisfy the hypotheses of (1), with no pair differing by $t$. Hence there are more than $\eta N/8$ such pairs for every eligible $t$. Sum over $t\in A\cap Q\mathbb Z\cap[1,\kappa N]$, using
$$
\sum_{t\in A}|\{x\in A:x+t\in A\}|=T(A),
$$
to get (2). When there are no eligible $t$, (2) is immediate.

## Size of the modulus

Write $\Lambda(m)=\operatorname{lcm}(1,\ldots,m)$. The quotient $\Lambda(2m)/\Lambda(m)$ divides $\binom{2m}{m}$. For each prime whose exponent increases, exactly one new prime power lies in $(m,2m]$. It contributes one to the binomial valuation, and the other summands in that valuation are nonnegative. Thus $\log\Lambda(2m)-\log\Lambda(m)\le2m\log2$. Summing on dyadic intervals and taking a power of two between $H$ and $2H$ gives $\log Q<4H\log2=O(1/\eta)$ for $H>1$. The case $H=1$ is immediate. In particular,
$$
\log(2Q/\kappa)+\log(1/\tau)+\log(1/\eta)=O(1/\eta).
$$
