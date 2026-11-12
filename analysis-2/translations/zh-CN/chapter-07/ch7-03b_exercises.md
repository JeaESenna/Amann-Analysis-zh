##### 习题

1 我们称函数 $ f : E \to F $ 为 $ \alpha \in \mathbb{R} $ 次**正齐次**的，如果

\[ f(tx) = t^{\alpha} f(x) \quad \text{对 } t > 0 \text{ 且 } x \in E \setminus \{0\} . \]

证明：若 $ f \in C^{1}(E, F) $ 是 1 次正齐次的，则 $ f \in \mathcal{L}(E, F) $。

2 设 $ f : \mathbb{R}^{m} \to \mathbb{R} $ 在 $ \mathbb{R}^{m} \setminus \{0\} $ 上可微。证明 $ f $ 是 $ \alpha $ 次正齐次的，如果它满足**欧拉齐次性关系**

\[ (\nabla f(x)|x) = \alpha f(x) \quad \text{对 } x \in \mathbb{R}^{m} \setminus \{0\} . \]

3 设 $ X $ 是 $ \mathbb{R}^{m} $ 中的开集，$ f \in C^{1}(X, \mathbb{R}^{n}) $。证明

\[ g : X \to \mathbb{R} , \quad x \mapsto \sin(|f(x)|^{2}) \]

是连续可微的，并确定 $ \nabla g $。

4 对于 $ f \in C^{1}(\mathbb{R}^{n}, \mathbb{R}) $ 与 $ A \in \mathcal{L}(\mathbb{R}^{n}) $，证明

\[ \nabla(f \circ A)(x) = A^{*} \nabla f(Ax) \quad \text{对 } x \in \mathbb{R}^{n} . \]

5 设 $ X $ 是 $ \mathbb{R}^{k} $ 中的开集，$ Y $ 是 $ \mathbb{R}^{n} $ 中的有界开集。进一步设 $ f \in C(\overline{X \times Y}, \mathbb{R}) $ 在 $ X \times Y $ 中可微，且存在 $ \xi \in C^{1}(X, \mathbb{R}^{n}) $ 使得 $ \operatorname{im}(\xi) \subset Y $ 且

\[ m(x) := \min_{y \in \overline{Y}} f(x, y) = f(x, \xi(x)) \quad \text{对 } x \in X . \]

计算 $ m : X \to \mathbb{R} $ 的梯度。

6 对于 $ g \in C^{1}(\mathbb{R}^{m}, \mathbb{R}) $ 与 $ f_{j} \in C^{1}(\mathbb{R}, \mathbb{R}) $，其中 $ j = 1, \ldots, m $，计算以下映射的梯度：

\[ \mathbb{R}^{m} \to \mathbb{R} , \quad (x_{1}, \ldots, x_{m}) \mapsto g(f_{1}(x_{1}), \ldots, f_{m}(x_{m})) . \]

7 函数 $ f \in C^{1}(\mathbb{R}^{2}, \mathbb{R}) $ 满足 $ \partial_{1} f = \partial_{2} f $ 且 $ f(0, 0) = 0 $。证明存在 $ g \in C(\mathbb{R}^{2}, \mathbb{R}) $ 使得 $ f(x, y) = g(x, y)(x + y) $ 对 $ (x, y) \in \mathbb{R}^{2} $ 成立。

8 对指数映射验证

\[ \exp \in C^{1}(\mathcal{L}(E), \mathcal{L}(E)) \quad \text{且} \quad \partial \exp(0) = \operatorname{id}_{\mathcal{L}(E)} . \]
