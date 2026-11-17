# A circle triple count measures phase misalignment

Let $I_\ell(c)$ be the arc of length $\ell$ centered at $c$ in the circle $\mathbb T=\mathbb R/\mathbb Z$, with normalized Haar measure. Fix $1/3<\theta\le1/2$. At each time $s$ define $F_s=I_{1/3}(c(s))$. Let $X_s,Y_s$ be the intersection and union of $F_s-\theta,F_s+\theta$, respectively. Their common center is $p(s)=c(s)+1/2$ and their lengths are $a=2\theta-2/3$ and $2/3-a$. Indeed, relative to $p(s)$, the two translated centers are $\pm(1/2-\theta)$, so the two intervals overlap inside an arc shorter than the circle.

**Lemma.** For any $u,w,z$, put $d=\|p(u)+p(w)-p(z)\|_{\mathbb T}$. The normalized count
$$
E(u,w;z)=\int_{\mathbb T^2}1_{X_u}(x)1_{F_w}(y)1_{Y_z}(x+y)\,dx\,dy
$$
is exactly $d^2/2$ for $d\le a$. At every $d\in[0,1/2]$ it is at least $\tfrac12\min(d,a)^2\ge2a^2d^2$. Thus it vanishes precisely when $p(u)+p(w)=p(z)$ in $\mathbb T$.

**Proof.** Write $b=1/3$ and $L=a+b$. The input sum arc has center $p(u)+p(w)-1/2$ and length $L<1$. Its complement has the same length as $Y_z$ and center $p(u)+p(w)$. Choose a coordinate with sum support $S=[0,L]$. The convolution density at $x\in S$ is
$$
C(x)=|[0,a]\cap[x-b,x]|=\min(x,a,L-x),
$$
using $a\le b$. Extend $C$ by zero off $[0,L]$ on the line. The count integrates $C$ over $S\setminus(S+\delta)$ on the circle, where $\delta=p(z)-p(u)-p(w)$. Reflection about $L/2$ allows use of the representative $d\ge0$.

Put $H(t)=\int_0^t C(x)\,dx$ for $t\ge0$. If $d+L\le1$, the part of $S$ uncovered by $S+d$ runs from $0$ to $\min(d,L)$. If $d+L>1$, the shift wraps, $d<L$, and the uncovered part runs from $d+L-1$ to $d$. Thus the count as a function of $d$ is
$$
E(d)=H(d)-H((d+L-1)_+).
$$
It is nondecreasing. Before the wrap its derivative is $C(d)\ge0$. After the wrap, write $l=d+L-1$ so the derivative is $C(d)-C(l)$. We have $C(l)\le a,l$, and $d\ge l$ and $L-d\ge l$ because $2d\le1$. Therefore each entry in the minimum defining $C(d)$ is at least $C(l)$. Absolute continuity gives monotonicity across the transition as well.

For $0\le d\le a$, there is no wrap since $d+L\le2a+b\le1$, and $C(x)=x$ for $x\le d$. Hence $E(d)=d^2/2$. Monotonicity gives the lower bound for $d\ge a$, and $\min(d,a)\ge2ad$ since $d,a\le1/2$. $\square$

If the phases are measurable, integrate at $z=u+w$ over $\Delta=\{u,w>0,\ u+w\le1\}$. Under $d\mu=3(u+w)\,du\,dw$, the mean squared phase defect is at most $3\int_\Delta E(u,w;u+w)\,du\,dw/(2a^2)$. This follows from the pointwise bound and the upper bound three on the weight.

At $\theta=1/2$, the length is $a=1/3$ and $X_s=Y_s=F_s+1/2$. Shifting the first input and the output by $1/2$ shows that the same pointwise formula applies to the count with $F$ in all three positions.
