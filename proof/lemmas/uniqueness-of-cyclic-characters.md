# Uniqueness of the character of a cyclic interval

Let $G$ be a finite abelian group with uniform measure $m$, and let $\chi,\psi:G\to\mathbb R/\mathbb Z$ be characters of orders $M,N$, respectively. Write $C_L=(1/L)\mathbb Z/\mathbb Z$. Fix $0<c\le1/2$ and set
$$
b_0=\frac{\sin(\pi c)}{2\pi},\qquad N_0(c)=\lceil b_0^{-2}+1\rceil.
$$
Suppose $M,N>N_0(c)$, and $P=\chi^{-1}(I)$, $Q=\psi^{-1}(J)$ for cyclic intervals $I\subset C_M$ and $J\subset C_N$. If $m(P),m(Q)\in[c,1-c]$ and $m(P\triangle Q)<b_0$, then $\psi=\pm\chi$ and $N=M$. Here a cyclic interval consists of consecutive residues, with wrapping allowed.

**Proof.** Write $\widehat F(\gamma)=\mathbb E_g F(g)e^{-2\pi i\gamma(g)}$. A preimage under a character $\theta$ is invariant under $\ker\theta$. Translating the Fourier average by any element of this kernel shows that a nonzero coefficient can occur only at a character trivial on $\ker\theta$, hence at a multiple of $\theta$.

If $\theta$ has order $L$ and $A$ is the preimage of an interval of $\ell$ residues, equal fiber sizes and the geometric series give, for $0<|j|\le L/2$,
$$
|\widehat{1_A}(j\theta)|=\frac{|\sin(\pi j\ell/L)|}{L|\sin(\pi j/L)|}
\le\frac1{2|j|}.
$$
The last step uses $\sin(\pi |j|/L)\ge2|j|/L$. For the fundamental character, $\ell/L\in[c,1-c]$ and $L\sin(\pi/L)\le\pi$ give $|\widehat{1_A}(\theta)|\ge 2b_0$.

The Fourier coefficients of $1_P$ and $1_Q$ differ by less than $b_0$ at every character, by their $L^1$ distance. At $\chi$ and $\psi$ the fundamental bounds and the support condition therefore give $\chi=j\psi$ and $\psi=i\chi$, with signed integers $0<|i|,|j|<1/(2b_0)$. These relations imply $M=N$ and $N\mid ij-1$. Since $|ij-1|<b_0^{-2}+1<N$, we have $ij=1$, as claimed. $\square$

In particular, the lemma applies if both interval indicators approximate one function and their two $L^1$ errors sum to less than $b_0$. The sign is unavoidable because an interval can be reflected. The lower bound on order and the density margin rule out examples such as the singleton $\{0\}$, which has the same preimage under the characters $g\mapsto g/p$ and $g\mapsto2g/p$ of $\mathbb Z/p\mathbb Z$ for primes $p\ge5$.
