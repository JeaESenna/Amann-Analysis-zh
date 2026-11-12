由注 2.19(c)，我们得到
\[ \ast(dt \wedge dx^{i} \wedge dx^{j}) = -dx^{k} \qquad \text{且} \qquad \ast(dx^{i} \wedge dx^{j} \wedge dx^{k}) = dt . \]
由此得到
\[ \ast d\ast\alpha = -\sum_{(i,j,k)} \left( \frac{\partial H_{i}}{\partial x^{j}} - \frac{\partial H_{j}}{\partial x^{i}} \right) dx^{k} - \sum_{i=1}^{3} \frac{\partial E_{i}}{\partial t} dx^{i} + \sum_{k=1}^{3} \frac{\partial E_{k}}{\partial x^{k}} dt . \]
现在断言得证，因为 $ m = 4 $ 且 $ \operatorname{sign}(g) = -1 $。■

##### 习题

1 设 $ (M_{j}, g_{j}) $（$ j = 1, 2 $）是伪黎曼流形，$ \partial M_{1} = \varnothing $，并记 $ \pi_{j} : M_{1} \times M_{2} \to M_{j} $ 为到 $ M_{j} $ 的典范投影。证明下列断言：

(i) $ (M_{1} \times M_{2}, \pi_{1}^{\ast} g_{1} + \pi_{2}^{\ast} g_{2}) $ 是黎曼流形，即 $ M_{1} $ 与 $ M_{2} $ 的**积**。

(ii) 两个点 $ (p_{1}, p_{2}) $ 给出 $ M_{1} \times M_{2} $ 的子流形 $ M_{1} \times \{p_{2}\} $ 与 $ \{p_{1}\} \times M_{2} $。

(iii) $ T_{(p_{1},p_{2})}(M_{1} \times M_{2}) = T_{(p_{1},p_{2})}(M_{1} \times \{p_{2}\}) \oplus T_{(p_{1},p_{2})}(\{p_{1}\} \times M_{2}) $。

(iv) $ \omega_{M_{1} \times M_{2}} = \pi_{1}^{\ast}\omega_{M_{1}} \wedge \pi_{2}^{\ast}\omega_{M_{2}} $。

2 设 $ M $ 是 $ \mathbb{R}^{m+1} $ 中的定向超曲面。若 $ \nu $ 是 $ M $ 的单位法向量，且使得对每个 $ p \in M $ 与 $ T_{p}M $ 的每个正基 $ (v_{1}, \ldots, v_{m}) $，$ (m+1) $ 元组 $ (\nu(p), v_{1}, \ldots, v_{m}) $ 都是 $ T_{p}\mathbb{R}^{m+1} $ 的正基，则我们称 $ \nu : M \to T\mathbb{R}^{m+1} $ 为**正单位法向量场**。

(a) 证明 $ \nu $ 是良定义且唯一的。

(b) 确定 $ \mathbb{R}^{3} $ 中下列曲面上的单位法向量：

(i) $ f $ 的图像，其中 $ X $ 是 $ \mathbb{R}^{2} $ 中的开集且 $ f \in \mathcal{E}(X) $，(ii) $ \mathbb{R} \times S^{1} $，(iii) $ S^{2} $，(iv) $ \mathbb{T}^{2}_{a,r} $。

（提示：(iv) 习题 VII.10.10 与例 VII.9.11(f)。）

3 设 $ M $ 是 $ \mathbb{R}^{m+1} $ 中的定向超曲面，并配有标准度量。记 $ \nu $ 为 $ M $ 的正单位法向量。证明下列事实：

(i) $ \nu $ 定义了从 $ M $ 到 $ S^{m} $ 的光滑映射，即**高斯映射**（也记作 $ \nu $）。

(ii) 对 $ p \in M $ 与 $ v \in T_{p}M $，有 $ ((T_{p}\nu)v \mid \nu(p))_{\mathbb{R}^{m+1}} = 0 $。因此 $ (T_{p}\nu)v $ 属于 $ T_{p}M $。

(iii) 映射
\[ L : M \to \bigcup_{p\in M} \mathcal{L}(T_{p}M) \in \mathcal{L}(T_{p}M) , \quad p \mapsto T_{p}\nu \]
是良定义的。它称为 $ M $ 的**魏因加滕映射**。

(iv) 对 $ p \in M $ 与 $ v, w \in T_{p}M $，有
\[ g(p)(L(p)v, w) = g(p)(v, L(p)w) , \]
即 $ L(p) $ 在内积空间 $ (T_{p}M, g(p)) $ 上是对称的。由
\[ h(p)(v, w) := g(p)(L(p)v, w) \qquad \text{对 } p \in M \text{ 与 } v, w \in T_{p}M \]
定义的张量 $ h \in \mathcal{T}_{2}^{0}(M) $ 称为 $ M $ 的**第二基本张量**。

(v) 在局部坐标 $ (U, \varphi) $ 下，取自然嵌入 $ i : M \hookrightarrow \mathbb{R}^{m+1} $，并令 $ f := i \circ \varphi^{-1} $，有
\[ h_{jk} = (\partial_{j}\nu \mid \partial_{k}f) = -(\nu \mid \partial_{j}\partial_{k}f) , \]
其中 $ h_{jk} := h(\partial/\partial x^{j}, \partial/\partial x^{k}) $。

4 计算 $ \mathbb{R}^{2} $、$ S^{2} $、$ \mathbb{R} \times S^{1} $ 与 $ \mathbb{T}^{2}_{a,r} $ 作为 $ \mathbb{R}^{3} $ 的子流形的第二基本形式。

5 设 $ I $ 是 $ \mathbb{R} $ 中的紧区间，$ M $ 是黎曼流形。又设 $ \gamma \in C^{1}(I, M) $。令 $ i : M \hookrightarrow \mathbb{R}^{\overline{m}} $ 为自然嵌入，并置 $ \widetilde{\gamma} := i \circ \gamma $。于是 $ \widetilde{\gamma} $ 的长度 $ L(\widetilde{\gamma}) $ 按第 VIII.1 节定义。证明：若对 $ t \in I $ 有 $ \dot{\gamma}(t) := (T_{t}\gamma)(t, 1) $，则
\[ L(\widetilde{\gamma}) = \int_{I} \sqrt{g(\dot{\gamma}(t), \dot{\gamma}(t))} \, dt . \]

当 $ L(\widetilde{\gamma}) = L(I) $ 时，我们称 $ \gamma $ 是**按弧长参数化**的。

6 设 $ M $ 是 $ \mathbb{R}^{3} $ 中的定向曲面，$ \gamma \in C^{2}(I, M) $ 按弧长参数化。又记 $ \nu $ 为 $ M $ 的正单位法丛。则我们称
\[ \kappa_{g}(\gamma) := \det[\dot{\gamma}, \ddot{\gamma}, \nu] \]
为 $ \gamma $ 在 $ M $ 中的**曲率**，或 $ \gamma $ 的**测地曲率**。

(a) 在欧氏情形 $ M = \mathbb{R}^{2} $ 中验证测地曲率与第 VIII.2 节中的（通常）曲率相同。

(b) 设 $ M = S^{2} $，$ (x, y, z) $ 是 $ \mathbb{R}^{3} $ 中的欧氏坐标。又设对 $ z \in (-1, 1) $，$ \gamma_{z} $ 是 $ L_{z} := \sqrt{1 - |z|^{2}}\, S^{1} \times \{z\} $ 的按弧长参数化（见例 1.5(a)）。证明
\[ \kappa_{g}(\gamma_{z}) = \frac{z}{\sqrt{1 - |z|^{2}}} . \]
因此测地曲率在圆 $ L_{z} $ 上为常数，并在赤道处为零。

7 对 $ m = 2 $ 与 $ 3 $ 直接计算，证明例 4.13(c) 中的等式 $ \rho^{\ast}\omega_{S^{m}} = r^{-(m+1)}\alpha $。

8 证明例 5.5(b) 的证明中所作的陈述。

9 证明
\[ \{ z \in \mathbb{C} ; \operatorname{Im} z > 0 \} \to \mathbb{D} , \quad z \mapsto (1 + iz)/(1 - iz) \]
给出从“复半平面的上半部分”到单位圆盘的一个微分同胚。然后用此映射证明
\[ \left( H^{2}, \frac{(dx)^{2} + (dy)^{2}}{y^{2}} \right) \]
是双曲平面的一个模型，即**克莱因模型**。

10 证明例 5.5(m) 中的罗巴切夫斯基平面是 $ H^{2} $ 的一个模型。

11 对 $ \alpha \in \Omega^{r-1}(M) $ 与 $ \beta \in \Omega^{r}(M) $，证明
\[ d(\alpha \wedge \ast\beta) = d\alpha \wedge \ast\beta + \alpha \wedge \ast\delta\beta . \]

12 证明余微分不依赖于所在黎曼流形的定向。

13 设 $ M $ 是定向的，$ (N, \widetilde{g}) $ 是另一个定向的 $ m $ 维黎曼流形，且 $ f : M \to N $ 是等距微分同胚。证明 $ f^{\ast}\omega_{N} = \pm\omega_{M} $。并证明 $ f^{\ast}\omega_{N} = \omega_{M} $ 当且仅当 $ f $ 是保定向的。

14 设 $ M $ 与 $ N $ 如习题 13 所述，且 $ f : M \to N $ 是保定向的等距微分同胚。证明下面的图
\[ \begin{array}{ccc} \Omega^{r}(M) & \xrightarrow{\ast} & \Omega^{m-r}(M) \\ f^{\ast}\uparrow & & \uparrow f^{\ast} \\ \Omega^{r}(N) & \xrightarrow{\ast} & \Omega^{m-r}(N) \end{array} \]
对 $ 0 \le r \le m $ 交换。

15 设 $ M $ 与 $ N $ 如习题 13 所述，且 $ f : M \to N $ 是等距微分同胚。\footnote{参见习题 12。}证明下面的图
\[ \begin{array}{ccc} \Omega^{r}(M) & \xrightarrow{\delta} & \Omega^{r-1}(M) \\ f^{\ast}\uparrow & & \uparrow f^{\ast} \\ \Omega^{r}(N) & \xrightarrow{\delta} & \Omega^{r-1}(N) \end{array} \]
对 $ 0 \le r \le m $ 交换。
