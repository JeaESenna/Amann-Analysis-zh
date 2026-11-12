##### 习题

1  设 $ H := (H,(\cdot \mid \cdot)) $ 是有限维希尔伯特空间。证明这些事实：

(a) 对每个 $ a \in \mathcal{L}^{2}(H,\mathbb{K}) $，恰好存在一个 $ A \in \mathcal{L}(H) $，即由 $ a $ 诱导的**线性算子**，满足

\[ a(x,y) = (Ax \mid y) \quad \text{对 } x, y \in H . \]

由此诱导的映射

\[ \mathcal{L}^{2}(H,\mathbb{K}) \to \mathcal{L}(H) , \quad a \mapsto A \tag{4.3} \]

是等距同构。

(b) 在实的情形中，有 $ a \in \mathcal{L}^{2}_{\mathrm{sym}}(H,\mathbb{R}) \iff A = A^{*} $。

(c) 设 $ H = \mathbb{R}^{m} $ 且 $ (\cdot \mid \cdot) $ 是欧几里得内积。证明

\[ a(x,y) = \sum_{j,k=1}^{m} a_{jk}x^{j}y^{k} \quad \text{对 } x = (x^{1},\ldots,x^{m}) , \quad y = (y^{1},\ldots,y^{m}) , \quad x, y \in \mathbb{K}^{m} , \]

其中 $ [a_{jk}] $ 是由 $ a $ 诱导的线性算子的矩阵表示。

（(a) 的提示：里斯表示定理。\footnote{因为里斯表示定理对无限维希尔伯特空间也成立，所以 (4.3) 在这样的空间中也成立。}）

2  设 $ X $ 在 $ E $ 中开且 $ f \in C^{1}(X,\mathcal{L}^{m}(E,F)) $ 满足 $ f(X) \subset \mathcal{L}^{m}_{\mathrm{sym}}(E,F) $。则证明对 $ x \in X $ 与 $ h \in E $ 有 $ \partial f(x)h \in \mathcal{L}^{m}_{\mathrm{sym}}(E,F) $。

3  对 $ A \in \mathbb{K}^{n \times n} $，证明 $ \det e^{A} = e^{\operatorname{tr}(A)} $。（提示：令 $ h(t) := \det e^{tA} - e^{t\operatorname{tr}(A)} $，其中 $ t \in \mathbb{R} $。借助例 4.8(a)，推出 $ h' = 0 $。）

4  对 $ T_{1}, T_{2} \in \mathcal{L}(F,E) $ 与 $ S \in \mathcal{L}(E,F) $，令 $ g(T_{1},T_{2})(S) := T_{1}ST_{2} $。验证

(a) $ g(T_{1},T_{2}) \in \mathcal{L}(\mathcal{L}(E,F),\mathcal{L}(F,E)) $；

(b) $ g \in \mathcal{L}^{2}(\mathcal{L}(F,E);\mathcal{L}(\mathcal{L}(E,F),\mathcal{L}(F,E))) $。

5  设 $ H $ 是希尔伯特空间 $ A \in \mathcal{L}(H) $ 且 $ a(x) := (Ax \mid x) $，其中 $ x \in H $。证明

(a) 对 $ x, y \in H $，$ \partial a(x)y = (Ax \mid y) + (Ay \mid x) $；

(b) 若 $ H = \mathbb{R}^{n} $，则对 $ x \in \mathbb{R}^{n} $ 有 $ \nabla a(x) = (A + A^{*})x $。
