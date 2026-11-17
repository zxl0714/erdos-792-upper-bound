# A generic measurable-profile obstruction to quadratic coherent moments

Run 2026-11-17T04-08-08-259Z-ba89c4b5; 17 November 2026.
Construction proposed by root; exact scoped proof below.
RESEARCH result, independent review pending. No priority claim.

**Result.** There is no absolute constant \(C\) such that every
exactly sum-free measurable profile \(\Phi:G\times(0,1]\to\{0,1\}\)
of density greater than \(1/3\), in every finite cyclic group, satisfies
\[
 \frac{\sum_{q\in G}R_\Phi(q)^k I_\Phi(q)}
      {\sum_{q\in G}R_\Phi(q)^k}\le C/k^2,            \tag{1}
\]
where
\[
 R_\Phi(q)=\int_0^1\mathbb E_g
                   \Phi(g,t)\Phi(g+q,t)\,dt,
\]
\[
 I_\Phi(q)=\int_{\substack{u,v>0\\u+v\le1}}
       \mathbb E_{x,y}
           \Phi(x,u)\Phi(y,v)\Phi(x+y+q,u+v)\,du\,dv.
\]
Every group shift, including \(q=0\), is included in (1).
The examples have density at least \(7/20\) and \(I_\Phi(0)=0\).

More quantitatively, for each fixed integer \(D\ge3\) there is a
family, with \(k\to\infty\), for which the ratio in (1) is at least
\[
                            c_D k^{-1-2/D},         \tag{2}
\]
with \(c_D>0\). Thus no uniform bound \(O_\varepsilon(k^{-1-\varepsilon})\)
holds for any \(\varepsilon>0\), once groups and profiles may vary.
This is not a claim about the optimal exponent or about a single fixed
profile as \(k\to\infty\).

**Scope limitation.** The profile has full spatial support on a time
interval of length \(7/20\), so it fails exclusion by every prescribed
spatial shift on that interval. It is not a counterexample to the joint
small-shift/divisibility-constrained input. An integer realization with
the actual candidate-progression weights is a separate transfer step.

## 1. Progression-free time labels and cyclic coordinates

Take a finite set of distinct integers
\[
 \mathcal D=\{d_1,\ldots,d_r\}\subseteq\{0,\ldots,R_0-1\},
\]
such that
\[
                   d_i+d_j=2d_\ell\Longrightarrow i=j=\ell.        \tag{3}
\]
Set
\[
                          k=1000R_0,\qquad h=1/k.
\]
The parameter \(h\) in this note is a time width, not a subgroup size.

Choose distinct primes \(p_1,\ldots,p_r\ge23\), and identify the cyclic
group \(G=C_M\), \(M=\prod_i p_i\), with
\(\prod_{i=1}^r C_{p_i}\) by the Chinese remainder theorem.
Uniform measure on \(G\) is the product of the uniform coordinate
measures.

For each coordinate put
\[
 a_i=\lfloor p_i/4\rfloor,\quad
 A_i=\{0,\ldots,a_i-1\}\subseteq C_{p_i},\quad
 C_i=C_{p_i}\setminus(A_i+A_i),
\]
\[
                       \alpha_i=|A_i|/p_i,\qquad
                       \beta_i=|C_i|/p_i.
\]
There is no wrap in \(A_i+A_i=\{0,\ldots,2a_i-2\}\), so
\[
       \alpha_i\ge1/5,\qquad
       \beta_i=1-(2a_i-1)/p_i\ge1/2.                \tag{4}
\]
For the first bound, \(\lfloor p_i/4\rfloor\ge p_i/4-1\ge p_i/5\)
when \(p_i\ge20\).

Let the input and output time intervals be
\[
 I_i=(12/25+4hd_i,\ 12/25+4hd_i+h],
\]
\[
 J_i=I_i+I_i
       =(24/25+8hd_i,\ 24/25+8hd_i+2h].
\]
Also let
\[
                              K=(3/5,19/20].
\]
Define the profile by
\[
 \Phi(g,t)=
 \begin{cases}
  1_{A_i}(g_i),&t\in I_i,\\
  1_{C_i}(g_i),&t\in J_i,\\
  1,&t\in K,\\
  0,&\text{otherwise}.
 \end{cases}                                                   \tag{5}
\]

All listed intervals are disjoint. Different input intervals have
starting points separated by at least \(4h\), and different output
intervals by at least \(8h\).
Because \(hR_0=1/1000\), every input time lies between \(0.48\)
and \(0.485\), and every output time between \(0.96\) and \(0.97\).
These ranges avoid \(K=(0.6,0.95]\).

In particular
\[
 d(\Phi)=7/20+h\sum_i\alpha_i+2h\sum_i\beta_i
                                                     \ge7/20>1/3.         \tag{6}
\]

## 2. Exact time exclusion and the carried-count identity

A time in \(K\) added to any supported input time already exceeds one.
The same is true of an output time added to any supported time.
Therefore any triple within the time triangle must have its two
inputs in some \(I_i,I_j\).

The sum interval \(I_i+I_j\) starts at
\(24/25+4h(d_i+d_j)\) and has length \(2h\).
It can meet \(J_\ell\) only if
\(d_i+d_j=2d_\ell\): unequal starts differ by at least \(4h\).
By (3), this forces \(i=j=\ell\).
Input sums cannot hit an input interval or the bulk interval \(K\)
because they exceed \(0.96\).

Thus the only possible nonzero triple contribution uses both inputs
in \(I_i\) and the output in \(J_i\).
At shift zero, its coordinate condition would require
\(x_i,y_i\in A_i\) and \(x_i+y_i\in C_i\), which is impossible.
The profile is exactly time-sum-free, including coincident group
variables.

For a coordinate shift \(z\in C_{p_i}\), define the normalized count
\[
 T_i(z)=\frac1{p_i^2}
      \#\{(x,y)\in A_i^2:x+y+z\in C_i\}.            \tag{7}
\]
The complete square \(I_i\times I_i\) lies in the time triangle,
and every one of its sums lies in \(J_i\).
Its area is exactly \(h^2\), not \(h^2/2\).
All other coordinates are unrestricted in this triple count.
Consequently, for every \(q=(q_1,\ldots,q_r)\in G\),
\[
                            I_\Phi(q)=h^2\sum_{i=1}^r T_i(q_i).
                                                               \tag{8}
\]
In particular \(I_\Phi(0)=0\).

Averaging (7) over a uniform coordinate shift gives exactly
\[
           \mathbb E_{z\in C_{p_i}}T_i(z)=\alpha_i^2\beta_i
                                                     \ge1/50.             \tag{9}
\]
Indeed each input pair has exactly \(|C_i|\) shifts landing in \(C_i\).
No independence assertion about shifted triple events is needed.

## 3. The overlap tilt cannot suppress any coordinate by much

For a subset \(S\subseteq C_{p_i}\), write
\[
             \rho_{i,S}(z)=|S\cap(S-z)|/p_i\in[0,1].
\]
The disjoint time intervals in (5) give the exact overlap formula
\[
 R_\Phi(q)=\frac7{20}
       +h\sum_i\rho_{i,A_i}(q_i)
       +2h\sum_i\rho_{i,C_i}(q_i).                 \tag{10}
\]
In particular \(R_\Phi(q)\ge7/20\) for every \(q\).
Changing just coordinate \(i\) changes \(R_\Phi\) by at most \(3h\).

Define the probability measure on all group shifts
\[
                   \nu_k(q)=
                    \frac{R_\Phi(q)^k}{\sum_{z\in G}R_\Phi(z)^k}.
\]
Fix all coordinates other than \(i\). Among the \(p_i\) choices of
coordinate \(i\), the ratio of the largest and smallest conditional
unnormalized weights is at most
\[
 \left(1+\frac{3h}{7/20}\right)^k
       =\left(1+\frac{60}{7k}\right)^k
       \le\exp(60/7)<e^9.                         \tag{11}
\]
Therefore every conditional coordinate probability obeys
\[
              \nu_k(q_i=z\mid q_j,\ j\ne i)
                                 \ge e^{-9}/p_i.              \tag{12}
\]
Coordinates need not remain independent under \(\nu_k\).
The uniform lower bound (12) holds for every conditioning, which
is all the proof uses.

Since \(T_i\ge0\), equations (9),(12), followed by averaging the
other coordinates, imply
\[
                              \mathbb E_{\nu_k}T_i(q_i)
                                       \ge e^{-9}/50.
\]
Using (8), the coherent ratio is consequently bounded below by
\[
 \frac{\sum_qR_\Phi(q)^kI_\Phi(q)}
      {\sum_qR_\Phi(q)^k}
       =\mathbb E_{\nu_k}I_\Phi(q)
       \ge\frac{e^{-9}r}{50k^2}.                   \tag{13}
\]
This includes the zero shift correctly in the tilted denominator.
The lower bound is not caused by deleting an identity or period return.

## 4. Quantitative progression-free labels

The needed labels use the elementary spherical-layer construction
already reproduced, with primary-source context, in
[the deterministic weighted-cover obstruction](../ARCHIVE_INDEX.md#record-093).
For completeness, fix an integer \(D\ge3\) and a growing integer
\(a\ge2\). In \(\{0,\ldots,a-1\}^D\), choose a largest level of
the squared norm, and encode its vectors in base \(2a\).
The resulting integer set lies in
\[
              \{0,\ldots,R_0-1\},\qquad R_0=(2a)^D,
\]
and has
\[
                              r\ge a^{D-2}/D.       \tag{14}
\]
There are at most \(D(a-1)^2+1\le Da^2\) norm levels, proving (14).
An integer relation between three encoded points has no carries
in a sum \(d_i+d_j=2d_\ell\), because all digits are below \(a\).
It therefore gives the corresponding vector midpoint relation.
The equal squared norms force the two endpoint vectors to coincide,
so (3) holds.

For these labels,
\[
 k=1000(2a)^D,\qquad
 \frac{r}{k^2}\ge
    \frac{(1000\,2^D)^{-(1-2/D)}}{D}\,k^{-1-2/D}.
\]
Equation (13) proves (2). The fixed dimension \(D=7\) yields a lower
bound \(c_7k^{-9/7}\). For any \(\varepsilon>0\), choosing a fixed
integer \(D>\max(2,2/\varepsilon)\) gives
\[
 k^{1+\varepsilon}
       \frac{\sum_qR_\Phi(q)^kI_\Phi(q)}
            {\sum_qR_\Phi(q)^k}
       \longrightarrow\infty
\]
along this family. In particular a universal quadratic bound fails.

## 5. Scope and source/tool record

The construction is an exact measurable profile in a finite cyclic
group, with a fixed positive density margin. Its number of time pieces
and its group vary with \(k\). It therefore does not contradict the
proved two-, three-, and four-bin template results, and it says nothing
about a profile contained in one of their fixed interval templates.

The bulk time interval has support all of \(G\). For every spatial
shift \(t\), both \(\Phi(g,u)\) and \(\Phi(g+t,u)\) equal one for
\(u\in K\). Thus the required sectionwise prescribed-shift exclusion
fails, regardless of divisibility of \(t\). This missing hypothesis
must not be concealed in a claimed counterexample to the full joint
arithmetic route.

The proof does not carry out the passage to integer subsets and
candidate differences with their actual multiplicities. Such a
transfer must preserve the ordered count, the time scaling, and
all nonzero integer differences representing the zero group residue.
It is a separate argument.

The primary predecessor used is the progression-free spherical
construction, with its saved version context in the
[covering source manifest](../ARCHIVE_INDEX.md#record-094).
All further identities, interval separations, and the conditional
likelihood-ratio estimate are proved above.
The [saved Jacobian discovery](../ARCHIVE_INDEX.md#record-095)
found finite conditional-expectation operations, but none matching the
parameter-uniform construction and tilt argument. No numerical
operation or large search was run.

