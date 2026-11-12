约定 设 $ p \in \{0\} \cup [1, \infty] $。则我们把 $ L_p(X, \mu, E) $ 中的陪集 $ [f] = f + \mathcal{N} $ 写作 $ f $，并把彼此 $ \mu $-几乎处处相等的函数等同起来。此外，若 $ p \in [1, \infty] $，我们用 $ \|\cdot\|_p $ 表示 $ L_p(X, \mu, E) $ 中的范数，并令

\[ L_p(X, \mu, E) := (L_p(X, \mu, E), \|\cdot\|_p) \qquad \text{对 } p \in [1, \infty] . \]

4.9 注 (a) 对 $ f \in L_0(X, \mu, E) $ 与 $ x \in X $，若 $ \mu $ 有非空零集，则 $ f(x) $ 无定义。也就是说，$ L_0(X, \mu, E) $ 的元素不能“逐点求值”。（当然，若选取 $ f $ 的一个代表元 $ f^{*} $，则 $ f^{*}(x) $ 有定义。）

(b) 对 $ p \in [1, \infty] $，

\[ L_p(X, \mu, E) = \{ f \in L_0(X, \mu, E) ; \|f\|_p < \infty \} . \]

证明 “$ \subseteq $” 设 $ f \in L_p(X, \mu, E) $。$ f $ 的任一代表元 $ f^{*} $ 属于 $ \mathcal{L}_p(X, \mu, E) $，即它 $ \mu $-可测且满足 $ \|f^{*}\|_p < \infty $。因此 $ f $ 属于 $ L_0(X, \mu, E) $，且 $ \|f\|_p < \infty $。

“$ \supseteq $” 设 $ f \in L_0(X, \mu, E) $ 满足 $ \|f\|_p < \infty $。$ f $ 的每个代表元 $ f^{*} $ 都 $ \mu $-可测，且 $ \|f\|_p = \|f^{*}\|_p < \infty $。因此 $ f^{*} $ 属于 $ \mathcal{L}_p(X, \mu, E) $，从而 $ f $ 属于 $ L_p(X, \mu, E) $。■

(c) 设 $ f, g \in L_0(X, \mu, \mathbb{R}) $，并令 $ f^{*}, g^{*} $ 为 $ f, g $ 的代表元。若我们写

\[ f \le g :\iff f^{*} \le g^{*} \quad \mu\text{-几乎处处} , \]

就得到 $ L_0(X, \mu, \mathbb{R}) $ 上一个良定义的序 $ \le $，它使该空间成为向量格。

证明 我们把这一简单证明留作习题。■

(d) 设 $ (F, \le) $ 是向量格，$ (F, \|\cdot\|) $ 是巴拿赫空间。若 $ |x| \le |y| $ 蕴含 $ \|x\| \le \|y\| $，则称 $ (F, \le, \|\cdot\|) $ 为**巴拿赫格**。

(e) 对每个 $ p \in [1, \infty] $，$ (L_p(X, \mu, \mathbb{R}), \le, \|\cdot\|_p) $ 都是巴拿赫格。

证明 显然 $ L_p(X, \mu, \mathbb{R}) $ 是 $ L_0(X, \mu, \mathbb{R}) $ 的向量子格。此外，由积分的单调性以及映射 $ t \mapsto t^p $ 的单调性立即推出，在 $ p \in [1, \infty) $ 的情形 $ L_p(X, \mu, \mathbb{R}) $ 是巴拿赫格。

设 $ f, g \in L_\infty(X, \mu, \mathbb{R}) $ 满足 $ |f| \le |g| $，并令 $ f^{*}, g^{*} $ 为它们的代表元。则 $ |f^{*}| \le |g^{*}| $ $ \mu $-几乎处处。此外，注 4.1(b) 表明 $ |g^{*}| \le \|g\|_\infty $ $ \mu $-几乎处处。因此 $ |f^{*}| \le \|g\|_\infty $ $ \mu $-几乎处处，从而 $ \|f\|_\infty \le \|g\|_\infty $。■

4.10 定理

(i) 对每个 $ p \in [1, \infty] $，$ L_p(X, \mu, E) $ 是巴拿赫空间。

(ii) 若 $ H $ 是希尔伯特空间，则 $ L_2(X, \mu, H) $ 关于内积

\[ (\cdot|\cdot)_2 : L_2(X, \mu, H) \times L_2(X, \mu, H) \to \mathbb{K} , \quad (f, g) \mapsto \int_X (f|g)_H \, d\mu . \]

也是希尔伯特空间。

证明 (i) 设 $ p \in [1, \infty] $。我们已经知道 $ L_p(X, \mu, E) $ 是赋范向量空间。设 $ (f_j) $ 是 $ L_p(X, \mu, E) $ 中的柯西序列，$ (f_j^{*}) $ 是相应的代表元序列。则 $ (f_j^{*}) $ 是 $ \mathcal{L}_p(X, \mu, E) $ 中的柯西序列。由定理 4.6，存在 $ f^{*} \in \mathcal{L}_p(X, \mu, E) $，使得当 $ j \to \infty $ 时 $ \|f_j^{*} - f^{*}\|_p \to 0 $。令 $ f := f^{*} + \mathcal{N} $，则 $ f \in L_p(X, \mu, E) $ 且 $ \|f_j - f\|_p = \|f_j^{*} - f^{*}\|_p \to 0 $。因此 $ L_p(X, \mu, E) $ 是完备的。

(ii) 利用定理 1.7 的 (i) 与 (iv) 以及赫尔德不等式，我们容易证明 $ (\cdot|\cdot)_2 $ 是 $ L_2(X, \mu, H) $ 上的内积，且对 $ f \in L_2(X, \mu, H) $ 有 $ |(f|f)_2| = \|f\|_2^2 $。于是由 (i) 即得断言。■

4.11 推论 $ L_2(X, \mu, \mathbb{K}) $ 关于内积

\[ (f|g)_2 = \int_X f \bar{g} \, d\mu \qquad \text{对 } f, g \in L_2(X, \mu, \mathbb{K}) . \]

是希尔伯特空间。

##### 具有紧支集的连续函数

设 $ Y $ 是拓扑空间。对 $ f \in E^Y $，我们称

\[ \operatorname{supp}(f) := \overline{\{ x \in Y ; f(x) \ne 0 \}} \]

为 $ f $ 的**支集**。这里照例用横线表示（在 $ Y $ 中的）闭包。具有紧支集的连续函数特别重要。因此我们定义

\[ C_c(Y, E) := \{ f \in C(Y, E) ; \operatorname{supp}(f) \text{ 是紧的} \} . \]

4.12 例 (a) 对例 III.1.3(c) 中的狄利克雷函数 $ \chi_{\mathbb{Q}} \in \mathbb{R}^{\mathbb{R}} $，我们有

\[ \operatorname{supp}(\chi_{\mathbb{Q}}) = \operatorname{supp}(\chi_{\mathbb{R}-\mathbb{Q}}) = \mathbb{R} . \]

证明 这由命题 I.10.8 与 I.10.11 推出。■

(b) 设 $ X = \mathbb{Z} $ 或 $ X = \mathbb{N} $，并为 $ X $ 配备由 $ \mathbb{R} $ 诱导的度量。设 $ \mathcal{H}^0 $ 是 $ \mathfrak{P}(X) $ 上的计数测度。则\footnote{比较例 2.20。}

\[ C_c(X, E) = \mathcal{S}(X, \mathcal{H}^0, E) = \{ \varphi \in E^X ; \operatorname{Num}[\varphi \ne 0] < \infty \} . \]

(c) 设 $ X $ 是度量空间。则 $ C_c(X, E) $ 是 $ BC(X, E) $ 的向量子空间。若 $ X $ 是紧的，则 $ C_c(X, E) = C(X, E) = BC(X, E) $。

证明 第一个断言由推论 III.3.7 推出。第二个由习题 III.3.2 与推论 III.3.7 推出。■

4.13 命题 设 $ X $ 是度量空间，$ A $ 与 $ B $ 是 $ X $ 的闭的、不交的非空子集。则存在 $ \varphi \in C(X) $ 使得 $ 0 \le \varphi \le 1 $，$ \varphi|A = 1 $，且 $ \varphi|B = 0 $。这样的函数称为**乌雷松函数**。

证明 若 $ D \subset X $ 非空，例 III.1.3(l) 表明距离函数 $ d(\cdot, D) $ 属于 $ C(X) $。若 $ D $ 还是闭的，则 $ d(x, D) = 0 $ 当且仅当 $ x \in D $。利用这些性质，我们容易证明由

\[ \varphi(x) := \frac{d(x, B)}{d(x, A) + d(x, B)} \qquad \text{对 } x \in X , \]

定义的函数具有所述性质。■

借助乌雷松函数，我们现在可以证明一个重要的逼近定理。

4.14 定理 设 $ X $ 是 $ \sigma $-紧度量空间，$ \mu $ 是 $ X $ 上的拉东测度。则对 $ p \in [1, \infty) $，$ C_c(X, E) $ 是 $ \mathcal{L}_p(X, \mu, E) $ 的稠密向量子空间。

证明 设 $ \varepsilon > 0 $。根据命题 4.8，$ \mathcal{S}(X, \mu, E) $ 在 $ \mathcal{L}_p(X, \mu, E) $ 中稠密。因此，由于定理 1.17 与闵可夫斯基不等式（即三角不等式），只需验证：对每个具有有限测度的 $ \mu $-可测集 $ A $ 与每个 $ e \in E \setminus \{0\} $，存在 $ f \in C_c(X, E) $ 使得 $ \|f - \chi_A e\|_p < \varepsilon $。

于是设 $ A \in \mathcal{A} $ 且 $ \mu(A) < \infty $。因为 $ \mu $ 是正则的，我们可以找到 $ X $ 的紧子集 $ K $ 与开子集 $ U $，使得 $ K \subset A \subset U $ 且

\[ \mu(U \setminus K) = \mu(U) - \mu(K) < (\varepsilon/|e|)^p . \]

命题 4.13 保证存在 $ X $ 上的乌雷松函数 $ \varphi $，满足 $ \varphi|K = 1 $ 且 $ \varphi|U^c = 0 $。令 $ f := \varphi e $，我们得到所需的

\[ \|\chi_A e - f\|_p^p \le |e|^p \int_X \chi_{U \setminus K} \, d\mu \le |e|^p \mu(U \setminus K) < \varepsilon^p . \quad \blacksquare \]

##### 嵌入

设 $ X $ 与 $ Y $ 是拓扑空间，且 $ X $ 是 $ Y $ 的子集。用 $ j : X \to Y $，$ x \mapsto x $ 表示 $ X $ 到 $ Y $ 的包含映射\footnote{见例 I.3.2(b)。}，我们说 $ X $ **连续嵌入** $ Y $，若 $ j $ 是连续的\footnote{当 $ X $ 未配备 $ Y $ 诱导的拓扑时，这些概念变得重要；见注 4.15(a)。}。在这种情形，我们写 $ X \hookrightarrow Y $。若 $ X $ 还是 $ Y $ 的稠密子集，我们写 $ X \overset{d}{\hookrightarrow} Y $。若 $ X $ 与 $ Y $ 是向量空间，则记号 $ X \hookrightarrow Y $（以及术语“连续嵌入”）将总是指：除此之外，$ X $ 还是 $ Y $ 的向量子空间，而不仅仅是某个任意子集。

4.15 注 (a) 设 $ V $ 与 $ W $ 是赋范向量空间。$ V $ 连续嵌入 $ W $ 当且仅当 $ V $ 是 $ W $ 的向量子空间，且存在 $ \alpha > 0 $ 使得对 $ v \in V $ 有 $ \|v\|_W \le \alpha \|v\|_V $，也就是说，$ V $ 的范数比 $ W $ 在 $ V $ 上诱导的范数更强。

若 $ V $ 携带 $ W $ 诱导的范数，则总有 $ V \hookrightarrow W $。

(b) 设 $ X $ 在 $ \mathbb{R}^n $ 中是开的。则

\[ BUC^k(X, E) \hookrightarrow BUC^\ell(X, E) \qquad \text{对 } k \ge \ell . \]

若 $ X $ 还是有界的，则

\[ BUC^k(X, \mathbb{K}) \overset{d}{\hookrightarrow} BUC(X, \mathbb{K}) \qquad \text{对 } k \in \mathbb{N} . \]

证明 第一个断言是显然的。第二个由斯通-魏尔斯特拉斯逼近定理（推论 V.4.8）以及应用 VI.2.2 推出。■

简单的例子（见习题 5.1）表明，勒贝格空间一般并不互相包含。在对测度空间 $ (X, \mathcal{A}, \mu) $ 作适当的附加假设后，勒贝格空间之间存在连续嵌入。例如，若 $ \mathcal{H}^0 $ 是 $ \mathfrak{P}(\mathbb{N}) $ 上的计数测度，则习题 1.16 中引入的空间 $ \ell_p $ 与 $ \mathcal{L}_p(\mathbb{N}, \mathcal{H}^0, \mathbb{K}) $ 一致（$ 1 \le p \le \infty $），并且我们有嵌入

\[ \ell_1 \hookrightarrow \ell_p \hookrightarrow \ell_q \hookrightarrow \ell_\infty \qquad \text{对 } 1 \le p \le q \le \infty , \]

（见习题 11）。

有限测度空间呈现出完全不同的情形：

4.16 定理 设 $ (X, \mathcal{A}, \mu) $ 是有限完备测度空间。则

\[ L_q(X, \mu, E) \overset{d}{\hookrightarrow} L_p(X, \mu, E) \qquad \text{对 } 1 \le p < q \le \infty \]

且

\[ \|f\|_p \le \mu(X)^{1/p-1/q} \|f\|_q \qquad \text{对 } f \in L_q(X, \mu, E) . \tag{4.5} \]

证明 (i) 取 $ f \in L_q(X, \mu, E) $ 并令 $ r := q/p $。设 $ g \in \mathcal{L}_q(X, \mu, E) $ 是 $ f $ 的代表元。则 $ |g|^p $ 属于 $ \mathcal{L}_r(X, \mu, \mathbb{R}) $，且 $ 1/r' = (q-p)/q $。此外 $ \chi_X $ 属于 $ \mathcal{L}_{r'}(X, \mu, \mathbb{R}) $，因为 $ \mu $ 是有限测度。于是在 $ q < \infty $ 的情形，赫尔德不等式给出

\[ \|g\|_p^p = \int_X \chi_X |g|^p \, d\mu \le \left( \int_X \chi_X^{r'} \, d\mu \right)^{1/r'} \left( \int_X |g|^{pr} \, d\mu \right)^{1/r} = \mu(X)^{(q-p)/q} \|g\|_q^p , \]

并且我们得到 $ \|g\|_p \le \mu(X)^{1/p-1/q} \|g\|_q $；这显然在 $ q = \infty $ 的情形也成立。由于 $ g $ 是 $ f $ 的任意代表元，我们看到 $ f $ 属于 $ L_p(X, \mu, E) $ 且 (4.5) 成立。由注 4.15(a) 推出 $ L_q(X, \mu, E) \hookrightarrow L_p(X, \mu, E) $。

(ii) $ M := \{ [\varphi] \in L_0(X, \mu, E) ; \varphi \in \mathcal{S}(X, \mu, E) \} $ 满足 $ M \subset L_q(X, \mu, E) $，且由于 $ p < \infty $，命题 4.8 蕴含 $ M $ 在 $ L_p(X, \mu, E) $ 中稠密。因此 $ L_q(X, \mu, E) $ 在 $ L_p(X, \mu, E) $ 中也稠密。■

下一个定理表明，在 massive 拉东测度 $ \mu $ 的情形，$ L_0(X, \mu, E) $ 的元素至多有一个连续代表元。于是在这种情形，我们可以把 $ C(X, E) $ 中的每个函数与它在 $ L_0(X, \mu, E) $ 中生成的等价类等同起来，并把 $ C(X, E) $ 看作 $ L_0(X, \mu, E) $ 的向量子空间。

4.17 命题 设 $ \mu $ 是 $ \sigma $-紧空间 $ X $ 上的 massive 拉东测度。则映射

\[ C(X, E) \to L_0(X, \mu, E) , \quad f \mapsto [f] \tag{4.6} \]

是线性的且是单射。

证明 定理 1.17 表明映射 (4.6) 是良定义的且线性的。

取 $ f, g \in C(X, E) $ 使得 $ [f] = [g] $。存在 $ h \in \mathcal{N} $ 使得 $ f - g = h $，即 $ f - g = 0 $ $ \mu $-几乎处处。反设对某个 $ x \in X $ 有 $ f(x) \ne g(x) $。由连续性，$ (f - g)(y) \ne 0 $ 对 $ x $ 的某个开邻域 $ U $ 中的所有 $ y $ 成立。但 $ \mu(U) > 0 $，与 $ f - g = 0 $ $ \mu $-几乎处处的假设矛盾。因此 $ f = g $，这证明了所说的单射性。■

约定 设 $ \mu $ 是 $ \sigma $-紧空间 $ X $ 上的 massive 拉东测度。我们把 $ C(X, E) $ 与它在单射 (4.6) 下的像等同起来，从而把 $ C(X, E) $ 看作 $ L_0(X, \mu, E) $ 的向量子空间。则

\[ \|f\|_{B(X,E)} = \|f\|_\infty \qquad \text{对 } f \in BC(X, E) . \]

下述结果是这一约定的一个简单推论。

4.18 定理 设 $ \mu $ 是 $ \sigma $-紧度量空间 $ X $ 上的 massive 拉东测度。

(i) 对每个 $ p \in [1, \infty) $，$ C_c(X, E) $ 是 $ L_p(X, \mu, E) $ 的稠密向量子空间。

(ii) $ BC(X, E) $ 是 $ L_\infty(X, \mu, E) $ 的闭向量子空间。

证明 第一个断言由定理 4.14 推出。第二个是显然的。■

##### $ L_p $ 上的连续线性泛函

本节余下部分，我们对 $ p \in [1, \infty] $ 使用缩写

\[ L_p(X) := L_p(X, \mu, \mathbb{K}) \quad \text{与} \quad L'_p(X) := (L_p(X))' , \]

右边的撇号表示对偶空间（注 VII.2.13(a)）。由赫尔德不等式推出，对每个 $ f \in L_{p'}(X) $，映射

\[ T_f : L_p(X) \to \mathbb{K} , \quad g \mapsto \int_X fg \, d\mu \]

是 $ L_p(X) $ 上的连续线性泛函，即 $ L'_p(X) $ 的元素；它满足

\[ \|T_f\|_{L'_p(X)} \le \|f\|_{p'} . \tag{4.7} \]

事实上 (4.7) 中等号成立：

4.19 命题 映射

\[ T : L_{p'}(X) \to L'_p(X) , \quad f \mapsto T_f \]

对每个 $ p \in [1, \infty] $ 都是线性等距。

证明 (i) 显然 $ T $ 是线性的。此外，鉴于 (4.7)，我们只需证明：对每个满足 $ f \ne 0 $ 的 $ f \in L_{p'}(X) $ 与每个 $ \varepsilon > 0 $，存在 $ g \in L_p(X) $ 使得

\[ \|g\|_p = 1 \quad \text{且} \quad \|f\|_{p'} < \left| \int_X fg \, d\mu \right| + \varepsilon . \]

(ii) 先设 $ p \in (1, \infty) $，从而 $ p' \in (1, \infty) $。因此

\[ g := \overline{\operatorname{sign} f} \, \|f\|_{p'}^{1-p'} |f|^{p'-1} \]

是良定义的且 $ \mu $-可测（见习题 1.19 与定理 1.7(i)）。此外

\[ \int_X |g|^p \, d\mu = \|f\|_{p'}^{p(1-p')} \int_X |f|^{p(p'-1)} \, d\mu = \|f\|_{p'}^{-p'} \|f\|_{p'}^{p'} = 1 \]

且 $ fg = \|f\|_{p'}^{1-p'} |f|^{p'} $。因此 $ \|f\|_{p'} = \int_X fg \, d\mu $。

对 $ p = \infty $，我们令 $ g := \overline{\operatorname{sign} f} $。则

\[ \|g\|_\infty = 1 \quad \text{且} \quad \|f\|_1 = \int_X fg \, d\mu . \]

(iii) 现在设 $ p = 1 $。设 $ 0 < \varepsilon < \|f\|_\infty $ 并令 $ \alpha := \|f\|_\infty - \varepsilon $。因为 $ [\,|f| > \alpha\,] $ 有正测度且 $ \mu $ 是 $ \sigma $-有限的，我们可以找到 $ A \in \mathcal{A} $ 使得 $ A \subset [\,|f| > \alpha\,] $ 且 $ \mu(A) \in (0, \infty) $。因此 $ g := \overline{\operatorname{sign} f} \, (1/\mu(A)) \chi_A $ 是良定义的且 $ \mu $-可测。显然 $ \|g\|_1 = 1 $ 且

\[ \int_X fg \, d\mu = \frac{1}{\mu(A)} \int_A |f| \, d\mu \ge \alpha = \|f\|_\infty - \varepsilon . \]

这就完成了证明。■
