# The complementary interval in a near-critical triple

Let $G$ be finite abelian with uniform measure $m$, and let $P,Q$ be preimages of cyclic intervals under one surjection $\phi:G\to\mathbb Z/n\mathbb Z$. Put $p=m(P)$, $q=m(Q)$ and assume $p,q\ge c$, $p+q\le1-c$ for $0<c\le1/3$. Let $C\subset G$ have $m(C)\ge1-p-q-\nu$, and suppose
$$
\mathbb E_{x,y}1_P(x)1_Q(y)1_C(x+y)\le E
$$
with $\nu,E\ge0$. Set $R=G\setminus(P+Q)$.

**Lemma.** The set $R$ is a cyclic interval lift of mass $1-p-q+1/n$. For every $0<\tau<\min(p,q)$,
$$
m(C\triangle R)\le \nu+1/n+4\lfloor n\tau\rfloor/n+2E/\tau.
$$
In particular, if $0\le E<c^2$ then $m(C\triangle R)\le\nu+1/n+6\sqrt E$.

**Proof.** Let $a=np$, $b=nq$ be the lengths in residues. After translating the two intervals to start at zero, their sum runs through residues $0,\ldots,a+b-2$ with no wrap since $a+b<n$. The number of representations of $k$ on this support is
$$
r(k)=\min(k+1,a,b,a+b-1-k).
$$
Every quotient representation of $\phi(z)$ yields exactly $|G|/n$ choices for the first input above its specified residue. Thus $P+Q$ is the full preimage of the quotient sum interval, and the normalized convolution at $z$ is $r(\phi(z))/n$ in these translated coordinates. This gives the mass and interval description of $R$.

For $\tau<\min(p,q)$, each positive integer level of $r$ at most $\lfloor n\tau\rfloor$ occurs twice, once at each end. The mass of the part of the support with convolution at most $\tau$ is therefore exactly $2\lfloor n\tau\rfloor/n$. On the remainder, the intersection with $C$ has mass at most $E/\tau$. Hence $\alpha=m(C\setminus R)\le2\lfloor n\tau\rfloor/n+E/\tau$. Comparing $m(C)$ with $m(R)$ gives $m(R\setminus C)\le\nu+1/n+\alpha$, proving the bound. When $E>0$ take $\tau=\sqrt E<c$ for the stated consequence. When $E=0$ the convolution is positive throughout $P+Q$, so $\alpha=0$. $\square$

If the original input sets are $A,B$ with $m(A\triangle P)+m(B\triangle Q)\le\epsilon$, changing the two factors to $P,Q$ increases their triple count with $C$ by at most $\epsilon$, by bounding the two $L^1$ changes under the normalized average. A total mass bound $m(A)+m(B)+m(C)\ge1-\nu$ implies $m(C)\ge1-p-q-(\nu+\epsilon)$. Thus the lemma also applies with $\nu+\epsilon$ and the original count bound plus $\epsilon$.
