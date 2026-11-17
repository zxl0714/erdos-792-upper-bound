# Sampling the intersection and union of two translates

Let $1\le t\le q\le N$ be integers, and suppose $F\subset[N]$ has $F\cap(F+t)=\varnothing$. Set
$$
X=(F-t)\cap(F+t),\qquad Y=\bigl((F-t)\cup(F+t)\bigr)\cap[N].
$$
Use the [modulo-$q$ sampler](sampling-an-integer-set-modulo-q.md) for these three sets, with the same cutoff $Ns-n_r(s)\ge t$ in all three profiles. Write $x(s),y(s),f(s)$ for their respective residue averages, and $d_X,d_Y,d_F$ for the time integrals.

**Lemma.** At every $r,s$ the profiles of $X$ and $F$ obey the shift inequality $h_E(r,s)+h_E(r+t,s)\le1$. The profiles also satisfy $h_X\le h_Y$ and $h_F+h_Y\le1$. For every $s$,
$$
0\le x(s),f(s)\le\tfrac12,\qquad f(s)+y(s)\le1,\qquad
|x(s)+y(s)-2f(s)|\le2t/q,\qquad x(s)\le f(s)+t/q.
$$
In particular $x(s)\ge3f(s)-1-2t/q$. Moreover,
$$
\frac{|E|}{N}-\frac qN-\frac tq\le d_E\le\frac{|E|}{N}\quad(E=X,Y,F),
\qquad
d_X+d_Y+d_F\ge\frac{3|F|}{N}-\frac{3q}{N}-\frac{5t}{q}.
$$
For the three choices $(A,B,C)=(X,Y,F),(X,F,Y),(Y,F,X)$,
$$
I(A,B;C)\le\frac{T_0(A,B;C)+T_q(A,B;C)}{N^2},
\qquad T_j(A,B;C)\le2T_j(F,F;F)\quad(j\in\mathbb Z).
$$

**Proof.** The inclusion $X\subset F-t$ makes $X$ shift independent. The inclusions $X\subset Y\subset[N]$ and $F\cap Y=\varnothing$ give the pointwise comparisons. Averaging the two shift inequalities gives $x,f\le1/2$.

At time $s$ put $k=\lfloor Ns\rfloor$ and $J=[k-q+1,k-t]\cap[N]$, considered as an integer interval. The retained samples inside $[N]$ run through $J$ once each. Since $1_X+1_Y=1_F(\cdot-t)+1_F(\cdot+t)$ on $[N]$, we have
$$
q(x+y)=|F\cap(J-t)|+|F\cap(J+t)|,\qquad qf=|F\cap J|.
$$
Translating an integer interval by $\pm t$ removes at most $t$ integers and adds at most $t$, so each translated count differs from $qf$ by at most $t$. Also $qx=|X\cap J|\le|F\cap(J+t)|$. These give both section estimates, and $y\le1-f$ then gives the lower bound for $x$. The individual density inequalities follow from the sampler. Integrating $x+y+f\ge3f-2t/q$ gives the combined inequality.

The count estimate with $T_0+T_q$ follows from the same sampler for each choice of output. To bound $T_j$, cover the occurrence of $Y$ by the translates $F+\sigma$, $\sigma=\pm t$. In $(X,Y;F)$, replace the input pair $(a,b)$ by $(a+\sigma,b-\sigma)$. In $(X,F;Y)$, replace it by $(a-\sigma,b)$. In $(Y,F;X)$, replace it by $(a-\sigma,b)$. For each fixed $\sigma$, the new inputs and their sum plus $j$ belong to $F$, since $X+\sigma$ and $X-\sigma$ are subsets of $F$. The maps are injective for fixed $\sigma$. Summing the two bounds proves the claim. $\square$
