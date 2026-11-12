$ \widetilde{f} \mid K $ 属于 $ C(K,E) $，并且

\[ \mu(\widetilde{A}\setminus K) \le \mu(Y\setminus K) + \mu(Y^{c}\setminus K) \le \mu(Y\setminus K) + \mu(U) < \varepsilon/2 . \]

因为 $ \mu(A\setminus K) \le \mu(\widetilde{A}\setminus K) + \mu(A\setminus\widetilde{X}) < \varepsilon $，于是完成证明。■

##### 习题

1 设 $ H $ 是可分的希尔伯特空间。若对每个 $ e \in H $，$ (f \mid e) $ 都属于 $ \mathcal{L}_0(X,\mu,\mathbb{K}) $，则称 $ f \in H^{X} $ 是**弱 μ-可测的**。证明：

(a) 若 $ f $ 是弱 μ-可测的，则 $ |f| $ 是 μ-可测的。

(b) $ f $ 是 μ-可测的当且仅当 $ f $ 是弱 μ-可测的。

（提示：(a) 设 $ \{e_j \ ;\ j \in \mathbb{N}\} $ 是 $ \overline{\mathbb{B}}_H $ 的稠密子集。则

\[ [\,|f| \le \alpha\,] = \bigcap_{j}\big[\,|(f \mid e_j)| \le \alpha\,\big] \qquad \text{对 } \alpha \in \mathbb{R} . \]

（b）“$ \Leftarrow $” 利用 (a)，我们可以像定理 1.4 的证明那样构造一列 μ-简单函数，使其 μ-几乎处处收敛到 $ f $。）

2 记 $ \mathcal{S}(\mathbb{R},E) $ 为 $ \mathbb{R} $ 上所有 $ E $ 值容许函数构成的向量空间（见第 VI.8 节）。证明或否定：

(a) $ \mathcal{S}(\mathbb{R},E) \subset \mathcal{L}_0(\mathbb{R},\beta_1,E) $；

(b) $ \mathcal{S}(\mathbb{R},E) \supset \mathcal{L}_0(\mathbb{R},\beta_1,E) $。

3 证明注 1.2(e) 的陈述。

4 证明每个单调的扩充实值函数都是博雷尔可测的。

5 设 $ f, g \in \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}) $。证明集合 $ [f<g] $、$ [f\le g] $、$ [f=g] $ 与 $ [f\ne g] $ 都属于 $ \mathcal{A} $。

6 设 $ (f_j) $ 是 $ \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}) $ 中的序列。证明

\[ K := \{\, x \in X \ ;\ \lim_{j} f_{j}(x) \text{ 在 } \overline{\mathbb{R}} \text{ 中存在} \,\} \]

是 μ-可测的。

7 设 $ f: X \to \overline{\mathbb{R}} $。证明或否定：

(a) $ f \in \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}) \iff f^{+}, f^{-} \in \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^{+}) $。

(b) $ f \in \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}) \iff |f| \in \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}^{+}) $。

8 设 $ B $ 是 $ \overline{\mathbb{R}}^{X} $ 的非空子集，若下列陈述成立，则称 $ B $ 为**贝尔函数空间**：

(i) $ \alpha \in \mathbb{R} $ 且 $ f \in B $ 蕴含 $ \alpha f \in B $。

(ii) 若对 $ f, g \in B $，$ f+g $ 在 $ \overline{\mathbb{R}}^{X} $ 中存在，则 $ f+g \in B $。

(iii) 对 $ B $ 中的每个序列 $ (f_j) $，$ \sup_j f_j $ 都属于 $ B $。

证明：

(a) $ \overline{\mathbb{R}}^{X} $ 与 $ \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}) $ 都是贝尔函数空间。

(b) 若 $ \{ B_\alpha \subset \overline{\mathbb{R}}^{X} \ ;\ \alpha \in \mathsf{A} \} $ 是一族贝尔函数空间，则 $ \bigcap_{\alpha \in \mathsf{A}} B_\alpha $ 也是贝尔函数空间。

9 对 $ C \subset \overline{\mathbb{R}}^{X} $，称

\[ \sigma(C) := \bigcap \{\, B \subset \overline{\mathbb{R}}^{X} \ ;\ B \supset C,\ B \text{ 是贝尔函数空间} \,\} \]

为由 $ C $ 生成的**贝尔函数空间**。由习题 8(b)，$ \sigma(C) $ 是良定义的贝尔函数空间。证明

\[ \sigma\big(\mathcal{S}(X,\mu,\mathbb{R})\big) = \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}) . \]

10 证明 $ \sigma\big(C(\mathbb{R}^{n},\mathbb{R})\big) = \mathcal{L}_0(\mathbb{R}^{n},\beta_n,\mathbb{R}) $。

11 证明不可数族可测实值函数的上确界一般不是可测的。

12 若对每个 $ \delta>0 $ 都存在 $ A \in \mathcal{A} $ 使 $ \mu(A^{c})<\delta $ 且序列 $ (f_j \mid A) $ 一致收敛，则称 $ E^{X} $ 中的序列 $ (f_j) $ 是 **μ-几乎一致收敛的**。

(a) 设 $ (f_j) $ 是 $ \mathcal{L}_0(X,\mu,E) $ 中 μ-几乎一致收敛的序列。证明存在 $ f \in \mathcal{L}_0(X,\mu,E) $ 使 $ f_j \to f $ μ-几乎处处成立。

(b) 定义 $ f_j(x) := x^{j} $（$ j \in \mathbb{N} $，$ x \in [0,1] $）。验证 $ (f_j) $ 几乎一致收敛（关于勒贝格测度），尽管不存在测度为零的集合 $ N \subset [0,1] $ 使 $ (f_j \mid N^{c}) $ 一致收敛。

13 设 $ (X,\mathcal{A},\mu) $ 是有限测度空间，$ f_j, f \in \mathcal{L}_0(X,\mu,E) $，且 $ f_j \to f $ μ-几乎处处成立。证明：

(a) 对 $ \varepsilon>0 $ 与 $ \delta>0 $，存在 $ k \in \mathbb{N} $ 与 $ A \in \mathcal{A} $，使得 $ \mu(A^{c})<\delta $，且对 $ x \in A $ 与 $ j \ge k $ 有 $ |f_j(x)-f(x)|<\varepsilon $。

(b) 序列 $ (f_j) $ μ-几乎一致收敛到 $ f $（**叶戈罗夫定理**）。

(c) 当 $ \mu(X)=\infty $ 时，(b) 一般不再成立。

（提示：(a) 考虑 $ K := [f_j \to f] $ 与 $ K_k := [\,|f_j-f|<\varepsilon \ ;\ j \ge k\,] $，并利用测度的上连续性。(b) 为得到 $ A_j $，在 (a) 中取 $ \varepsilon := 1/j $ 与 $ \delta := \delta 2^{-j} $，并令 $ A := \bigcup_j A_j $。(c) 考虑测度空间 $ (X,\mathcal{A},\mu) = (\mathbb{R},\lambda_1,\mathcal{L}(1)) $，并令 $ f_j := \chi_{[j,j+1]} $。）

14 设 $ (X,\mathcal{A},\mu) $ 是测度空间，$ f_j, f \in \mathcal{L}_0(X,\mu,E) $。若对每个 $ \varepsilon>0 $ 都有 $ \lim_{j\to\infty} \mu\big(\big[\,|f_j-f|\ge\varepsilon\,\big]\big)=0 $，则称 $ (f_j) $ **依测度收敛**于 $ f $。证明：

(a) $ f_j \to f $ μ-几乎一致收敛 $ \Rightarrow $ $ f_j \to f $ 依测度收敛。

(b) 若 $ (f_j) $ 依测度收敛到 $ f $，也收敛到 $ g $，则 $ f=g $ μ-几乎处处成立。

(c) 存在 $ [0,1] $ 上的勒贝格可测函数序列，它依测度收敛，但在任何点处都不逐点收敛。

(d) 存在 $ \mathbb{R} $ 上的勒贝格可测函数序列，它逐点收敛，但不依测度收敛。

（提示：(c) 令 $ f_j := \chi_{I_j} $，其中区间 $ I_j \subset [0,1] $ 的选取使得 $ \lambda_1(I_j) \to 0 $，且对每个 $ x \in [0,1] $，序列 $ (f_j(x)) $ 都有两个聚点。(d) 考虑 $ f_j := \chi_{[j,j+1]} $。）

15 设 $ (f_j) $ 是 $ \mathcal{L}_0(X,\mu,E) $ 中依测度收敛到 $ f \in \mathcal{L}_0(X,\mu,E) $ 的序列。证明 $ (f_j) $ 有子列 μ-几乎处处收敛到 $ f $。

（提示：存在递增序列 $ (j_k)_{k\in\mathbb{N}} $，使得

\[ \mu\big(\big[\,|f_m-f_n|\ge 2^{-k}\,\big]\big) \le 2^{-k} \qquad \text{对 } m, n \ge j_k . \]

借助 $ B_\ell := \bigcup_{k=\ell}^{\infty}\big[\,|f_{n_{k+1}}-f_{n_k}|\ge 2^{-k}\,\big] $，可推出 $ (f_{j_k})_{k\in\mathbb{N}} $ μ-几乎一致收敛。另见习题 12、14(a) 与 14(b)。）

16 对 $ x = (x_j) \in \mathbb{K}^{\mathbb{N}} $ 与 $ p \in [1,\infty] $，定义\footnote{另见命题 IV.2.17。}

\[ \|x\|_p := \begin{cases} \Big(\sum_{j=0}^{\infty} |x_j|^{p}\Big)^{1/p} & \text{若 } p \in [1,\infty), \\ \sup_j |x_j| & \text{若 } p = \infty, \end{cases} \]

以及

\[ \ell_p := \ell_p(\mathbb{K}) := \big( \{\, x \in \mathbb{K}^{\mathbb{N}} \ ;\ \|x\|_p < \infty \,\},\ \|\cdot\|_p \big) . \]

证明：

(a) 若 $ p \in [1,\infty) $，则 $ \ell_p $ 是可分的赋范向量空间。

(b) $ \ell_\infty $ 不可分。

17 设 $ x \in \overline{\mathbb{R}} $。若 $ x \in \mathbb{R} $，则称 $ U \subset \overline{\mathbb{R}} $ 是 $ x $ 在 $ \overline{\mathbb{R}} $ 中的**邻域**，是指 $ U $ 包含 $ x $ 在 $ \mathbb{R} $ 中的一个邻域。对 $ x \in \overline{\mathbb{R}}\setminus\mathbb{R} $，邻域在第 II.5 节中定义为那些包含相应类型的半无限区间的集合。设 $ O \subset \overline{\mathbb{R}} $。若每个 $ x \in O $ 都有 $ \overline{\mathbb{R}} $ 中的邻域 $ U $ 使 $ U \subset O $，则称 $ O $ 在 $ \overline{\mathbb{R}} $ 中是**开的**。现定义 $ \overline{\mathcal{T}} := \{ O \subset \overline{\mathbb{R}} \ ;\ O \text{ 在 } \overline{\mathbb{R}} \text{ 中是开的} \} $。证明：

(a) $ O $ 在 $ \overline{\mathbb{R}} $ 中是开的，当且仅当 $ O \cap \mathbb{R} $ 在 $ \mathbb{R} $ 中是开的，并且当 $ \infty \in O $（或 $ -\infty \in O $）时，存在 $ a \in \mathbb{R} $ 使 $ (a,\infty] \subset O $（或 $ [-\infty,a) \subset O $）。

(b) $ (\overline{\mathbb{R}},\overline{\mathcal{T}}) $ 是紧拓扑空间。

(c) $ \mathcal{B}(\overline{\mathbb{R}}) = \{\, B \cup F \ ;\ B \in \mathcal{B}^{1},\ F \subset \{-\infty,\infty\} \,\} $。

(d) $ \mathcal{B}(\overline{\mathbb{R}}) \mid \mathbb{R} = \mathcal{B}^{1} $。

(e) $ \overline{\mathbb{R}}^{X} $ 中的元素属于 $ \mathcal{L}_0(X,\mu,\overline{\mathbb{R}}) $ 当且仅当它是 $ \mathcal{A} \text{-} \mathcal{B}(\overline{\mathbb{R}}) $-可测的。

18 验证：若 $ S $ 是 $ E $ 的可分子集，则其张成的闭包是可分的巴拿赫空间。

19 对 $ f \in \mathbb{K}^{X} $，定义

\[ (\operatorname{sign} f)(x) := \begin{cases} f(x)/|f(x)| & \text{若 } f(x) \ne 0, \\ 0 & \text{若 } f(x) = 0. \end{cases} \]

证明 $ f \in \mathcal{L}_0(X,\mu,\mathbb{K}) $ 蕴含 $ \operatorname{sign} f \in \mathcal{L}_0(X,\mu,\mathbb{K}) $。
