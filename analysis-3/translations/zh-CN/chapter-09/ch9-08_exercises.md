##### 习题

1 证明

\[ \mathcal{L}(m) \boxtimes \mathcal{L}(n) \subset \mathcal{L}(m+n) \quad \text{且} \quad \lambda_m(A)\lambda_n(B) = \lambda_{m+n}(A \times B) \]

对 $ A \times B \in \mathcal{L}(m) \boxtimes \mathcal{L}(n) $ 成立。

（提示：先考虑 $ \mathbb{R}^m $ 中的开集 $ A $ 与 $ \mathbb{R}^n $ 中的开集 $ B $ 的情形，并利用命题 5.6 与定理 II.8.10。对 $ A \times B \in \mathcal{L}(m) \boxtimes \mathcal{L}(n) $，注意推论 5.5。）

2 证明 $ \mathcal{B}^m \otimes \mathcal{B}^n \subset \mathcal{L}(m) \otimes \mathcal{L}(n) \subset \mathcal{L}(m+n) $，并证明这些包含关系都是真包含。

3 设 $ M $ 是 $ \mathbb{R}^n $ 的一个 $ m $ 维 $ C^1 $ 子流形。证明：若 $ m < n $，则 $ M $ 的勒贝格 $ n $-测度为 0。

4 验证：对 $ A \in \mathcal{L}(n) $，有

\[ \lambda_n(A) = \sup\{\, \lambda_n(B) ;\ B \subset \mathbb{R}^n \text{ 是闭集且 } B \subset A \,\} . \]

5 设 $ g : (0,\infty) \to \mathbb{R} $ 对 $ s,t \in (0,\infty) $ 满足 $ g(s+t) = g(s) + g(t) $。证明：若 $ g $ 递增或在有界集上有界，则对 $ s > 0 $ 有 $ g(s) = sg(1) $。

6 令

\[ S := \{\, g \in \mathbb{R}^{\mathbb{R}} ;\ g(s+t) = g(s) + g(t),\ s,t \in \mathbb{R},\ \exists s_0 \in \mathbb{R} : g(s_0) \ne s_0 g(1) \,\} . \]

证明：

(a) 对每个 $ g \in S $，$ g $ 的图像在 $ \mathbb{R}^2 $ 中稠密；

(b) $ S \ne \varnothing $。

（对 (b) 的提示：利用 $ \mathbb{Q} $-向量空间 $ \mathbb{R} $ 的一个基来定义 $ g $。）

7 设 $ n \ge 2 $，$ \mu $ 是 $ \mathcal{B}^n $［或 $ \mathcal{L}(n) $］上的平移不变的局部有限测度。若 $ A \in \mathcal{B}^1 $［或 $ A \in \mathcal{L}(1) $］，且 $ a', b' \in \mathbb{R}^{n-1} $，令

\[ \mu_1(A) := \mu\left(A \times [a', b')\right) . \]

证明 $ \mu_1 $ 是 $ \mathcal{B}^1 $［或 $ \mathcal{L}(1) $］上的平移不变的局部有限测度。

8 设 $ B $ 是 $ \mathbb{Q} $-向量空间 $ \mathbb{R} $ 的基。证明或反驳：$ B $ 是有限的。

9 定义 $ M := \{\, \log p ;\ p \in \mathbb{N} \text{ 是素数} \,\} $。证明：

(a) $ M $ 在 $ \mathbb{Q} $ 上线性无关。

(b) $ M $ 不是 $ \mathbb{R} $ 的基。

10 若 $ B $ 是 $ \mathbb{R} $ 在 $ \mathbb{Q} $ 上的一个勒贝格可测的基，则 $ B $ 的勒贝格测度为 0。

11 验证康托尔集 $ C $ 满足 $ C + C = [0,2] $。

12 证明存在勒贝格测度为 0 的集合 $ A $，使得 $ A - A $ 是 $ 0 $ 的邻域。\footnote{比较定理 5.18。}

13 证明存在 $ \mathbb{Q} $-向量空间 $ \mathbb{R} $ 的一个勒贝格可测的基。

（提示：设 $ C $ 是康托尔集，并定义

\[ \mathcal{A} := \{\, M \subset C ;\ M \text{ 在 } \mathbb{Q} \text{ 上线性无关} \,\} . \]

则 $ \mathcal{A} $ 有极大元 $ B $，由习题 11 可知它张成 $ \mathbb{R} $。）

14 设 $ R $ 如 (5.15) 中所述。验证 $ R $ 不属于 $ \mathcal{L}(n) $。

15 令 $ G := \mathbb{Q} + \sqrt{2}\mathbb{Z} $，$ G_1 := \mathbb{Q} + 2\sqrt{2}\mathbb{Z} $，$ G_2 := G \setminus G_1 $。证明：

(a) $ G $ 与 $ G_1 $ 是阿贝尔群 $ (\mathbb{R},+) $ 的子群。

(b) 取 $ \varphi : \mathbb{R}/G \to \mathbb{R} $ 使得 $ \varphi([x]) \in [x] $，并令 $ R := \operatorname{im}(\varphi) $。设 $ A := R + G_1 $。则 $ (A - A) \cap G_2 = \varnothing $。

16 证明存在 $ \mathbb{R} $ 的子集 $ A $，使得包含在 $ A $ 或 $ A^{c} $ 中的每个勒贝格可测集的测度都为 0。

（提示：借助定理 5.18 证明习题 15 中的集合 $ A $ 具有所需性质。）

17 设 $ f : [0,1] \to [0,1] $ 是习题 III.3.8 中的康托尔函数。证明：

(a) 存在测度为 0 的集合 $ N \subset [0,1] $，使得 $ f $ 在 $ [0,1] \setminus N $ 的每一点处都可微，且导数为 0。

(b) 映射 $ g : [0,1] \to [0,2] $，$ x \mapsto x + f(x) $ 是同胚。

(c) $ \lambda_1(g(C)) = 1 $。

18 验证：

(a) 每个有限维赋范向量空间都是局部紧的。

(b) 局部紧空间的任何开子集与任何闭子集都是局部紧的。

(c) 局部紧空间是 $ \sigma $-紧的当且仅当它是可分的。

(d) $ \sigma $-紧的局部紧度量空间的任何开子集与任何闭子集都是 $ \sigma $-紧的。

19 设 $ F : \mathbb{R} \to \mathbb{R} $ 是测度生成函数。则由 $ F $ 诱导的 $ \mathbb{R} $ 上的勒贝格–斯蒂尔杰斯测度是正则的。

20 设 $ X $ 是度量空间。验证

\[ \mathcal{B}(X) = \mathcal{A}_\sigma\left(\{\, f^{-1}(0) ;\ f \in C(X,\mathbb{R}) \,\}\right) . \]

（存在非可度量化的拓扑空间，使得 $ \mathcal{B}(X) $ 严格大于 $ \mathcal{A}_\sigma(\{\, f^{-1}(0) ;\ f \in C(X,\mathbb{R}) \,\}) $；见 [Flo81, 11.1.2]。）

21 设 $ X $ 是拓扑空间，并用 $ (X,\mathcal{A},\mu) $ 表示一个满足 $ \mathcal{A} \supset \mathcal{B}(X) $ 的正则测度空间。又设 $ A \in \mathcal{A} $，$ \mathcal{C} := \mathcal{A} \mid A $，$ \nu := \mu \mid \mathcal{C} $。验证 $ (A,\mathcal{C},\nu) $ 是正则的。
