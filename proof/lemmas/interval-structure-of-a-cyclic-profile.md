# Interval structure of a cyclic profile with few triples

**Theorem.** Fix $0<\epsilon\le10^{-4}$. There is $\beta=\beta(\epsilon)>0$ with the following property. Let $G$ be finite cyclic with uniform measure. Take $0<\eta\le\beta$, put $Q_\eta=\operatorname{lcm}(1,\ldots,\lfloor8/\eta\rfloor)$, and let $v\in Q_\eta G$. Suppose a measurable $h:G\times(0,1]\to\{0,1\}$ satisfies $h(g,s)+h(g+v,s)\le1$ almost everywhere. Write $f(s)=\mathbb E_g h(g,s)$ and assume
$$
\int_0^1f(s)\,ds\ge1/3,\qquad
I=\int_\Delta\mathbb E_{g,g'} h(g,u)h(g',w)h(g+g',u+w)\,du\,dw
\le\beta^2/(6C_r),
$$
where $\Delta=\{(u,w):u,w>0,\ u+w\le1\}$ and $C_r=65536$. There is a character $\chi:G\to C_n=(1/n)\mathbb Z/\mathbb Z$ of order $n>8/\eta$ and a real $\lambda$ such that
$$
H(g,s)=1_{[1/3,2/3)}(\chi(g)-\lambda s),\qquad
\int_0^1\mathbb E_g|h(g,s)-H(g,s)|\,ds\le\epsilon,\qquad
\|\chi(v)\|_{\mathbb T}\ge1/3-\epsilon/10>5/16.
$$
The model is sum-free on $G\times\mathbb R$, including repeated inputs.

## Choice of fixed parameters

Write $K=(3\pi/2)\cdot20000e^{24}$ and take
$$
r=\min(\epsilon/100,\epsilon^2/(100K^2),10^{-6}),\qquad \tau=r/4,\qquad D_*=\tau^3/100.
$$
Set $b_0=\sin(\pi/4)/(2\pi)$, $M_0=\lceil b_0^{-2}+1\rceil$, and $e=\min(r/4,1/2400,b_0/4)$. The [cyclic pair lemma](stability-of-cyclic-critical-pairs.md) with minimum input mass $1/12$, precision $e<1/1200$, and minimum order $M_0$ gives $D_0,\nu_0,E_0$. Set $\ell=\min(\nu_0/4,1/100)$ and
$$
\beta=\min\bigl(1/12,\ 8/D_0,\ r/10000,\ D_*\ell/60000,\ \sqrt{D_* C_r E_0}\bigr).
$$

## Interval models on typical time pairs

The [slice density lemma](nearly-constant-slice-densities.md) gives
$$
M:=\|f-1/3\|_1\le9000\sqrt{\eta^2+12288 I}\le9000\sqrt{33/32}\,\beta<10000\beta\le r.
$$
Use the probability measure $d\mu=3(u+w)\,du\,dw$ on $\Delta$. The marginal densities of $u,w,u+w$ sum to three. Hence the union of the three section mass exceptions $|f(s)-1/3|>\ell$ has measure at most $3M/\ell$. The exception where the spatial triple count exceeds $E_0$ has measure at most $3I/E_0$, by the weight bound. Our choice of $\beta$ makes the sum of these bounds at most $D_*/2+D_*/2=D_*$. All three shift constraints hold off a null set because the marginals are absolutely continuous.

On a remaining pair, take $A,B,C$ to be the sections at $u,w,u+w$. Their masses lie in $[1/3-\ell,1/3+\ell]$. Thus $m(A)>1/12$, $|m(B)-1/3|\le\nu_0$, $m(A)+m(B)<3/4$, and $m(A)+m(B)+m(C)\ge1-\nu_0$. Both inputs are shift independent, and $\eta\le8/D_0$ gives $\operatorname{lcm}(1,\ldots,D_0)\mid Q_\eta$. The pair lemma gives parallel interval approximations to $A,B$ of total error less than $e$ and order greater than $D_0$. Their densities are in $[1/4,3/4]$ since $\ell\le1/100$ and $e\le1/2400$.

## One common character and its order

By [character uniqueness](uniqueness-of-cyclic-characters.md), $2e<b_0$ suffices to identify any two of the above approximating characters up to sign when their intervals approximate the same section. Apply the [propagation lemma](common-character-for-interval-slices.md) with both families equal to the sections of $h$, cutoff $\tau$, and exceptional pair mass at most $D_*$. It gives one character $\chi$, interval approximants of error at most $e$ outside a time set of measure at most $2\tau$, and measurable choices. Choose empty intervals on the exceptional times. The resulting $P_s$ have total error $\delta\le e+2\tau\le3r/4$.

If the order $n$ of $\chi$ were at most $8/\eta$, it would divide $Q_\eta$ and $\chi(v)=0$. Each $P_s$ would be invariant under $v$. Since $h_s$ is shift independent, its intersection with $P_s$ occupies at most half of $P_s$, giving $m(h_s\triangle P_s)\ge f(s)$. Integrating would imply $\delta\ge1/3$, a contradiction. Thus $n>8/\eta$ and $1/n<\beta/8$.

## The linear time phase

Apply the [phase alignment lemma](phase-alignment-of-interval-slices.md) with $a=2\delta+M+2/n$. The bounds above give $a<4r$, $I+2a+4/n<11r$, and $4/n<2r$. The lemma gives $\lambda$ with integrated approximation error at most
$$
a+K\sqrt{I+2a+4/n}+4/n<6r+K\sqrt{11r}
\le (6/100+\sqrt{11}/10)\epsilon<\epsilon.
$$
Its displacement estimate gives $\|\chi(v)\|_{\mathbb T}\ge1/3-2a-2/n>1/3-9r\ge1/3-9\epsilon/100$. Finally, $[1/3,2/3)$ is sum-free on the circle, so its preimage under $(g,s)\mapsto\chi(g)-\lambda s$ is sum-free. $\square$
