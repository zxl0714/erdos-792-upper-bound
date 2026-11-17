# Stability near the middle third

Write $\mathbb T=\mathbb R/\mathbb Z$, with total length one, and give the finite abelian group $K$ uniform probability measure. For a measurable $F\subseteq\mathbb T\times K$ let $F_k$ denote its slice at $k$.

**Lemma.** Let $0<d\le1/24$. Suppose, up to null sets, that every $F_k$ contains $[1/3+d,2/3-d]$ and is contained in $[1/3-d,2/3+d]$. Put $I=[1/3,2/3)$, $m=|F|-1/3$, and
$$
T=\mathbb E_{k,l\in K}\int_{\mathbb T^2}
1_{F_k}(x)1_{F_l}(y)1_{F_{k+l}}(x+y)\,dx\,dy.
$$
If $m\ge0$, then
$$
|F\triangle(I\times K)|\le12\sqrt T,\qquad T\ge\frac94m^2.
\tag{1}
$$

## A half-line inequality

Let $L_1,L_2:\mathbb R\to[0,1]$ agree with $1_{x>0}$ outside bounded intervals and let $R:\mathbb R\to[0,1]$ agree there with $1_{x<0}$, allowing different bounded intervals. Let $\ell_i=\int(L_i-1_{x>0})$, $r=\int(R-1_{x<0})$, $S=\ell_1+\ell_2+r$, and $e=\int_{\mathbb R}(L_1*L_2)(s)R(s)\,ds$.

For fixed $s$, integrate $L_1(u)L_2(s-u)\ge L_1(u)+L_2(s-u)-1$ on $[-M,M]$ for sufficiently large $M$. The two right-hand integrals are $M+\ell_1$ and $M+s+\ell_2$. The convolution is nonnegative, so
$$
(L_1*L_2)(s)\ge(s+\ell_1+\ell_2)_+.
$$
Replacing $R$ by $1_{s<r}$ reduces the integral against any increasing weight for which the difference is integrable. Indeed, the difference of the two profiles has integral zero and has the same sign as $s-r$. Subtract the value of the weight at $r$ to see the inequality. Applying it to the convolution lower bound gives $e\ge S_+^2/2$.

Let $h_R=\int_{s>r}R(s)$, the mass to the right of the endpoint of the monotone replacement. The mass missing to its left is also $h_R$. For $s=r+u$ with $u>0$, the convolution lower bound is $(u+S)_+$. Among densities at most one with mass $h_R$ on $(0,\infty)$, the integral against this weight is minimized on $[0,h_R]$, by the same sign argument at $h_R$. Consequently
$$
e\ge\int_0^{h_R}(u+S)_+\,du\ge\tfrac12(h_R-S_-)_+^2,
\qquad
h_R\le S_-+\sqrt{2e}.
\tag{2}
$$

## Applying the inequality at both endpoints

For each $k$ define $L_k(x)=1_{F_k}(1/3+x)$ and $R_k(x)=1_{F_k}(2/3+x)$ on $[-d,d]$. Extend $L_k$ by zero on the left and one on the right, and $R_k$ by one on the left and zero on the right. Their signed masses $\ell_k,r_k$ lie in $[-d,d]$ and
$$
|F_k|=1/3+\ell_k+r_k,\qquad m=\mathbb E_k(\ell_k+r_k).
$$
Let $h_L(k),h_R(k)$ be half the $L^1$ distances of the respective profiles from $1_{x>-\ell_k}$ and $1_{x<r_k}$.

A triple can meet the support either without wrapping or with one wrap. In the first case write its input phases as $1/3+u,1/3+v$. The output phase is $2/3+u+v$, and support forces $-d\le u,v\le2d$ and $-2d\le u+v\le d$. The profile extensions agree with the actual indicators throughout this range, where the continued portions with value one lie inside the filled core. Conversely any contribution to $L_k(u)L_l(v)R_{k+l}(u+v)$ has those same bounds. For a wrapped sum, the inputs are $2/3+u,2/3+v$, the output is $1/3+u+v$, and the bounds are $-2d\le u,v\le d$ and $-d\le u+v\le2d$. Here the same argument applies with the roles exchanged. These two contacts have disjoint input phase bands since $4d<1/3$. With no change of measure under translation,
$$
\begin{aligned}
e_L(k,l)&=\int_{\mathbb R^2}L_k(u)L_l(v)R_{k+l}(u+v)\,du\,dv,\\
e_R(k,l)&=\int_{\mathbb R^2}R_k(u)R_l(v)L_{k+l}(u+v)\,du\,dv,\\
T_L&=\mathbb E e_L,\qquad T_R=\mathbb E e_R,\qquad T=T_L+T_R.
\end{aligned}
$$

Put $S=\ell_k+\ell_l+r_{k+l}$ and $S'=r_k+r_l+\ell_{k+l}$. The half-line bounds give
$$
e_L\ge S_+^2/2,\quad e_R\ge(S')_+^2/2,\quad
h_R(k+l)\le S_-+\sqrt{2e_L},\quad h_L(k+l)\le(S')_-+\sqrt{2e_R}.
$$
For the right-right contact reflect both input variables and the output through zero to use the same half-line bounds. By Cauchy–Schwarz,
$$
P:=\mathbb E S_++\mathbb E(S')_+\le\sqrt{2T_L}+\sqrt{2T_R}\le2\sqrt T.
$$
Uniformity of $k+l$ gives $\mathbb E(S+S')=3m$. Therefore $3m\le P$, proving the count bound in (1). The mean of the two negative parts is $P-3m\le P$, so averaging (2) at both contacts gives $\mathbb E(h_L+h_R)\le4\sqrt T$.

## Controlling the movement of the endpoints

For fixed $k$, averaging over $l$ gives $\mathbb E_l S=\ell_k+m$ and $\mathbb E_l S'=r_k+m$. Jensen applied to the two positive-part squares, followed by $m\ge0$, gives
$$
\mathbb E_k(\ell_k)_+^2\le2T_L,\qquad
\mathbb E_k(r_k)_+^2\le2T_R.
$$
Thus their positive parts have combined mean at most $2\sqrt T$. The mean of the negative parts is smaller by $m$, so $\mathbb E_k(|\ell_k|+|r_k|)\le4\sqrt T$.

In each slice the interval $I_k=(1/3-\ell_k,2/3+r_k)$ has the monotone profiles used above. The two transition strips are disjoint, so $|F_k\triangle I_k|=2(h_L(k)+h_R(k))$ and $|I_k\triangle I|=|\ell_k|+|r_k|$. Averaging the triangle inequality now gives $|F\triangle(I\times K)|\le8\sqrt T+4\sqrt T$. All the contact bounds were applied to the actual triple of slices indexed by $k,l,k+l$.
