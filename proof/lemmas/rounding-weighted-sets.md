# Rounding weighted sets

For $C\subseteq[N]$ let $T(C)$ count ordered pairs $x,y\in C$ with $x+y\in C$, including $x=y$. Let $\alpha(A)$ denote the largest cardinality of a sum-free subset of $A$.

**Lemma.** Let $0<\epsilon,\zeta\le1/4$, $0\le\theta\le1$ and $W\ge1$. Suppose $0\le w_n\le W$, $\sum_{n=1}^N w_n=N$, and
$$
T(C)\le\zeta N^2\quad\Longrightarrow\quad
\sum_{n\in C} w_n\le\theta N
\qquad(C\subseteq[N]).
\tag{1}
$$
Include each $n$ in $A$ independently with probability $w_n/W$. Put $\mu=N/W$. If
$$
N\ge40001/\zeta,\qquad
\frac{\epsilon^2\mu}{96}\ge
10^8\sqrt{N/\zeta}\log(1/\zeta)\log N+\log3,
\tag{2}
$$
then with probability at least $1-\exp(-\epsilon^2\mu/96)$,
$$
\bigl||A|-\mu\bigr|\le\epsilon\mu/4,\qquad
\alpha(A)\le(\theta+\epsilon)|A|.
\tag{3}
$$
A sufficient condition for (2) is $N\ge10^{40}\max(2,W,\epsilon^{-1},\zeta^{-1})^{10}$.

## Containers for distinct Schur triples

Use the $3$-uniform hypergraph $G$ on $[N]$ with edges $\{x,y,x+y\}$ for $1\le x<y$ and $x+y\le N$. A sum-free set is independent in $G$. Summing the $N-2x$ choices of $y$ over $1\le x\le\lfloor(N-1)/2\rfloor$ gives $e(G)=\lfloor(N-1)^2/4\rfloor$. For $N\ge4$ this lies between $N^2/16$ and $N^2/4$. The average degree is at least $3N/16$. A pair of vertices has at most three completions and a triple has at most one. Thus the degree parameters of Saxton and Thomason satisfy
$$
\delta_2\le16/(N\tau),\qquad
\delta_3\le16/(3N\tau^2),\qquad
\delta(G,\tau)=4\delta_2+2\delta_3\le75/(N\tau^2)
\quad(0<\tau\le1).
$$
Take $\tau=100/\sqrt{\zeta N}<1/2$ by (2). Then $\delta(G,\tau)\le75\zeta/10000<\zeta/(12\cdot 3!)$.

Corollary 3.6 supplies a family $\mathcal C$ covering all independent sets, with $e(G[C])\le\zeta e(G)$ for each container. Its logarithmic cardinality is at most $c(3)\log(1/\zeta)N\tau\log(1/\tau)$, where $c(3)=518400$. Substituting $\tau$ and using $\log(1/\tau)\le\log N$ gives
$$
\log|\mathcal C|\le10^8\sqrt{N/\zeta}\log(1/\zeta)\log N.
\tag{4}
$$
[Saxton and Thomason, Definition 3.2 and Corollary 3.6](https://arxiv.org/html/1204.6595v3)

Each edge contributes two ordered pairs and there are at most $N/2$ pairs with equal inputs. Hence
$$
T(C)\le2\zeta e(G)+N/2\le\zeta N^2/2+N/2\le\zeta N^2
\qquad(C\in\mathcal C).
$$
The final inequality uses $N\ge1/\zeta$, so the full-count hypothesis (1) applies to each container.

## Simultaneous rounding

For $C\in\mathcal C$, $X_C=|A\cap C|$ has mean at most $\theta\mu\le\mu$. Write $u=\epsilon\mu/4$. Bernstein's inequality for sums of independent Bernoulli variables gives
$$
\Pr(X_C>\mathbb E X_C+u)\le
\exp\left(-\frac{u^2}{2(\mathbb E X_C+u/3)}\right)
\le\exp(-\epsilon^2\mu/48).
$$
The two deviations of $|A|$ from its mean $\mu$ by more than $u$ have the same bound, since its variance is at most $\mu$. The union of these events and the container events has probability at most $(|\mathcal C|+2)\exp(-\epsilon^2\mu/48)\le\exp(-\epsilon^2\mu/96)$ by (2) and (4).

On the complementary event any sum-free $S\subseteq A$ lies in a container. Therefore $|S|\le\theta\mu+u$ and $|A|\ge\mu-u$. Since $\theta\le1$ and $\epsilon\le1/4$,
$$
|S|/|A|\le\frac{\theta+\epsilon/4}{1-\epsilon/4}\le\theta+\epsilon.
$$
This proves (3).

Finally, put $R=\max(2,W,\epsilon^{-1},\zeta^{-1})$. The bounds $\log N\le4N^{1/10}$ and $\log(1/\zeta)\le2\zeta^{-1/5}$ make the nonconstant term on the right of (2) at most $8\cdot10^8N^{3/5}R^{7/10}$. The left side is at least $N/(96R^3)$. At $N=10^{40}R^{10}$ the ratio exceeds $10^5$ and the left side also absorbs $\log3$. This ratio increases with $N$. The same size requirement ensures $N\ge40001/\zeta$, proving the claimed polynomial bound.
