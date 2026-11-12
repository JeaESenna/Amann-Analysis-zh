也将逐点定义：

\[ (\gamma + \delta)(x) := \gamma(x) + \delta(x), \quad (f\gamma)(x) := f(x)\gamma(x), \quad (\gamma \otimes \delta)(x) := \gamma(x) \otimes \delta(x) . \]

下面的注是注 2.20 与链式法则的简单推论。我们把详细的证明留给你们作为练习。

3.14 注 (a) $ \mathcal{T}_0^1(X) = \mathcal{V}(X) $ 且 $ \mathcal{T}_1^0(X) = \Omega^1(X) $。又有

\[ \mathcal{T}_2^0(X) = C^\infty(X, \mathcal{L}^2(\mathbb{R}^m)) , \]

其中我们使用了张量与其主部的典范等同。

(b) 张量积是 $ \mathcal{E}(X) $-双线性的且结合的。

(c) $ \mathcal{T}_s^r(X) $ 是无限维 $ \mathbb{R} $-向量空间，也是 $ m^{r+s} $ 维的 $ \mathcal{E}(X) $-模。取 $ \mathbb{R}^m $ 的典范基 $ (\partial/\partial x^1, \ldots, \partial/\partial x^m) $，

\[ \left\{ \frac{\partial}{\partial x^{j_1}} \otimes \cdots \otimes \frac{\partial}{\partial x^{j_r}} \otimes dx^{k_1} \otimes \cdots \otimes dx^{k_s} ;\ j_i, k_i \in \{1, \ldots, m\} \right\} \tag{3.24} \]

是 $ \mathcal{T}_s^r(X) $ 的一个模基。

(d) $ X $ 上的 $ (r, s) $-张量 $ \gamma $ 属于 $ \mathcal{T}_s^r(X) $ 当且仅当 $ \Omega^1(X) $ 中的每个 $ r $ 元组 $ \alpha_1, \ldots, \alpha_r $ 与 $ \mathcal{V}(X) $ 中的每个 $ s $ 元组 $ v_1, \ldots, v_s $ 都满足

\[ \gamma(\alpha_1, \ldots, \alpha_r, v_1, \ldots, v_s) \in \mathcal{E}(X) . \]

这当且仅当 $ \gamma $ 在基 (3.24) 下的系数属于 $ \mathcal{E}(X) $。

(e) （正则性）上述定义与断言显然有类似结论，它们对 $ C^k $ 类张量仍然成立。■

##### 习题

1 设 $ \alpha, \beta \in \Omega(\mathbb{R}^4) $ 由

\[ \alpha := dx^1 + x^2 dx^2 \quad \text{与} \quad \beta := \sin(x^2)\, dx^1 \wedge dx^3 + \cos(x^3)\, dx^2 \wedge dx^4 , \]

给出，并定义 $ h \in C^\infty(\mathbb{R}^4, \mathbb{R}^4) $ 为 $ h(x) := (x^1, x^2, x^3 x^4, x^4) $。计算：

(i) $ \gamma := \alpha \wedge \beta $；

(ii) $ h^*\gamma $；

(iii) $ h^*\gamma(0)(e_1, e_2, e_3 + e_4) $，其中 $ (e_1, e_2, e_3, e_4) $ 是 $ \mathbb{R}^4 $ 中的标准基；

(iv) $ d\alpha, d\beta, d\gamma, d(h^*\gamma) $。

2 设 $ f_3: \mathbb{R}^3 \to \mathbb{R}^3 $，$ (r, \varphi, \vartheta) \mapsto (x, y, z) $ 是球坐标映射。计算

(a) $ f_3^* dx, f_3^* dy, f_3^* dz $；

(b) $ f_3^*(dy \wedge dz) $；

(c) $ f_3^* dx \wedge f_3^*(dy \wedge dz) $。

3 一个简单的热力学系统（例如理想气体）由其体积 $ V $ 与温度 $ T $ 刻画（这里 $ V, T \in \mathbb{R} $）。这样的系统的状态则由压强 $ p := p(V, T) $ 与内能 $ E := E(V, T) $ 描述。根据热力学第二定律，该系统还有另一个状态函数 $ S := S(V, T) $，即熵，其微分由下式给出：

\[ dS := \frac{dE + p\,dV}{T} \quad \text{对 } T > 0 . \]

证明以下事实：

(a) $ E $ 与 $ p $ 满足关系

\[ \frac{\partial E}{\partial V} = T\frac{\partial p}{\partial T} - p . \]

(b) 满足状态方程 $ pV = RT $ 的理想气体（其中 $ R \in \mathbb{R} $ 是普适气体常数），其内能与体积无关，即 $ E = E(T) $。

(c) 对范德瓦尔斯气体，其状态方程为

\[ \left( p + \frac{a}{V^2} \right)(V - b) = cT \quad \text{对 } a, b, c \in \mathbb{R}^\times , \tag{3.25} \]

其内能确实依赖于体积。

（提示：(a) $ d^2 = 0 $。(c) 由 (3.25) 推出 $ T\,\partial p/\partial T = p + a/V^2 $。）

注 在物理学文献中，当 1 形式 $ \alpha $ 不是恰当形式时，$ d\alpha $ 常写作 $ \delta\alpha $。

4 若存在 $ \alpha_1, \ldots, \alpha_r \in \Omega^1(X) $ 使得

\[ \alpha = \alpha_1 \wedge \alpha_2 \wedge \cdots \wedge \alpha_r , \]

则称 $ r $ 形式 $ \alpha \in \Omega^r(X) $ 是**可分解的**。

设 $ \alpha, \beta \in \Omega^r(X) $ 可分解。计算 $ (\alpha + \beta) \wedge (\alpha + \beta) $。

5 设 $ \alpha = \sum_{j \le k} a_{jk} dx^j \wedge dx^k \in \Omega^2(X) $。证明 $ \alpha $ 可分解当且仅当

\[ a_{ij} a_{k\ell} + a_{jk} a_{i\ell} + a_{ki} a_{j\ell} = 0 \quad \text{对 } 1 \le i, j, k, \ell \le n , \]

其中 $ a_{jk} := -a_{kj} $（$ j \ge k $）。

6 设 $ \alpha = \sum_{i \le j} a_{ij} dx^i \wedge dx^j \in \Omega^2(X) $。证明

\[ d\alpha = \sum_{i<j<k} \left( \frac{\partial a_{ij}}{\partial x^k} + \frac{\partial a_{jk}}{\partial x^i} + \frac{\partial a_{ki}}{\partial x^j} \right) dx^i \wedge dx^j \wedge dx^k . \]

7 计算下列外微分：

(a) $ d\alpha \wedge \beta - \alpha \wedge d\beta $ 与

(b) $ d\alpha \wedge \beta \wedge \gamma + \alpha \wedge d\beta \wedge \gamma + \alpha \wedge \beta \wedge d\gamma $，其中 (b) 中 $ \alpha $ 与 $ \beta $ 为偶次。

8 求 $ d\alpha $，若

\[ \alpha := \sum_{j=1}^{m} (-1)^{j-1} \frac{x^j}{|x|^m} dx^1 \wedge \cdots \wedge \widehat{dx^j} \wedge \cdots \wedge dx^m \in \Omega^{m-1}(\mathbb{R}^m \setminus \{0\}) . \]

9 设 $ \alpha := 2xz\,dy \wedge dz + dz \wedge dx - (z^2 + e^x)\,dx \wedge dy \in \Omega^2(\mathbb{R}^3) $。证明 $ \alpha $ 是恰当的，并求出一个原函数。

10 设 $ \omega \in \Omega^2(X) $ 非退化。证明

\[ \Theta_\omega : \mathcal{V}(X) \to \Omega^1(X), \quad v \mapsto \omega(v, \cdot) \]

是 $ \mathcal{E}(X) $-模同构。

11 证明以下三个断言：

(a) 辛形式 $ \sigma \in \Omega^2(\mathbb{R}^{2m}) $ 非退化且闭。

(b) $ m $ 重外积 $ \sigma^m := \sigma \wedge \cdots \wedge \sigma \in \Omega^{2m}(\mathbb{R}^{2m}) $ 满足 $ \sigma^m \neq 0 $。

(c) 根据习题 10 与 (b)，**辛梯度** $ \operatorname{sgrad} f := \Theta_\sigma^{-1} df \in \mathcal{V}(\mathbb{R}^{2m}) $ 对每个 $ f \in \mathcal{E}(\mathbb{R}^{2m}) $ 有定义。在坐标 $ (q, p) \in \mathbb{R}^m \times \mathbb{R}^m $ 中计算 $ \operatorname{sgrad} f $。

12 若 $ \sigma $ 是 $ \mathbb{R}^{2m} $ 上的辛形式，则

\[ \{\cdot, \cdot\} : \mathcal{E}(\mathbb{R}^{2m}) \times \mathcal{E}(\mathbb{R}^{2m}) \to \mathcal{E}(\mathbb{R}^{2m}), \quad (f, g) \mapsto \sigma(\operatorname{sgrad} f, \operatorname{sgrad} g) \]

称为**泊松括号**。对 $ f, g, h \in \mathcal{E}(\mathbb{R}^{2m}) $ 与 $ c \in \mathbb{R} $ 证明

(i) 在局部坐标 $ (q_1, \ldots, q_m, p_1, \ldots, p_m) $ 中，泊松括号为

\[ \{f, g\} = \sum_{j=1}^{m} \left( \frac{\partial f}{\partial p_j} \frac{\partial g}{\partial q_j} - \frac{\partial f}{\partial q_j} \frac{\partial g}{\partial p_j} \right); \]

(ii) $ \{f, cg + h\} = c\{f, g\} + \{f, h\} $；

(iii) $ \{f, g\} = -\{g, f\} $；

(iv) $ \{f, \{g, h\}\} + \{g, \{h, f\}\} + \{h, \{f, g\}\} = 0 $（雅可比恒等式）；

(v) $ \{f, gh\} = g\{f, h\} + h\{f, g\} $；

(vi) $ \operatorname{sgrad}\{f, g\} = (\operatorname{sgrad} f \mid \operatorname{sgrad} g)_{\mathbb{R}^{2m}} $。

13 证明泊松括号与 $ \mathbb{R}^{2m} $ 上的辛形式 $ \sigma $ 由关系

\[ df \wedge dg \wedge \sigma^{m-1} = \frac{1}{m} \{f, g\}\sigma^m . \]

相联系。
