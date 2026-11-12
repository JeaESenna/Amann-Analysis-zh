##### 可测函数的逐点极限

设 $ (f_j) $ 是 $ \mathcal{L}_0(X,\mu,\mathbb{R}) $ 中的逐点收敛序列。由命题 1.11，$ f := \lim_j f_j $ 也属于 $ \mathcal{L}_0(X,\mu,\mathbb{R}) $。下面我们推导向量值函数序列的类似结论。

1.14 定理 设 $ (f_j) $ 是 $ \mathcal{L}_0(X,\mu,E) $ 中的序列，且 $ f \in E^X $。若 $ (f_j) $ 关于 $ \mu $ 几乎处处收敛于 $ f $，则 $ f $ 是 $ \mu $-可测的。

证明 （i）先证 $ f $ 是 $ \mu $-几乎可分值的。按假设，存在 $ \mu $-零集 $ M $，使得对任意 $ x \in M^c $，当 $ j \to \infty $ 时 $ f_j(x) \to f(x) $。对每个 $ j \in \mathbb{N} $，由定理 1.4，存在 $ \mu $-零集 $ N_j $，使得 $ f_j(N_j^c) $ 可分，从而还存在在 $ f_j(N_j^c) $ 中稠密的可数集 $ B_j $：

\[ B_j \subset f_j(N_j^c) \subset \overline{B_j} \qquad \text{对 } j \in \mathbb{N} . \]

令 $ B := \bigcup_j B_j $，由推论 III.2.13(i) 可知 $ \bigcup_j \overline{B_j} \subset \overline{B} $，并且得到

\[ \bigcup_{j\in\mathbb{N}} f_j(N_j^c) \subset \bigcup_{j\in\mathbb{N}} \overline{B_j} \subset \overline{B} . \]

最后令 $ N := M \cup \bigcup_j N_j $。则 $ N $ 是 $ \mu $-零集，且对任意 $ k \in \mathbb{N} $ 有 $ N^c = M^c \cap \bigcap_j N_j^c \subset N_k^c $。因为对 $ x \in M^c $ 有 $ \lim_j f_j(x) = f(x) $，故

\[ f(N^c) \subset \overline{\bigcup_{j\in\mathbb{N}} f_j(N_j^c)} \subset \overline{B} = \overline{B} . \]

因为 $ B $ 可数，注 1.3(b) 表明 $ f(N^c) $ 可分。

（ii）现在证 $ f $ 是 $ \mathcal{A} $-可测的。设 $ O $ 是 $ E $ 中的开集，并对 $ n \in \mathbb{N}^\times $ 定义 $ O_n := \{ x \in O ; \operatorname{dist}(x,O^c) > 1/n \} $。如同 (1.2) 那样，可得

\[ f^{-1}(O) \cap M^c = \bigcup_{m,n\in\mathbb{N}^\times} \bigcap_{j\ge m} f_j^{-1}(O_n) \cap M^c . \]

由定理 1.4，对每个 $ j,n \in \mathbb{N}^\times $，$ f_j^{-1}(O_n) $ 属于 $ \mathcal{A} $。因此这对 $ f^{-1}(O) \cap M^c $ 也成立。此外，$ \mu $ 的完备性蕴含 $ f^{-1}(O) \cap M $ 是 $ \mu $-零集，合起来便得

\[ f^{-1}(O) = (f^{-1}(O)\cap M^c) \cup (f^{-1}(O)\cap M) \in \mathcal{A} . \]

现在论断由定理 1.4 得出。■

1.15 注 定理 1.14 对不完备的测度空间一般不成立。

证明 设 $ C $ 是康托尔集。在推论 IX.5.29 的证明中已说明，$ C $ 含有博雷尔不可测子集 $ N \subset C $。取 $ f_j := \chi_C $（$ j \in \mathbb{N} $）与 $ f := \chi_N $。注 1.2(b) 与 $ C $ 的紧性蕴含 $ \chi_C \in \mathcal{S}(\mathbb{R},\beta_1,\mathbb{R}) $。又对 $ x \in C^c \subset N^c $ 与 $ j \in \mathbb{N} $ 有 $ f_j(x) = f(x) $。因为 $ C $ 的测度为零，$ (f_j) $ 关于 $ \beta_1 $ 几乎处处收敛于 $ f $。然而因为 $ [f > 0] = N \notin \mathcal{B}^1 $，命题 1.9 表明 $ f $ 不属于 $ \mathcal{L}_0(\mathbb{R},\beta_1,\mathbb{R}) $。■

##### 拉东测度

本节最后我们探讨向量值函数中可测性与连续性如何相互关联。除了证明一个简单的可测性判别法，我们还证明卢津定理，它揭示了连续函数与博雷尔可测函数之间出人意料的紧密联系。

称度量空间 $ X = (X,d) $ 是**σ-紧的**，若 $ X $ 局部紧，且存在由 $ X $ 的紧子集构成的序列 $ (X_j)_{j\in\mathbb{N}} $，使得 $ X = \bigcup_j X_j $。

设 $ X $ 是 σ-紧度量空间。$ X $ 上的**拉东测度**是 $ X $ 上某个 σ-代数 $ \mathcal{A} $ 上的正则、局部有限测度，其中 $ \mathcal{A} \supset \mathcal{B}(X) $。称拉东测度 $ \mu $ 是 **massive** 的，若 $ \mu $ 完备且 $ X $ 的每个非空开子集 $ O $ 都满足 $ \mu(O) > 0 $。

1.16 注 （a）每个 σ-紧度量空间都是 IX.5 节定义意义下的 σ-紧集；然而，度量空间中紧子集的可数并却未必是 σ-紧度量空间。

证明 第一个论断显然。对第二个论断，考虑 $ \mathbb{Q} \subset \mathbb{R} $。■

（b）每个拉东测度都是 σ-有限的。

证明 这由注 IX.5.3(b) 得出。■

（c）设 $ X $ 是局部紧度量空间。则对 $ X $ 的每个紧子集 $ K $，都存在 $ K $ 的一个相对紧\footnote{若拓扑空间的子集 $ A $ 的闭包 $ \overline{A} $ 是紧的，则称 $ A $ 为\textbf{相对紧}的。}开超集。

证明 对每个 $ x \in X $，我们找到 $ x $ 的一个相对紧开邻域 $ O(x) $。因为 $ K $ 紧，存在 $ x_0,\ldots,x_m \in K $，使得 $ O := \bigcup_{j=0}^m O(x_j) $ 是 $ K $ 的开超集。推论 III.2.13(iii) 蕴含 $ \overline{O} = \bigcup_{j=0}^m \overline{O(x_j)} $。因此 $ \overline{O} $ 紧。■

（d）$ \mathbb{R}^n $ 的每个开子集都是 σ-紧度量空间。

证明 设 $ X \subset \mathbb{R}^n $ 开且非空。对每个 $ x \in X $，存在 $ r > 0 $ 使得 $ \mathbb{B}(x,r) \subset X $。因为 $ \overline{\mathbb{B}}(x,r) $ 紧，$ X $ 便是局部紧度量空间。对 $ j \in \mathbb{N}^\times $，定义\footnote{这里约定 $ \operatorname{dist}(x,\varnothing) := \infty $。}

\[ U_j := \{ x \in X ; \operatorname{dist}(x,U^c) > 1/j \} \cap \mathbb{B}(0,j) . \tag{1.3} \]

由例 III.1.3(l) 与 III.2.22(c)，集合 $ U_j $ 开。又 $ U_j \subset \overline{U_j} \subset U_{j+1} $，且 $ \bigcup_j \overline{U_j} \subset \bigcup_j U_j = X $。特别地，存在 $ j_0 \in \mathbb{N}^\times $，使得对 $ j \ge j_0 $ 有 $ U_j \ne \varnothing $。因为由海涅–博雷尔定理 $ \overline{U_j} $ 紧，论断得证。■

（e）对局部紧度量空间 $ X $，下列陈述等价：

（i）$ X $ 是 σ-紧的。

（ii）$ X $ 是可数个相对紧开子集构成的序列 $ (U_j)_{j\in\mathbb{N}} $ 的并，且对 $ j \in \mathbb{N} $ 有 $ \overline{U_j} \subset U_{j+1} $。

（iii）$ X $ 是林德勒夫空间。

（iv）$ X $ 满足第二可数公理。

（v）$ X $ 可分。

证明 “（i）$ \Rightarrow $（ii）” 设 $ (X_j)_{j\in\mathbb{N}} $ 是 $ X $ 中紧集构成的序列，使得 $ X = \bigcup_j X_j $。由 (c)，$ X_0 $ 有一个相对紧开超集 $ U_0 $。归纳地选取相对紧开子集 $ U_j $，使得对 $ j \ge 1 $ 有 $ U_j \supset \overline{U_{j-1}} \cup X_j $。显然 $ X = \bigcup_j U_j $。

“（ii）$ \Rightarrow $（iii）” 设 $ \mathcal{O} := \{ O_\alpha ; \alpha \in A \} $ 是 $ X $ 的开覆盖。对每个 $ j \in \mathbb{N} $，归纳地选取 $ m(j) \in \mathbb{N} $ 与 $ \alpha_0,\ldots,\alpha_{m(j)} \in A $，使得 $ \overline{U_j} \subset \bigcup_{k=0}^{m(j)} O_{\alpha_k} $。则 $ \{ O_{\alpha_k} ; k = 0,\ldots,m(j),\ j \in \mathbb{N} \} $ 是 $ \mathcal{O} $ 对 $ X $ 的可数子覆盖。

“（iii）$ \Rightarrow $（i）” 按假设，存在 $ X $ 中的序列 $ (x_j) $ 与 $ x_j $ 的相对紧开邻域 $ O(x_j) $（$ j \in \mathbb{N} $），使得 $ X = \bigcup_{j\in\mathbb{N}} O(x_j) $。于是 $ X = \bigcup_{j\in\mathbb{N}} \overline{O(x_j)} $，这表明 $ X $ 是 σ-紧的。

其余等价关系由命题 IX.1.8 得出。■

（f）σ-紧度量空间上的每个局部有限博雷尔测度都是正则的，因而也是拉东测度。

证明 这由 (e) 与 [Els99] 中的推论 VIII.1.12 得出。■

（g）在（非可度量化）紧拓扑空间上，有限博雷尔测度未必正则。

证明 见 [Flo81, Example A4.5, S. 350]。■

（h）勒贝格 n-测度 $ \lambda_n $ 是 $ \mathbb{R}^n $ 上的 massive 拉东测度。

证明 这由定理 IX.5.1 与 IX.5.4 得出。■

（i）s 维豪斯多夫测度 $ \mathcal{H}^s $ 仅在 $ s \ge n $ 时才是 $ \mathbb{R}^n $ 上的拉东测度。它是 massive 的当且仅当 $ s = n $。

证明 由例 IX.4.4(c) 与定理 IX.4.3，每个博雷尔集都是 $ \mathcal{H}^s $-可测的。$ s > 0 $ 时 $ \mathcal{H}^s $ 的正则性由推论 IX.5.22 与定理 IX.5.4 得出。

设 $ O $ 是 $ \mathbb{R}^n $ 中的非空开集。因为 $ O $ 的豪斯多夫维数为 $ n $（习题 IX.3.6），可得

\[ \mathcal{H}^s(O) = \begin{cases} 0 & \text{若 } s > n , \\ \infty & \text{若 } s < n . \end{cases} \]

因此若 $ s < n $，$ \mathcal{H}^s $ 不可能是 $ \mathbb{R}^n $ 上的拉东测度。另一方面，若 $ s > n $，则 $ \mathcal{H}^s $ 是非 massive 的拉东测度。

引理 IX.5.21 表明 $ \mathcal{H}^n $ 局部有限，因而是 $ \mathbb{R}^n $ 上的拉东测度。最后，推论 IX.5.22 蕴含 $ \mathcal{H}^n(O) > 0 $，证毕。■

（j）设 $ F: \mathbb{R} \to \mathbb{R} $ 是测度生成函数，记 $ \mu_F $ 为 $ F $ 诱导的 $ \mathbb{R} $ 上的勒贝格–斯蒂尔杰斯测度。则 $ \mu_F $ 是 $ \mathbb{R} $ 上的拉东测度，且它是 massive 的当仅当 $ F $ 严格递增。

证明 这由例 IX.4.4(b)、定理 IX.4.3、习题 IX.5.19 与命题 IX.3.5 得出。■

1.17 定理 设 $ \mu $ 是 $ X $ 上的完备拉东测度。则 $ C(X,E) $ 是 $ \mathcal{L}_0(X,\mu,E) $ 的向量子空间。

证明 取 $ f \in C(X,E) $，设 $ (X_j) $ 是 $ X $ 中紧集构成的序列，使得 $ X = \bigcup_j X_j $。据习题 IX.1.6(b)，$ f $ 是博雷尔可测的，从而是 $ \mathcal{A} $-可测的，其中 $ \mathcal{A} $ 是 $ \mu $ 的定义域。由注 1.16(e)，$ f(X_j) $ 作为 $ E $ 的紧子集可分。因此 $ f(X) = \bigcup_j f(X_j) $ 也可分，论断由定理 1.4 得出。■

1.18 定理（卢津） 设 $ X $ 是 σ-紧度量空间，$ \mu $ 是 $ X $ 上的完备拉东测度，$ f \in \mathcal{L}_0(X,\mu,E) $。则对每个有限测度的 $ \mu $-可测集 $ A $ 与每个 $ \varepsilon > 0 $，存在 $ X $ 的紧子集 $ K $，使得 $ \mu(A\setminus K) < \varepsilon $ 且 $ f \mid K \in C(K,E) $。

证明 （i）因为 $ X $ 是 σ-紧的，我们能找到紧集 $ \widetilde{X} $，使得 $ \mu(A\setminus \widetilde{X}) < \varepsilon/2 $。令 $ \widetilde{f} := f \mid \widetilde{X} $，$ \widetilde{A} := A \cap \widetilde{X} $。则 $ \mu(\widetilde{X}) < \infty $。

（ii）由定理 1.4，存在 $ \widetilde{X} $ 的 $ \mu $-零集 $ N $，使得 $ \widetilde{f}(N^c) $ 可分。于是由命题 IX.1.8，存在 $ \widetilde{f}(N^c) $ 的可数基 $ \{ \widetilde{V_j} ; j \in \mathbb{N} \} $，并且由命题 III.2.26，存在 $ E $ 中的开子集 $ V_j $，使得 $ \widetilde{V_j} = V_j \cap \widetilde{f}(N^c) $。

（iii）据定理 1.4，对每个 $ j \in \mathbb{N} $，$ \widetilde{f}^{-1}(V_j) $ 是 $ \mu $-可测的。因此由 $ \mu $ 的正则性与 $ \mu(\widetilde{X}) $ 的有限性可知，对每个 $ j \in \mathbb{N} $，存在紧集 $ K_j $ 与开集 $ U_j $，使得 $ K_j \subset \widetilde{f}^{-1}(V_j) \subset U_j $ 且 $ \mu(U_j \setminus K_j) < \varepsilon 2^{-(j+3)} $。令 $ U := \bigcup_j (U_j \setminus K_j) $，则 $ \mu(U) < \varepsilon/4 $。

（iv）令 $ Y := (U \cup N)^c $，并证明 $ \widetilde{f} \mid Y $ 连续。为此，设 $ V $ 是 $ E $ 中的开集。则存在 $ \{ V_j ; j \in \mathbb{N} \} $ 的子集 $ \{ V_{j_k} ; k \in \mathbb{N} \} $，使得 $ V \cap \widetilde{f}(N^c) = \bigcup_k V_{j_k} \cap \widetilde{f}(N^c) $。这意味着

\[ \widetilde{f}^{-1}(V) \cap N^c = \bigcup_k \widetilde{f}^{-1}(V_{j_k}) \cap N^c . \]

显然对 $ \ell \in \mathbb{N} $ 有 $ \widetilde{f}^{-1}(V_\ell) \cap Y \subset U_\ell \cap Y $。因为

\[ Y = U^c \cap N^c = \bigcap_j (U_j^c \cup K_j) \cap N^c \subset \bigcap_j (U_j^c \cup \widetilde{f}^{-1}(V_j)) \subset U_\ell^c \cup \widetilde{f}^{-1}(V_\ell) , \]

故 $ \widetilde{f}^{-1}(V_\ell) \cap Y = U_\ell \cap Y $，并且得到

\[ (\widetilde{f} \mid Y)^{-1}(V) = \widetilde{f}^{-1}(V) \cap N^c \cap U^c = \bigcup_k U_{j_k} \cap Y . \]

因为 $ \bigcup_k U_{j_k} $ 在 $ X $ 中开，从而 $ \bigcup_k U_{j_k} \cap Y $ 在 $ Y $ 中开，所以 $ \widetilde{f} \mid Y $ 连续。

（v）我们再次应用 $ \mu $ 的正则性，推得 $ \mu $-可测集 $ Y $ 存在紧子集 $ K $，使得 $ \mu(Y \setminus K) < \varepsilon/4 $。然后
