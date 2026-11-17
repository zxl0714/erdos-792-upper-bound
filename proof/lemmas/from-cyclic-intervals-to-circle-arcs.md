# From cyclic intervals to centered circle arcs

Let $G$ be finite cyclic, with uniform measure $m$, and $\chi:G\to C_n=(1/n)\mathbb Z/\mathbb Z$ surjective. Consider measurable indicator profiles $X,F,Y$ on $G\times(0,1]$. Assume $F_s$ is disjoint from $F_s+v$ almost everywhere, and put $\alpha=\int_0^1m(X_s)\,ds$. Let $P_s$ be cyclic interval preimages under $\chi$, with empty and full intervals allowed, and assume
$$
\int_0^1m(F_s\triangle P_s)\,ds\le\delta,\qquad
\int_0^1 |m(F_s)-1/3|\,ds\le M,\qquad c\le\alpha\le1/3-c
$$
for $0<c\le1/12$. Denote the integrated errors of $X_s,Y_s$ from the intersection and union of $F_s-v,F_s+v$ by $\sigma_X,\sigma_Y$, respectively, using symmetric-difference measure. Put $a=2\delta+M+2/n$ and $b=\sigma_X+2a+4/n$.

**Lemma.** If $2a+4/n<1/12$ and $b\le c/4$, then there are measurable circle arcs $I_s$ of length $1/3$ with
$$
\int_0^1m(F_s\triangle\chi^{-1}(I_s))\,ds\le a,\qquad
1/3+3c/8\le\theta:=\|\chi(v)\|\le1/2-3c/8.
$$
The intersection $A_s$ and union $C_s$ of $I_s-\theta,I_s+\theta$ are arcs centered at the center of $I_s$ plus $1/2$, of lengths $L=2\theta-2/3$ and $2/3-L$. Their integrated circle triple count with input arcs $A_u,I_w$ and output $C_{u+w}$ is at most the integrated count of the finite profiles $(X,F;Y)$ plus $\sigma_X+\sigma_Y+5a+8/n$. Both counts integrate over $u,w>0$, $u+w\le1$, with uniform spatial measure.

## Constructing the arcs and measuring the shift

Thicken each block of $k$ residues of $P_s$ by cells of width $1/n$ centered at the residues. This gives an arc of length $k/n$ and exactly that grid restriction. For empty and full intervals use center zero. Keeping its center, replace its length by $1/3$ to give $I_s$. The two arcs are nested. Each grid count differs from length times $n$ by at most one, so the symmetric difference of the grid restrictions has measure at most $|k/n-1/3|+2/n$. Since $|k/n-m(F_s)|\le m(P_s\triangle F_s)$, integration gives the approximation by $B_s=\chi^{-1}(I_s)$. The center can be chosen by a fixed convention for each of the finitely many grid intervals, which ensures measurability.

A union of at most two arcs has grid measure within $4/n$ of its Haar measure, by counting the boundary cells. The overlap $m(B_s\cap(B_s+v))$ integrates to at most $2a$ by shift independence of $F_s$. Its circle measure is $(1/3-\theta)_+$ at every time, so $(1/3-\theta)_+\le2a+4/n<1/12$ and $\theta>1/4$. In this range, the centers of $I_s-\theta,I_s+\theta$ are at shorter distance $1-2\theta$, and their overlap has length $(2\theta-2/3)_+$. The intersection of the grid restrictions differs from $X_s$ by integrated mass at most $\sigma_X+2a$, changing each of the two translates separately. Thus
$$
|\alpha-(2\theta-2/3)_+|\le b.
$$
This forces the positive branch and gives $L\in[3c/4,1/3-3c/4]$, which gives the claimed bounds on $\theta$. Lift the centers to $c_s+\theta$ and $c_s+1-\theta$ on the line, with $c_s$ a lift of the center of $I_s$. Their separation is less than $1/3$, the union has length less than one, and its midpoint is $c_s+1/2$. This gives the intersection and union geometry on the circle.

## Transporting the count

Replace $X_s,F_s,Y_s$ by the centered intersection of $B_s\pm v$, by $B_s$, and by their union, respectively. Their integrated measure errors are at most $\sigma_X+2a$, $a$, and $\sigma_Y+2a$. Changing the three factors in the triple count costs at most the sum of these errors, because the two input-time marginals have density $1-s$ and the sum-time marginal has density $s$. Surjectivity of $\chi$ gives uniform spatial measure on the grid for both inputs.

For fixed $u,w$, couple grid inputs $j/n,k/n$ with continuous inputs $(j+U)/n,(k+V)/n$ using independent uniforms $U,V\in[0,1)$. A boundary can cause at most one mismatched grid test for a shift of less than $1/n$, and at most two for a shift of less than $2/n$. The inputs shift by less than $1/n$ and the output sum by less than $2/n$. Conditional on $U,V$, the output grid point is uniform since $j+k$ is uniform modulo $n$. Using at most four endpoints for either centered set and two for $I_w$, the total mismatch probability is at most $(4+2+8)/n$. Integrating over the triangle of area $1/2$ costs at most $7/n\le8/n$, proving the count bound. $\square$
