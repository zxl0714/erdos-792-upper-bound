# Approximate characters on an interval

Let $f:(0,1]\to\mathbb C$ be measurable and unimodular almost everywhere. Set $\Delta=\{(u,w):u,w>0,\ u+w\le1\}$ and
$$
R=\int_\Delta |f(u)f(w)-f(u+w)|\,du\,dw.
$$
For every $\epsilon>0$ there is $\delta>0$ such that $R\le\delta$ implies $\int_0^1|f(s)-e^{2\pi i\lambda s}|\,ds<\epsilon$ for some real $\lambda$.

**Proof.** Take $0<\epsilon\le1$ and set $a=\epsilon/16$, $h_0=\epsilon^2/10000$. On $D=(0,1/2)$ use Christ and Shao's local approximate-character theorem at $L^2(D)$ error $h_0$. Its hypothesis is that the residual of $f(u)f(w)$ from a measurable function of $u+w$ exceeds a threshold $d_*$ on a set of area less than $d_*$ in $D^2$. Take the sum function to be $f$ itself. With $\delta=\min(h_0,d_*^2/2)$, Markov gives bad area at most $R/d_*\le d_*/2$. A measurable argument of $f$ supplies the real phase in the theorem. It yields $ce^{i\xi s}$ with $|c|=1$, $\xi\in\mathbb R$, and $L^1(D)$ error $k\le h_0$ by Cauchy–Schwarz. [Christ and Shao, Proposition 5.1](https://arxiv.org/html/1006.4318v1)

Integrate the residual over $D^2$, charging the two input approximations. Each input error costs $|D|k$, and the density of the sum in $D^2$ is $\ell(s)=\min(s,1-s)$ for $0<s<1$. Hence
$$
\int_0^1 \ell(s)|f(s)-c^2e^{i\xi s}|\,ds\le R+k.
$$
On $[1/4,1/2]$ the weight is at least $1/4$, and the approximation by $ce^{i\xi s}$ is already valid. Comparing the two approximations gives $|c-c^2|/4\le k+4(R+k)$. Thus $|1-c|\le16R+20k$ and $|1-c^2|\le32R+40k$.

On $[a,1-a]$ the sum weight is at least $a$. The two end intervals together cost at most $4a$ since the pointwise error is at most two. Thus
$$
\int_0^1|f(s)-e^{i\xi s}|\,ds\le4a+(R+k)/a+32R+40k<\epsilon
$$
by $R,k\le h_0$. Take $\lambda=\xi/(2\pi)$. All three time marginals are absolutely continuous, so the argument is unaffected by changes on a null set of times. $\square$

## A weighted residual

For $R_\mu=\int_\Delta 3(u+w)|f(u)f(w)-f(u+w)|\,du\,dw$, split the triangle at $u+w=b$. The first region has area $b^2/2$ and residual at most two, while the other has weight at least $3b$. It follows that $R\le b^2+R_\mu/(3b)$, giving $R\le (4/3)R_\mu^{2/3}$ for $0<R_\mu<1$ by $b=R_\mu^{1/3}$. If $R_\mu=0$, positivity of the weight gives $R=0$. The [quantitative proof](quantitative-character-stability.md) gives a linear estimate in the unweighted residual.
