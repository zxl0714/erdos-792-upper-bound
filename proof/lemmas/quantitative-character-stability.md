# A linear error bound for approximate characters

Let $f:(0,1]\to\mathbb C$ be measurable with $|f|=1$ almost everywhere, and put
$$
R=\int_{\substack{u,w>0\\u+w\le1}} |f(u)f(w)-f(u+w)|\,du\,dw.
$$
There is a real $\lambda$ such that
$$
\int_0^1|f(s)-e^{2\pi i\lambda s}|\,ds\le C_{\mathrm{phase}}R,
\qquad C_{\mathrm{phase}}=20000e^{24}.
$$

## Finding a modulation

We may assume $R\le1/32$, since otherwise the error at any $\lambda$ is at most $2\le64R$. Let $h=1/4$, $D=(0,h)$, $f_0=f1_D$ extended by zero, and $w=1_D*1_D$, with convolution on $\mathbb R$. Integrating the residual on each sum fiber in $D^2$ gives $\|f_0*f_0-wf\|_1\le R$. Therefore $\|f_0*f_0\|_1\ge h^2-R\ge h^2/2$. Its support has length $2h$, so $\|f_0*f_0\|_2^2\ge h^3/8$. Plancherel gives
$$
\|f_0*f_0\|_2^2\le \|\widehat f_0\|_\infty^2\|f_0\|_2^2
=h\|\widehat f_0\|_\infty^2
$$
for $\widehat f_0(\xi)=\int f_0(s)e^{-i\xi s}\,ds$. Choose $\xi$ with $|\widehat f_0(\xi)|\ge h/(2\sqrt2)$, using continuity and decay of the transform to attain its positive supremum. The function $g(s)=f(s)e^{-i\xi s}$ has the same residual $R$ and satisfies $|\int_Dg|\ge h/(2\sqrt2)$.

## Smoothing and solving a differential equation

Let $r=h/16=1/64$. Take $\phi$ supported on $[0,h]$, equal to one on $[r,h-r]$, and linear from zero at either endpoint to one on this inner interval. Then $\|\phi-1_D\|_1=r$, $\|\phi'\|_1=2$, and $\|\phi'\|_\infty=64$. Set
$$
A=\int\phi(y)g(y)\,dy,\qquad B=-\int\phi'(y)g(y)\,dy,\qquad \kappa=B/A.
$$
The lower bound on $\int_Dg$ gives $|A|\ge h/(2\sqrt2)-r>1/16$, and $|B|\le2$, so $|\kappa|\le32$. For $0\le x\le L=3/4$ set $U(x)=\int\phi(y)g(x+y)\,dy$. This convolution with a reflected absolutely continuous cutoff is Lipschitz, with $U(0)=A$ and $U'(x)=-\int\phi'(y)g(x+y)\,dy$ almost everywhere. The derivative follows by taking the cutoff's difference quotients in $L^1$.

The rectangle $(0,L)\times(0,h)$ lies in the time triangle, so
$$
\|U-Ag\|_{L^1(0,L)}\le R,\qquad \|U'-Bg\|_{L^1(0,L)}\le64R.
$$
In particular $\|U'-\kappa U\|_1\le96R$. The integral formula for the first-order equation is
$$
U(x)-Ae^{\kappa x}=\int_0^x e^{\kappa(x-t)}(U'(t)-\kappa U(t))\,dt.
$$
It gives a pointwise bound $96e^{24}R$ since $|\kappa|L\le24$. Dividing by $|A|$ and integrating, including the error $\|U-Ag\|_1$, gives
$$
\|g-e^{\kappa s}\|_{L^1(0,L)}\le K R,\qquad K=16+1152e^{24}.
$$
Write $b=\operatorname{Im}\kappa$. Since $g$ is unimodular, $|e^{\kappa s}-e^{ibs}|=\big||e^{\kappa s}|-1\big|\le|e^{\kappa s}-g(s)|$. Hence $k=\|g-e^{ibs}\|_{L^1(0,L)}\le2KR$.

## Extending to the whole interval

Restrict the residual integral to input times in $(0,L)$ and sums at most one. Replacing both inputs by $e^{ibs}$ costs at most $2Lk$, since the available partner interval has length at most $L$. The sum fiber has length $\ell(s)=s$ for $s\le L$ and $2L-s$ for $L\le s\le1$. Therefore $\int_0^1\ell(s)|g(s)-e^{ibs}|\,ds\le R+2Lk$. As $\ell(s)\ge1/4$ for $1/4\le s\le1$, and the initial quarter is already in $(0,L)$,
$$
\|g-e^{ibs}\|_1\le k+4(R+2Lk)=4R+7k\le (228+16128e^{24})R.
$$
Undo the modulation using $\lambda=(\xi+b)/(2\pi)$. This also covers $R=0$. For the triangle-weighted residual, use the [weighted comparison](approximate-characters-on-an-interval.md#a-weighted-residual) first. $\square$
