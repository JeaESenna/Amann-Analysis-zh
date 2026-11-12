所以 $ C^c $ 属于 $ \mathcal{C} $。最后，$ \mathcal{C} $ 中的每个序列 $ (C_j) $ 都满足

\[ \left(\bigcup_j C_j\right)_{[x]} = \bigcup_j (C_j)_{[x]} \quad\text{与}\quad \left(\bigcup_j C_j\right)^{[y]} = \bigcup_j (C_j)^{[y]} , \]

所以 $ \bigcup_j C_j $ 也属于 $ \mathcal{C} $。

(ii) 对 $ A\times B\in\mathcal{A}\boxtimes\mathcal{B} $ 与 $ (x,y)\in X\times Y $，有

\[ (A\times B)_{[x]} = \begin{cases} B , & x\in A , \\ \varnothing , & x\in A^{c} , \end{cases} \qquad (A\times B)^{[y]} = \begin{cases} A , & y\in B , \\ \varnothing , & y\in B^{c} . \end{cases} \]

从而 $ \mathcal{A}\boxtimes\mathcal{B} $ 包含于 $ \mathcal{C} $，因此 $ \mathcal{A}\otimes\mathcal{B} $ 也包含于 $ \mathcal{C} $。但按构造有 $ \mathcal{C}\subset\mathcal{A}\otimes\mathcal{B} $，所以一切都得证。■

##### 习题

1 证明例 1.3(a)–(d) 中的陈述。

2 设 $ \mathcal{S},\mathcal{S}'\subset\mathfrak{P}(X) $ 非空。证明或反驳：$ \mathcal{A}_\sigma(\mathcal{S})=\mathcal{A}_\sigma(\mathcal{S}') $ 蕴含 $ \mathcal{S}=\mathcal{S}' $。

3 设 $ (X_1,\mathcal{A}_1) $ 与 $ (X_2,\mathcal{A}_2) $ 是可测空间。若存在 $ m\in\mathbb{N} $ 以及 $ R_0,\ldots,R_m\in\mathcal{A}_1\boxtimes\mathcal{A}_2 $，使得对 $ j\ne k $ 有 $ R_j\cap R_k=\varnothing $，且 $ F=\bigcup_{j=0}^{m} R_j $，则称子集 $ F\subset X_1\times X_2 $ 是 $ X_1\times X_2 $ 中的一个**拼块**。

证明：

(a) $ \mathcal{F} := \{ F\subset X_1\times X_2 \;;\; F \text{ 是 } X_1\times X_2 \text{ 中的拼块} \} $ 是 $ X_1\times X_2 $ 上的代数。

(b) $ \mathcal{A}_\sigma(\mathcal{F})=\mathcal{A}_1\otimes\mathcal{A}_2 $。

4 设 $ (A_j) $ 是 $ \mathfrak{P}(X) $ 中的序列，并令

\[ \overline{\lim}_j A_j := \bigcap_{j=0}^{\infty}\bigcup_{k=j}^{\infty} A_k , \qquad \underline{\lim}_j A_j := \bigcup_{j=0}^{\infty}\bigcap_{k=j}^{\infty} A_k . \]

我们称 $ \overline{\lim}_j A_j $ 为 $ (A_j) $ 的**上极限**（或 limsup），称 $ \underline{\lim}_j A_j $ 为 $ (A_j) $ 的**下极限**（liminf）。

(a) 描述集合 $ \overline{\lim}_j A_j $ 与 $ \underline{\lim}_j A_j $。

(b) 证明或反驳：$ \underline{\lim}_j A_j\subset\overline{\lim}_j A_j $，$ \overline{\lim}_j A_j\subset\underline{\lim}_j A_j $。

5 若 $ \underline{\lim}_j A_j=\overline{\lim}_j A_j $，则称序列 $ (A_j)\in\mathfrak{P}(X)^{\mathbb{N}} $ 是**收敛的**。这个共同值称为 $ (A_j) $ 的**极限**，记作 $ \lim_j A_j $。

验证：

(a) 任何递增序列 $ (A_j) $ 都收敛，其极限为 $ \bigcup_j A_j $。任何递减序列 $ (A_j) $ 都收敛，其极限为 $ \bigcap_j A_j $。

(b) $ (A_j) $ 收敛到 $ A $ 当且仅当 $ (\chi_{A_j}) $ 逐点收敛到 $ \chi_A $。

6 设 $ (X,\mathcal{A}) $ 与 $ (Y,\mathcal{B}) $ 是可测空间。称映射 $ f:X\to Y $ 为 **$ \mathcal{A} $-$ \mathcal{B} $-可测的**\footnote{若 $ \mathcal{A} $ 与 $ \mathcal{B} $ 已由上下文隐含，我们就简称 $ f $ 是\textbf{可测的}。}，若 $ f^{-1}(\mathcal{B})\subset\mathcal{A} $。若 $ X $ 与 $ Y $ 是拓扑空间，则 $ \mathcal{B}(X) $-$ \mathcal{B}(Y) $-可测函数也称为**博雷尔可测的**。

(a) 设 $ \mathcal{S}\subset\mathfrak{P}(Y) $ 满足 $ \mathcal{A}_\sigma(\mathcal{S})=\mathcal{B} $。证明：$ f\in Y^X $ 是 $ \mathcal{A} $-$ \mathcal{B} $-可测的当且仅当 $ f^{-1}(\mathcal{S})\subset\mathcal{A} $。

(b) 设 $ X $ 与 $ Y $ 是拓扑空间。证明：从 $ X $ 到 $ Y $ 的每个连续映射都是博雷尔可测的。

7 设 $ (X,\mathcal{A}) $ 是可测空间，$ Y\subset X $。证明 $ \mathcal{A}\mid Y := \{ A\cap Y \;;\; A\in\mathcal{A} \} $ 是 $ Y $ 上的 $ \sigma $-代数。我们称它为**由 $ \mathcal{A} $ 在 $ Y $ 上诱导的 $ \sigma $-代数**。

8 设 $ (X,\mathcal{A}) $、$ (Y,\mathcal{B}) $ 与 $ (Z,\mathcal{C}) $ 是可测空间。验证：

(a) 若 $ f\in Y^X $ 与 $ g\in Z^Y $ 可测，则 $ g\circ f\in Z^X $ 也可测。

(b) 若 $ f\in Y^X $ 可测且 $ A\subset X $，则 $ f\mid A\in Y^A $ 是 $ (\mathcal{A}\mid A) $-$ \mathcal{B} $-可测的。

9 设 $ Y $ 是拓扑空间，$ X\subset Y $。证明 $ \mathcal{B}(X)=\mathcal{B}(Y)\mid X $。

10 设 $ d_1 $ 与 $ d_2 $ 是 $ X $ 上的等价度量，并令 $ X_j := (X,d_j) $（$ j=1,2 $）。证明 $ \mathcal{B}(X_1)=\mathcal{B}(X_2) $。

11 证明：若拓扑空间 $ X $ 有可数基 $ \mathcal{M} $，则 $ \mathcal{B}(X)=\mathcal{A}_\sigma(\mathcal{M}) $。

12 设 $ (X,\mathcal{T}) $ 是豪斯多夫空间，并且存在紧致集构成的序列 $ (K_j)\in X^{\mathbb{N}} $，使得 $ X=\bigcup_j K_j $。验证 $ \mathcal{B}(X)=\mathcal{A}_\sigma(\mathcal{K}) $，其中 $ \mathcal{K} $ 是 $ X $ 的所有紧致子集之集。

13 设拓扑空间 $ X $ 与 $ Y $ 满足 $ \mathcal{B}(X\times Y)=\mathcal{B}(X)\otimes\mathcal{B}(Y) $。证明：对每个非空 $ Z\subset Y $，都有 $ \mathcal{B}(X\times Z)=\mathcal{B}(X)\otimes\mathcal{B}(Z) $。（提示：验证 $ \mathcal{A} := \{ M\subset X\times Y \;;\; (X\times Z)\cap M\in\mathcal{B}(X)\otimes\mathcal{B}(Z) \} $ 是 $ X\times Y $ 上包含 $ \mathcal{B}(X)\otimes\mathcal{B}(Y) $ 的 $ \sigma $-代数。再注意注 III.2.29(h)。）

14 设 $ X_j $ 与 $ Y_j $ 是拓扑空间，且 $ f_j : X_j\to Y_j $ 是博雷尔可测的（$ j=1,2 $）。令

\[ f_1\times f_2 : X_1\times X_2 \to Y_1\times Y_2 \quad\text{由}\quad (x_1,x_2)\mapsto (f_1(x_1), f_2(x_2)) . \]

验证 $ (f_1\times f_2)^{-1}(\mathcal{B}(Y_1)\otimes\mathcal{B}(Y_2))\subset\mathcal{B}(X_1)\otimes\mathcal{B}(X_2) $。

15 取 $ A\subset X $，并令 $ \mathcal{A} := \{\varnothing, A, A^{c}, X\} $。在 $ A $ 满足什么条件时，$ \mathcal{A}\boxtimes\mathcal{A} $ 是 $ X\times X $ 上的 $ \sigma $-代数？

16 设 $ \mathcal{S}\subset\mathfrak{P}(X) $。证明

\[ \mathcal{A}_\sigma(\mathcal{S}) = \bigcup\{ \mathcal{A}_\sigma(\mathcal{C}) \;;\; \mathcal{C}\subset\mathcal{S} \text{ 是可数的} \} . \]

（提示：右端的集族是 $ X $ 上的 $ \sigma $-代数，并且包含 $ \mathcal{S} $。）

17 对 $ A\subset X $，令 $ \mathcal{A}_A := \{ B\subset X \;;\; A\subset B \text{ 或 } A\subset B^{c} \} $。证明：

(i) $ \mathcal{A}_A $ 是 $ X $ 上的 $ \sigma $-代数。

(ii) 若 $ \mathcal{S}\subset\mathcal{A}_A $，则 $ \mathcal{A}_\sigma(\mathcal{S})\subset\mathcal{A}_A $。

18 设 $ X=(X,\mathcal{T}) $ 是拓扑空间。证明：若对角线

\[ \Delta_X = \{ (x,y)\in X\times X \;;\; x=y \} \]

属于 $ \mathcal{B}(X)\otimes\mathcal{B}(X) $，则存在 $ X $ 到 $ \mathbb{R} $ 的单射。

（提示：(i) 由习题 16，存在 $ \mathcal{S}_j = \{ A_{k,j} \;;\; k\in\mathbb{N} \}\subset\mathcal{T} $（$ j=1,2 $），使得 $ \Delta_X\in\mathcal{A}_\sigma(\mathcal{S}_1\boxtimes\mathcal{S}_2) $。令 $ \mathcal{A}_j := \mathcal{A}_\sigma(\mathcal{S}_j) $（$ j=1,2 $）。则 $ \mathcal{A}_1\otimes\mathcal{A}_2\supset\mathcal{A}_\sigma(\mathcal{S}_1\boxtimes\mathcal{S}_2) $，再结合 $ \Delta_X\in\mathcal{A}_\sigma(\mathcal{S}_1\boxtimes\mathcal{S}_2) $ 与命题 1.19，便推出对每个 $ x\in X $ 都有 $ \{x\}\in\mathcal{A}_1 $。(ii) 令 $ \varphi := \sum_{k=0}^{\infty} 3^{-k}\chi_{A_{k,1}} \in \mathcal{B}(X,\mathbb{R}) $，并取 $ x,y\in X $ 使得 $ \varphi(x)=\varphi(y) $。由定理 II.7.11，对每个 $ k\in\mathbb{N} $，或者 $ \{x,y\}\subset A_{k,1} $，或者 $ \{x,y\}\subset A_{k,1}^{c} $。于是习题 17 表明，对每个 $ A\in\mathcal{A}_1 $，或者 $ \{x,y\}\subset A $，或者 $ \{x,y\}\subset A^{c} $。由 (i) 可知，这只有在 $ x=y $ 时才可能。）

19 设 $ X := \mathfrak{P}(\mathbb{R}) $，$ \mathcal{T} $ 是 $ X $ 上的豪斯多夫拓扑。则 $ \mathcal{B}(X)\otimes\mathcal{B}(X)\ne \mathcal{B}(X\times X) $。

（提示：因为 $ \mathcal{T} $ 满足豪斯多夫条件，对角线 $ \Delta_X $ 在 $ X\times X $ 中是闭的。若 $ \mathcal{B}(X)\otimes\mathcal{B}(X)=\mathcal{B}(X\times X) $，则习题 18 表明存在 $ \mathfrak{P}(\mathbb{R}) $ 到 $ \mathbb{R} $ 的单射。这与定理 I.6.5 矛盾。）
