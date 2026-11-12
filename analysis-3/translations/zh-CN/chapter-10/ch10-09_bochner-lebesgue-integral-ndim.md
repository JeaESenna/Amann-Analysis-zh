## 5 n 维 Bochner–Lebesgue 积分

在这一简短的节中，我们讨论 Bochner–Lebesgue 积分与第 VI 章定义的柯西–黎曼积分之间的关系。我们将证明每个跳跃连续函数都是勒贝格可测的，并且相应的积分相等。这一联系将使我们能够把为柯西–黎曼积分发展出来的方法引入勒贝格积分理论。

我们还证明：紧区间上的有界标量值函数黎曼可积，当且仅当其不连续点集具有测度零。由此可知存在勒贝格可积但不是黎曼可积的函数。因此勒贝格积分是黎曼积分的真扩充——从而也是柯西–黎曼积分的真扩充。

在本节全文中，设

- $ X \subset \mathbb{R}^{n} $ 是正测度的 $ \lambda_{n} $-可测集；$ E = (E,|\cdot|) $ 是 Banach 空间。

##### 勒贝格测度空间

由习题 IX.1.7 可知，$ \mathcal{L}_{X} := \mathcal{L}(n)|X $ 是 $ X $ 上的 $ \sigma $-代数。因此限制 $ \lambda_{n}|X := \lambda_{n}|\mathcal{L}_{X} $ 是 $ X $ 上的测度，称为 $ X $ 上的 **n 维勒贝格测度**（或 **勒贝格 n-测度**）。我们也用 $ \lambda_{n} $ 来记这个限制。容易验证 $ (X,\mathcal{L}_{X},\lambda_{n}) $ 是完备的 $ \sigma $-有限测度空间。如果不存在误解的危险，我们就从“可测的”“测度”“可积的”等词中去掉限定词“勒贝格”（或“$ \lambda_{n} $”）。

若 $ f \in E^{X} $ 可积，则称

\[ \int_{X} f d\lambda_{n} := \int_{X} f d(\lambda_{n}|X) = \int_{\mathbb{R}^{n}} \widetilde{f}\chi_{X} d\lambda_{n} \]

为 $ f $ 在 $ X $ 上的（n 维）（Bochner–Lebesgue）积分。记号

\[ \int_{X} f(x) d\lambda_{n}(x) \quad \text{和} \quad \int_{X} f(x) \lambda_{n}(dx) \]

也很常见。

简言之，我们令

\[ \mathcal{L}_{p}(X,E) := \mathcal{L}_{p}(X,\lambda_{n},E) \quad \text{和} \quad L_{p}(X,E) := L_{p}(X,\lambda_{n},E) . \]

我们还令 $ \mathcal{L}_{p}(X) := \mathcal{L}_{p}(X,\mathbb{K}) $ 与 $ L_{p}(X) := L_{p}(X,\mathbb{K}) $，其中 $ p \in [1,\infty] \cup \{0\} $。

下一个定理列出 n 维积分的重要性质。

5.1 定理 设 $ X $ 在 $ \mathbb{R}^{n} $ 中是开的，或者当 $ n = 1 $ 时 $ X $ 是完全区间。则：

(i) $ \lambda_{n} $ 是 $ X $ 上的 massive 拉东测度。

(ii) $ C(X,E) $ 是 $ L_{0}(X,E) $ 的向量子空间。

(iii) $ BC(X,E) $ 是 $ L_{\infty}(X,E) $ 的闭向量子空间。

(iv) 对 $ p \in [1,\infty) $，$ C_{c}(X,E) $ 是 $ L_{p}(X,E) $ 的稠密向量子空间。若 $ K $ 是 $ X $ 的紧子集，则

\[ \|f\|_{p} \le \lambda_{n}(K)^{1/p}\|f\|_{\infty} \quad \text{对满足 } \operatorname{supp}(f) \subset K \text{ 的 } f \in C_{c}(X,E) . \]

(v) 若 $ X $ 具有有限测度且 $ 1 \le p < q \le \infty $，则

\[ L_{q}(X,E) \overset{d}{\hookrightarrow} L_{p}(X,E) \]

以及

\[ \|f\|_{p} \le \lambda_{n}(X)^{1/p-1/q}\|f\|_{q} \quad \text{对 } f \in L_{q}(X,E) . \]

证明 (i) $ X $ 是 $ \sigma $-紧的度量空间——若 $ X $ 是开集，由注 1.16(e)；若 $ X $ 是区间，理由显然。于是论断由注 1.16(h) 与习题 IX.5.21 推出。

(ii) 与 (iii) 分别由命题 4.17 与定理 4.18(ii) 覆盖。

(iv) 第一个论断是定理 4.18(i) 的推论，第二个论断显然。

(v) 是定理 4.16 的特例。■

5.2 注 设 $ X $ 可测且其边界 $ \partial X $ 是 $ \lambda_{n} $-零集。则博雷尔集 $ \mathring{X} $ 属于 $ \mathcal{L}(n) $，且 $ \lambda_{n}(\mathring{X}) = \lambda_{n}(X) $。进一步，容易验证映射

\[ L_{p}(X,E) \to L_{p}(\mathring{X},E) , \quad [f] \mapsto [f|\mathring{X}] \]

对 $ p \in [1,\infty] \cup \{0\} $ 是向量空间同构。若 $ p \in [1,\infty] $，它是等距。因此对 $ p \in [1,\infty] \cup \{0\} $ 我们可以把 $ L_{p}(X,E) $ 与 $ L_{p}(\mathring{X},E) $ 等同。特别地，对 $ \mathbb{R} $ 中以 $ a := \inf X $ 与 $ b := \sup X $ 为端点的区间 $ X $，有

\[ L_{p}(X,E) = L_{p}([a,b],E) = L_{p}([a,b),E) = L_{p}((a,b],E) = L_{p}((a,b),E) \]

其中 $ p \in [1,\infty] \cup \{0\} $。

##### 绝对可积函数的勒贝格积分

我们现在证明每个绝对可积函数都是勒贝格可积的，且它在第 VI.8 节意义下的积分等于勒贝格积分。

5.3 定理 设 $ f: (a,b) \to E $ 绝对可积，其中 $ a,b \in \overline{\mathbb{R}} $ 且 $ a < b $。则 $ f $ 属于 $ \mathcal{L}_{1}((a,b),E) $，且

\[ \int_{(a,b)} f d\lambda_{1} = \int_{a}^{b} f . \]

证明 (i) 设 $ a < \alpha < \beta < b $。若 $ g: [\alpha,\beta] \to E $ 是阶梯函数，则 $ g $ 显然是 $ \lambda_{1} $-简单的，且

\[ \int_{(\alpha,\beta)} g d\lambda_{1} = \int_{\alpha}^{\beta} g . \tag{5.1} \]

现在设 $ g: [\alpha,\beta] \to E $ 跳跃连续。则存在阶梯函数序列 $ (g_{j}) $ 一致收敛于 $ g $。因此 $ g $ 可测，且注 VI.1.1(d) 与推论 3.15(ii) 表明 $ g $ 属于 $ \mathcal{L}_{1}((\alpha,\beta),E) $。由于 $ g $ 有界且序列 $ (g_{j}) $ 一致收敛，存在 $ M \ge 0 $ 使得对所有 $ j \in \mathbb{N} $ 有 $ |g_{j}| \le M $。因此由勒贝格控制收敛定理，

\[ \lim_{j \to \infty} \int_{(\alpha,\beta)} g_{j} d\lambda_{1} = \int_{(\alpha,\beta)} g d\lambda_{1} \]

在 $ E $ 中成立，并利用 (5.1) 与柯西–黎曼积分的定义得出

\[ \int_{\alpha}^{\beta} g = \lim_{j \to \infty} \int_{\alpha}^{\beta} g_{j} = \lim_{j \to \infty} \int_{(\alpha,\beta)} g_{j} d\lambda_{1} = \int_{(\alpha,\beta)} g d\lambda_{1} . \]

(ii) 我们固定 $ c \in (a,b) $ 并选取 $ (c,b) $ 中的序列 $ (\beta_{j}) $ 使得 $ \beta_{j} \uparrow b $。我们还设\footnote{此处及类似情形中，我们把 $ \chi_{[c,b)}f $ 视为 $ \mathbb{R} $ 上的函数。写成 $ \chi_{[c,b)}\widetilde{f} $ 会更精确，但很繁琐。}

\[ g := \chi_{[c,b)}f , \quad g_{j} := \chi_{[c,\beta_{j}]}f \quad \text{对 } j \in \mathbb{N} . \]

由 (i)，$ (g_{j}) $ 是 $ \mathcal{L}_{1}(\mathbb{R},E) $ 中的序列。显然 $ (g_{j}) $ 逐点收敛于 $ g $，且 $ (|g_{j}|) $ 是递增序列收敛于 $ |g| $。因此 $ g $ 可测。由 (i) 可得

\[ \int_{\mathbb{R}} |g_{j}| d\lambda_{1} = \int_{(c,\beta_{j})} |f| d\lambda_{1} = \int_{c}^{\beta_{j}} |f| , \]

而 $ \int_{c}^{b} f $ 的绝对收敛性蕴含

\[ \lim_{j \to \infty} \int_{\mathbb{R}} |g_{j}| d\lambda_{1} = \lim_{j \to \infty} \int_{c}^{\beta_{j}} |f| = \int_{c}^{b} |f| . \tag{5.2} \]

另一方面，单调收敛定理表明

\[ \int_{\mathbb{R}} |g| d\lambda_{1} = \lim_{j \to \infty} \int_{\mathbb{R}} |g_{j}| d\lambda_{1} , \]

且由 (5.2) 看出 $ g $ 属于 $ \mathcal{L}_{1}(\mathbb{R},E) $。因此我们可以对序列 $ (g_{j}) $ 应用控制收敛定理，得到

\[ \lim_{j \to \infty} \int_{\mathbb{R}} g_{j} d\lambda_{1} = \int_{\mathbb{R}} g d\lambda_{1} = \int_{[c,b)} f d\lambda_{1} \]

在 $ E $ 中成立。进一步地，由 (i) 得

\[ \int_{\mathbb{R}} g_{j} d\lambda_{1} = \int_{[c,\beta_{j})} f d\lambda_{1} = \int_{c}^{\beta_{j}} f , \]

从而由命题 VI.8.7，

\[ \lim_{j \to \infty} \int_{\mathbb{R}} g_{j} d\lambda_{1} = \lim_{j \to \infty} \int_{c}^{\beta_{j}} f = \int_{c}^{b} f \]

在 $ E $ 中成立。于是极限 $ \int_{[c,b)} f d\lambda_{1} $ 与 $ \int_{c}^{b} f $ 相等。以类似方式，我们证明 $ \chi_{(a,c]}f $ 属于 $ \mathcal{L}_{1}(\mathbb{R},E) $ 且 $ \int_{(a,c]} f d\lambda_{1} = \int_{a}^{c} f $。这表明 $ f $ 勒贝格可积，且 $ \int_{(a,b)} f d\lambda_{1} = \int_{a}^{b} f $。■

5.4 推论 对 $ -\infty < a < b < \infty $，有 $ \mathcal{S}([a,b],E) \hookrightarrow \mathcal{L}_{1}([a,b],E) $ 且

\[ \int_{[a,b]} f d\lambda_{1} = \int_{a}^{b} f \quad \text{对 } f \in \mathcal{S}([a,b],E) . \]

证明 这由定理 5.3 与命题 VI.8.3 推出。■

5.5 注 固定 $ a,b \in \mathbb{R} $ 且 $ a < b $。

(a) 设 $ f: (a,b) \to E $ 可容许且 $ \int_{a}^{b} f $ 作为反常积分存在。则 $ f $ 不必属于 $ \mathcal{L}_{1}((a,b),E) $。

证明 我们通过下式定义 $ f: \mathbb{R} \to \mathbb{R} $：

\[ f(x) := \begin{cases} 0 & \text{若 } x \in (-\infty,0), \\ (-1)^{j}/j & \text{若 } x \in [j-1,j), \text{ 其中 } j \in \mathbb{N}^{\times} . \end{cases} \]

显然 $ f $ 可容许，且 $ \int_{-\infty}^{\infty} f $ 在 $ \mathbb{R} $ 中存在，因为

\[ \int_{-\infty}^{\infty} f = \sum_{j=1}^{\infty} (-1)^{j}/j . \]

若 $ f $ 属于 $ \mathcal{L}_{1}(\mathbb{R}) $，则应有 $ \int_{\mathbb{R}} |f| d\lambda_{1} < \infty $，这与单调收敛定理矛盾，该定理给出

\[ \int_{\mathbb{R}} |f| d\lambda_{1} = \lim_{k \to \infty} \int_{\mathbb{R}} \chi_{[0,k]}|f| d\lambda_{1} = \lim_{k \to \infty} \sum_{j=1}^{k} 1/j = \infty . \quad \text{■} \]

(b) 设 $ f: (a,b) \to E $ 可容许且 $ f $ 属于 $ \mathcal{L}_{1}((a,b),E) $。则 $ f $ 绝对可积，且

\[ \int_{(a,b)} f d\lambda_{1} = \int_{a}^{b} f \quad \text{在 } E \text{ 中} . \]

证明 取 $ c \in (a,b) $，并设 $ (a,c) $ 中的序列 $ (\alpha_{j}) $ 满足 $ \alpha_{j} \to a $。又设 $ f_{j} := \chi_{[\alpha_{j},c]}f $。则 $ (f_{j}) $ 逐点收敛于 $ \chi_{(a,c]}f $，且对 $ j \in \mathbb{N} $ 有 $ |f_{j}| \le |f| $。由于 $ f $ 可容许，命题 VI.4.3 表明 $ |f|[\alpha_{j},c] $ 属于 $ \mathcal{S}([\alpha_{j},c],\mathbb{R}) $。因此由推论 5.4 与控制收敛定理，

\[ \int_{\alpha_{j}}^{c} |f| = \int_{[\alpha_{j},c]} |f| d\lambda_{1} \to \int_{(a,c]} |f| d\lambda_{1} . \]

因此 $ \int_{a}^{c} |f| $ 存在。类似地，我们证明 $ \int_{c}^{b} |f| $ 存在，从而 $ \int_{a}^{b} f $ 绝对收敛。第二个论断现在由定理 5.3 推出。■

设 $ f \in \mathcal{L}_{1}((a,b),E) $。注 5.5(b) 表明，此时若把 $ \int_{(a,b)} f d\lambda_{1} $ 记为 $ \int_{a}^{b} f $ 或 $ \int_{a}^{b} f(x) dx $，不会产生误解。今后在 n 维情形我们通常写

\[ \int_{X} f dx := \int_{X} f d\lambda_{n} . \]

定理 5.3 及其推论使我们能够把第二卷中发展出来的积分方法移植到勒贝格理论的框架中。结合定理 3.14 的可积性判别准则与控制收敛定理，这些方法为证明积分的存在性提供了十分有效的工具。在本章余下的各节中，当我们建立“多维”积分的具体计算程序时，这一点将变得清楚。

##### 黎曼可积函数的一个刻画

定理 5.3 表明勒贝格积分是柯西–黎曼积分的扩充。我们现在刻画黎曼可积函数，并证明这一扩充是真扩充。

5.6 定理 设 $ I $ 是紧区间，$ f: I \to \mathbb{K} $ 有界。则 $ f $ 黎曼可积当且仅当它 $ \lambda_{1} $-几乎处处连续。此时 $ f $ 勒贝格可积，且黎曼积分与勒贝格积分相等。

证明 (i) 不失一般性，可以假设 $ \mathbb{K} = \mathbb{R} $ 且 $ I := [0,1] $。对 $ k \in \mathbb{N} $，设 $ \mathfrak{Z}_{k} := (\xi_{0,k},\ldots,\xi_{2^{k},k}) $ 是 $ [0,1] $ 的划分，其中 $ \xi_{j,k} := j2^{-k} $，$ j = 0,\ldots,2^{k} $。又设

\[ I_{0,k} := [\xi_{0,k},\xi_{1,k}] , \quad I_{j,k} := (\xi_{j,k},\xi_{j+1,k}] \quad \text{对 } j = 1,\ldots,2^{k}-1 . \]

最后，令 $ \alpha_{j,k} := \inf_{x \in \overline{I}_{j,k}} f(x) $，$ \beta_{j,k} := \sup_{x \in \overline{I}_{j,k}} f(x) $，以及

\[ g_{k} := \sum_{j=0}^{2^{k}-1} \alpha_{j,k}\chi_{I_{j,k}} , \quad h_{k} := \sum_{j=0}^{2^{k}-1} \beta_{j,k}\chi_{I_{j,k}} \quad \text{对 } k \in \mathbb{N} . \]

则 $ (g_{k}) $ 是 $ \lambda_{1} $-简单函数的递增序列，$ (h_{k}) $ 是 $ \lambda_{1} $-简单函数的递减序列。因此它们的逐点极限 $ g := \lim_{k} g_{k} $ 与 $ h := \lim_{k} h_{k} $ 有定义且 $ \lambda_{1} $-可测，并且 $ g \le f \le h $。此外有

\[ \int_{[0,1]} g_{k} d\lambda_{1} = \underline{S}(f,k) \quad \text{和} \quad \int_{[0,1]} h_{k} d\lambda_{1} = \overline{S}(f,k) , \]

其中 $ \underline{S}(f,k) $ 与 $ \overline{S}(f,k) $ 表示 $ f $ 在 $ [0,1] $ 上关于划分 $ \mathfrak{Z}_{k} $ 的下和与上和（见习题 VI.3.7）。用 $ \underline{\int} f $ 与 $ \overline{\int} f $ 记 $ f $ 在 $ [0,1] $ 上的下、上黎曼积分，则由单调收敛定理得

\[ \int_{[0,1]} (h-g) d\lambda_{1} = \overline{\int} f - \underline{\int} f . \tag{5.3} \]

(ii) 设 $ R := \bigcup_{k \in \mathbb{N}} \{\xi_{0,k},\ldots,\xi_{2^{k},k}\} $ 是区间 $ I_{j,k} $ 的端点集。设 $ C $ 是 $ f $ 的连续点集。则

\[ [g = h] \cap R^{c} \subset C \subset [g = h] . \tag{5.4} \]

为看出这一点，取 $ \varepsilon > 0 $。先设 $ x_{0} \in R^{c} $ 且 $ g(x_{0}) = h(x_{0}) $。可以找到 $ k \in \mathbb{N} $ 使 $ h_{k}(x_{0}) - g_{k}(x_{0}) < \varepsilon $，以及 $ j \in \{0,\ldots,2^{k}-1\} $ 使 $ x_{0} $ 落在区间 $ (\xi_{j,k},\xi_{j+1,k}) $ 内。于是对 $ x \in I_{j,k} $ 有

\[ |f(x) - f(x_{0})| \le \sup_{y \in \overline{I}_{j,k}} f(y) - \inf_{y \in \overline{I}_{j,k}} f(y) = h_{k}(x_{0}) - g_{k}(x_{0}) < \varepsilon , \]

这证明了 $ f $ 在 $ x_{0} $ 处的连续性。

现设 $ x_{0} \in C $。取 $ \delta > 0 $ 使得对 $ x \in [x_{0}-\delta,x_{0}+\delta] \cap [0,1] $ 有 $ |f(x) - f(x_{0})| < \varepsilon/2 $。选取 $ k_{0} \in \mathbb{N} $ 使 $ 2^{-k_{0}} \le \delta $，并对每个 $ k \ge k_{0} $ 取 $ j \in \{0,\ldots,2^{k}-1\} $ 使 $ x_{0} \in I_{j,k} \subset [x_{0}-\delta,x_{0}+\delta] $。则

\[ 0 \le h_{k}(x_{0}) - g_{k}(x_{0}) = \sup_{x \in \overline{I}_{j,k}} (f(x) - f(x_{0})) - \inf_{x \in \overline{I}_{j,k}} (f(x) - f(x_{0})) < \varepsilon . \]

由此得 $ h(x_{0}) - g(x_{0}) = \lim_{k} (h_{k}(x_{0}) - g_{k}(x_{0})) = 0 $。这证明了 (5.4)。
