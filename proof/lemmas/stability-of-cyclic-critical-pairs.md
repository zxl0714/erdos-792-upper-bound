# Interval structure of a near-critical cyclic pair

**Lemma.** Fix $0<c_0\le1/12$, $0<\epsilon<c_0/100$, and an integer $M_0\ge1$. There are $D_0\ge M_0$ and $\nu_0,E_0>0$, depending only on these parameters, with the following property. Let $G$ be finite cyclic with uniform measure $m$, and $A,B,C\subset G$ with measures $a,b,c$. Suppose
$$
a\ge c_0,\quad |b-1/3|\le\nu_0,\quad a+b\le3/4,\quad a+b+c\ge1-\nu_0,
\qquad E=\mathbb E_{x,y}1_A(x)1_B(y)1_C(x+y)\le E_0.
$$
Assume $A,B$ are each disjoint from their translate by $v\in Q_0G$, where $Q_0=\operatorname{lcm}(1,\ldots,D_0)$. Then there is a surjection $\phi:G\to\mathbb Z/n\mathbb Z$ with $n>D_0$ and two nonempty cyclic intervals $I,J$ such that
$$
m(A\triangle\phi^{-1}(I))+m(B\triangle\phi^{-1}(J))<\epsilon.
$$

## Obtaining an exact critical pair

Use Griesmer's near-critical sumset classification, Theorem 1.15, at precision $e_2=\epsilon/10$, and let $D_2$ be its index bound. Set $D_0=\max(D_2,M_0)$ and $e_1=\min(\epsilon/10,1/(100D_0))$. At precision $e_1$ let $d_1$ be the tolerance in Griesmer's popular-sumset theorem, Theorem 1.1. Choose $\nu_0=\min(\epsilon/10,d_1/2)$ and $E_0=d_1^2/2$. [Griesmer, Theorems 1.1 and 1.15](https://arxiv.org/html/1807.01694v3)

With normalized convolution, let $A+_{d_1}B=\{z:(1_A*1_B)(z)>d_1\}$. Its intersection with $C$ has mass at most $E/d_1$, so its total mass is at most $1-c+E/d_1\le a+b+d_1$. Also $a,b>e_1$. Theorem 1.1 gives $S,T$ with $m(S+T)\le s+t$, where $s=m(S)$ and $t=m(T)$, and errors $e_A=m(A\triangle S)$, $e_B=m(B\triangle T)$ satisfying $e_A+e_B<e_1$. Both $s,t>e_2$ and $s+t\le3/4+e_1$.

Theorem 1.15 therefore applies to $S,T$. Let $K$ be its subgroup and $h_K=m(K)\ge1/D_0$. Since $[G:K]$ divides $Q_0$, we have $v\in K$. The overlaps $m(S\cap(S+v))$ and $m(T\cap(T+v))$ are at most $2e_A$ and $2e_B$, respectively. Indeed, an overlap point must be in a part added to the original set or in its translate. The trimmed sets $U=S\cap A$, $V=T\cap B$ are exactly shift independent, with $m(U)\ge a-e_A$ and $m(V)\ge b-e_B$.

## Excluding the two periodic cases

In case II, at least one of $S,T$ contains a nonempty part nearly filling its $K$-saturation, with loss at most $e_2h_K$. If that part is $S_1\subset S$, both $S_1$ and $S_1+v$ lie in $S_1+K$. They overlap in measure at least $2m(S_1)-m(S_1+K)\ge(1-2e_2)h_K>2e_1$, a contradiction. The same calculation excludes a part in $T$.

In case I, $P=S+T+K$ has $m(P)\le s+t+e_2 h_K<1$. Let $H$ be its stabilizer, $h=m(H)\le1/2$, and $c'=1-m(P)$. Write $p_S=m(S+H)$ and $p_T=m(T+H)$. Kneser applied to $(S+K)+(T+K)$ gives $p_S+p_T+c'\le1+h$. Since $v\in K\subset H$, the trimmed sets have $2m(U)\le p_S$, $2m(V)\le p_T$. Together with $p_S\ge h$ this gives
$$
m(U)+m(V)+c'\le1+h-\tfrac12(p_S+p_T)
\le1+h/2-m(V)\le 11/12+\nu_0+e_1.
$$
On the other hand, $m(U)+m(V)+c'\ge s+t-e_1+1-m(P)\ge1-e_1-e_2$. These bounds contradict $\nu_0+2e_1+e_2<1/12$.

## The interval case

In case III, $S,T$ are contained in translates of a pair of parallel intervals or progressions in $K$, of measures less than $s+e_2$ and $t+e_2$. In particular, $T$ lies in one $K$-coset. Shift independence of $V$ within that coset gives $h_K\ge2m(V)\ge2b-2e_B>1/2$, so $K=G$. A finite group has no circle quotient, so the parallel progressions are preimages under one surjection $\phi:G\to\mathbb Z/n\mathbb Z$. Absorb the translates into their quotient intervals. The resulting lifts $P_A,P_B$ contain $S,T$ and add less than $e_2$ in mass each. The two approximation errors sum to less than $e_1+2e_2<\epsilon$.

If $n\le D_0$, then $n\mid Q_0$ and $\phi(v)=0$, so $P_A$ is invariant under $v$. The intersection $A\cap P_A$ would occupy at most half of $P_A$, giving $m(A\triangle P_A)\ge m(A)\ge c_0$. This contradicts the approximation and proves $n>D_0$. $\square$
