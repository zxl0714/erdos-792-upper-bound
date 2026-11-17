# Sampling an integer set modulo $q$

Let $1\le t\le q\le N$ be integers, and let $F\subset[N]$ satisfy $F\cap(F+t)=\varnothing$. For $r\in\mathbb Z/q\mathbb Z$ and $0<s\le1$, define
$$
n_r(s)=r+q\left\lfloor\frac{Ns-r}{q}\right\rfloor,\qquad
h_E(r,s)=1_E(n_r(s))\,1_{\{Ns-n_r(s)\ge t\}}\qquad(E\subset[N]).
$$
The integer $n_r(s)$ is the largest integer in residue $r$ at most $Ns$, so the formula is independent of the representative of $r$. Write
$$
d_E=\mathbb E_r\int_0^1h_E(r,s)\,ds,\qquad
I(A,B;C)=\mathbb E_{r,u}\int_{\substack{x,y>0\\x+y\le1}}
h_A(r,x)h_B(u,y)h_C(r+u,x+y)\,dx\,dy,
$$
where the residue averages are uniform. For integer sets, write
$$
T_j(A,B;C)=\sum_{a,b\in\mathbb Z}1_A(a)1_B(b)1_C(a+b+j).
$$
This counts ordered pairs and includes $a=b$.

**Lemma.** The profile of $F$ satisfies $h_F(r,s)+h_F(r+t,s)\le1$ at every $r,s$. For all $A,B,C,E\subset[N]$,
$$
\frac{|E|}{N}-\frac qN-\frac tq\le d_E\le\frac{|E|}{N},
\qquad
I(A,B;C)\le\frac{T_0(A,B;C)+T_q(A,B;C)}{N^2}.
$$

**Proof.** The deficit $Ns-n_r(s)$ lies in $[0,q)$. If $h_F(r,s)=1$, the deficit is at least $t$, so $n_r(s)+t$ is the largest integer in residue $r+t$ at most $Ns$. Its membership in $F+t$ implies it lies outside $F$. This proves the shift inequality. At a fixed $s$, the deficits in the $q$ residues are $\{Ns\}+j$, $0\le j<q$, where $\{Ns\}$ is the fractional part. Exactly $t$ residues have deficit below $t$.

Before that deletion, an integer $n\in E$ appears in its own residue for $s\in[n/N,(n+q)/N)\cap(0,1]$, a cell of length at most $q/N$. The full length occurs for $n\le N-q$, and at most $q$ integers of $E$ lie above $N-q$. The uniform residue average gives the density bounds after subtracting at most $t/q$ for the deletion. These finitely many cells and the deficit threshold also give measurability.

For inputs $a=n_r(x)$ and $b=n_u(y)$, adding their deficits gives $n_{r+u}(x+y)=a+b$ or $a+b+q$. Bound the output indicator by $1_C(a+b)+1_C(a+b+q)$ and the input indicators by $1_A(a)1_B(b)$. Each pair $(a,b)$ fixes its residues and has a cell rectangle of area at most $(q/N)^2$, including when intersected with the time triangle. The factor $q^{-2}$ from the residue average proves the count inequality. $\square$

**Convolution estimate.** Put $f=1_F$ and $U=f*f$, using counting convolution on $\mathbb Z$. If $\|U(\cdot+q)-U\|_2\le\zeta |F|^{3/2}$, then
$$
\begin{aligned}
|T_q(F,F;F)-T_0(F,F;F)|
&=\left|\sum_z\bigl(U(z-q)-U(z)\bigr)f(z)\right|\\
&\le\zeta |F|^2.
\end{aligned}
$$
Thus $I(F,F;F)\le 2T_0(F,F;F)/N^2+\zeta$. For a prescribed density loss of $\eta/8$, the lemma applies with $16t/\eta\le q\le\eta N/16$.
