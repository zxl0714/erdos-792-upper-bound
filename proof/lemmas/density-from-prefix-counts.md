# Density from prefix counts

A deformation of the middle-third interval has a signed change in mass at each endpoint. The representation count near one endpoint depends on the accumulated change at the other. The following inequality converts these two estimates into a bound on the total change in mass.

**Lemma.** Let $\ell,r:(0,1)\to\mathbb R$ be bounded measurable functions with primitives
$$
L(s)=\int_0^s\ell(u)\,du,\qquad R(s)=\int_0^s r(u)\,du.
$$
Let $e_L,e_R$ be nonnegative measurable functions such that $B=\int_0^1 s(e_L+e_R)\,ds$ is finite. Define
$$
a_R(s)=r(s)+\frac{2L(s)-e_R(s)}s,\qquad
a_L(s)=\ell(s)+\frac{2R(s)-e_L(s)}s.
$$
With $v_+=\max(v,0)$, suppose
$$
E\ge \frac12\int_0^1 s\bigl((a_R)_+^2+(a_L)_+^2\bigr)\,ds.
\tag{1}
$$
Then
$$
L(1)+R(1)\le\sqrt E+B.
\tag{2}
$$
In particular, if each error is at most $C(Ds+h)$, then $B\le 2CD/3+Ch$.

**Proof.** Set $U=L+R$. Almost everywhere on $(0,1)$,
$$
s^2(a_R+a_L)=(s^2U(s))'-s(e_R+e_L).
$$
The boundary term at zero vanishes since $U(s)=O(s)$. Integrating and replacing each summand by its positive part gives
$$
U(1)-B=\int_0^1 s^2(a_R+a_L)\,ds
\le \int_0^1 s^2\bigl((a_R)_++(a_L)_+\bigr)\,ds.
$$
Cauchy–Schwarz bounds the last integral by $(2E)^{1/2}(2\int_0^1 s^3\,ds)^{1/2}=\sqrt E$. Integrating the assumed pointwise error bound gives the stated value of $B$.

## Endpoint integrals

At each time $s$ let $P_R(s,x)$ and $P_L(s,x)$ be measurable functions taking values in $[0,1]$. Outside a common bounded transition strip, suppose that $P_R(s,x)=1_{x<0}$ and $P_L(s,x)=1_{x>0}$. Their signed mass differences from these half-lines are $r(s)$ and $\ell(s)$.

For fixed $s$, the functions $P_R(s,x)$ and $1_{x<r(s)}$ have equal signed mass relative to $1_{x<0}$. With $w(x)=(sx+2L(s)-e_R(s))_+$, monotonicity gives
$$
\big(P_R(s,x)-1_{x<r(s)}\big)\big(w(x)-w(r(s))\big)\ge0.
$$
The difference $P_R(s,x)-1_{x<r(s)}$ integrates to zero. It follows that
$$
\int_{\mathbb R}P_R(s,x)w(x)\,dx
\ge \int_{-\infty}^{r(s)}w(x)\,dx
=\frac{s}{2}(a_R(s))_+^2.
$$
Reflecting $P_L(s,x)$ in $x$ gives the corresponding lower bound $s(a_L(s))_+^2/2$ with weight $(sx+2R(s)-e_L(s))_+$. Thus a bound by $E$ on the sum of these two weighted integrals over time gives (1).

For example, suppose each time slice contains $[1/3+\delta,2/3-\delta]$ and is contained in $[1/3-\delta,2/3+\delta]$ on the circle, where $\delta\le1/24$. For output time $s$ and phase $2/3+x$, with $|x|\le2\delta$, compare inputs at times $u$ and $s-u$. The phase window $[1/3-3\delta,1/3+x+3\delta]$ is preserved by reflection in the sum $2/3+x$. The two input slices meet this window in masses $x+3\delta+\ell(u)$ and $x+3\delta+\ell(s-u)$. Subtracting the window length gives the lower bound $(x+\ell(u)+\ell(s-u))_+$ for the representation integral at those times. Integrating in $u$ gives at least $(sx+2L(s))_+$. The symmetric calculation at the left endpoint, where the sum wraps around the circle, gives $(sx+2R(s))_+$ with the reflected output phase. The signed masses at either endpoint lie in $[-\delta,\delta]$, so the two weights vanish below $-2\delta$. Above $2\delta$ the corresponding output profiles vanish. These are therefore precisely the two endpoint integrals, with zero errors. The ordinary positive-time triple count is at least $(L(1)+R(1))_+^2$.

For integer rotations the passage from discrete outputs to the endpoint integrals has a separate proof. [Block transport](density-of-an-integer-rotation-set.md)
