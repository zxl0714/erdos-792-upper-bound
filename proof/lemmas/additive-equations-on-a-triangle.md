# Two stability inequalities on the time triangle

Let $\Delta=\{(u,v):u,v>0,\ u+v\le1\}$ and use the probability measure $d\mu=3(u+v)\,du\,dv$. The two input marginals have density $3(1-t^2)/2$ each, and the sum marginal has density $3t^2$. Their densities add to three, so for any integrable $g$,
$$
\int_\Delta [g(u)+g(v)+g(u+v)]\,d\mu=3\int_0^1g(t)\,dt.
$$

## The sum residual

For real or complex $g\in L^1(0,1)$, set $E(u,v)=g(u)+g(v)+g(u+v)$ and $R=\int_\Delta |E|\,d\mu$. Then $\|g\|_1\le4458R$.

Put $K=[1/4,2/3]$, $J=[1/4,1/3]$, and $H=[1/16,1/8]$. For $(u,v,y)\in K\times J\times H$,
$$
2(g(u)-g(v))=E(u,v-y)+E(u-y,y)-E(u-y,v)-E(y,v-y).
$$
Each residual lies in $\Delta$ with sum at least $1/4$. To integrate each term, change the two displayed residual arguments to integration variables and hold the remaining coordinate fixed. The Jacobians are one and the remaining fiber lengths are bounded by $|H|,|J|,|H|,|K|$, respectively. As $du\,dv\le(4/3)d\mu$ on these residual domains,
$$
2|H|\int_K\int_J |g(u)-g(v)|\,dv\,du
\le \tfrac43(2|H|+|J|+|K|)R=\tfrac56R.
$$
Thus for $c=|J|^{-1}\int_Jg$ we have $\int_K|g-c|\le80R$.

On $J^2$ both inputs and the sum belong to $K$, and the residual weight is at least $3/2$. Each of the three deviations from $c$ integrates to at most $|J|\int_K|g-c|$, using the bound $|J|$ on the density of the sum under unnormalized measure on $J^2$. Hence $3|c||J|^2\le 2R/3+3|J|\cdot80R$, giving $|c|\le992R$. In particular $G_K=\int_K|g|\le(1480/3)R$.

For $t<1/4$, average $|g(t)|\le |E(t,v)|+|g(v)|+|g(t+v)|$ over $v\in[1/3,5/12]$. Both partner arguments lie in $K$, and the residual weight is at least one. The two $g$ terms have fiber lengths at most $1/4$ and $1/12$. Dividing by the partner interval length $1/12$ gives $\int_0^{1/4}|g|\le12R+4G_K$.

For $2/3<t<1$, average $|g(t)|\le |E(u,t-u)|+|g(u)|+|g(t-u)|$ over $|u-t/2|\le1/24$. Both inputs lie in $K$. The change to $(u,t-u)$ has Jacobian of absolute value one and residual weight at least two. For a fixed input, the admissible $t$ have interval length at most $1/6$. Dividing by $1/12$ now gives $\int_{2/3}^1|g|\le6R+4G_K$. Summing the three intervals proves $\|g\|_1\le18R+9G_K\le4458R$.

**Consequence.** If $f$ is real and integrable with $d=\int_0^1 f\ge1/3$, write $D=f(u)+f(v)+f(u+v)$ and $P=\int_\Delta(D-1)_+\,d\mu$. The marginal identity gives $\int_\Delta|D-1|\,d\mu=2P-(3d-1)$. Applying the inequality to $g=f-1/3$ gives $\|f-1/3\|_1\le9000P$.

## The range of the three values

For real $b\in L^1(0,1)$ let $\mathcal R_b(u,v)$ be the largest minus the smallest of $b(u),b(v),b(u+v)$, and put $R_b=\int_\Delta\mathcal R_b\,d\mu$. Then $\|b-\int_0^1 b\|_1\le132R_b$.

Use the same $K,J$, and set $c=|J|^{-1}\int_J b$. On $K\times J$ we have $\mathcal R_b\ge |b(u)-b(v)|$ and the weight is at least $3/2$. Averaging gives $G=\int_K|b-c|\le8R_b$. For $t<1/4$, use the same partner interval as above and $|b(t)-c|\le\mathcal R_b(t,v)+|b(v)-c|$. This yields $\int_0^{1/4}|b-c|\le12R_b+3G$. For $t>2/3$, use the same band $|u-t/2|\le1/24$ and $|b(t)-c|\le\mathcal R_b(u,t-u)+|b(u)-c|$. The residual weight at least two and $t$-fiber length at most $1/6$ give $\int_{2/3}^1|b-c|\le6R_b+2G$. Thus $\|b-c\|_1\le18R_b+6G\le66R_b$. Changing $c$ to the mean costs at most another $\|b-c\|_1$. All integrations use the displayed nonsingular changes of variables and Fubini, so the inequalities apply to functions specified almost everywhere.
