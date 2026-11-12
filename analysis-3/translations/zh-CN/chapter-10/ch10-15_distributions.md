其中常数 $ c(k) $ 与 $ j $ 无关。现在由 $ (D_2) $ 可得 $ \mathcal{A}(\partial)\varphi_j \to 0 $ 在 $ BC^k(X) $ 中成立。因为这对每个 $ k \in \mathbb{N} $ 都成立，我们看到 $ \mathcal{A}(\partial)\varphi_j \to 0 $ 在 $ \mathcal{D}(X) $ 中成立。这就证明了 $ \mathcal{D}\mathrm{iffop}_m(X) \subset \mathcal{L}(\mathcal{D}(X)) $。其余断言是显然的。 ■

设 $ (\cdot \mid \cdot) $ 表示 $ L_2(X) $ 中的内积，并设 $ \mathcal{A}(\partial) $ 属于 $ \mathcal{D}\mathrm{iffop}(X) $。若存在微分算子 $ \mathcal{A}^{\sharp}(\partial) \in \mathcal{D}\mathrm{iffop}(X) $ 使得

\[ (\mathcal{A}(\partial)u \mid v) = (u \mid \mathcal{A}^{\sharp}(\partial)v) \qquad \text{对 } u, v \in \mathcal{D}(X) , \]

我们就说 $ \mathcal{A}^{\sharp}(\partial) $ 是 $ \mathcal{A}(\partial) $ 的 **形式伴随**。因为

\[ (u \mid \mathcal{A}^{\sharp}(\partial)v) = \int_X u\,\overline{\mathcal{A}^{\sharp}(\partial)v}\, dx \]

且对 $ v \in \mathcal{D}(X) $ 有 $ \overline{\mathcal{A}^{\sharp}(\partial)v} \in \mathcal{D}(X) \subset L_{1,\mathrm{loc}}(X) $，故由定理 7.18 容易推出 $ \mathcal{A}(\partial) $ 至多有一个形式伴随。若 $ \mathcal{A}(\partial) $ 有一个形式伴随 $ \mathcal{A}^{\sharp}(\partial) $ 与它自身相合，则称 $ \mathcal{A}(\partial) $ 是 **形式自伴的**。

下面我们证明每个 $ \mathcal{A}(\partial) \in \mathcal{D}\mathrm{iffop}(X) $ 都有与它形式伴随的微分算子，并导出 $ \mathcal{A}^{\sharp}(\partial) $ 的显式形式。为此先需要下述结果：

7.22 命题（分部积分） 设 $ f \in C^1(X) $ 且 $ g \in C_c^1(X) $，则

\[ \int_X (\partial_j f)g\, dx = -\int_X f\partial_j g\, dx \qquad \text{对 } j \in \{1,\dots,n\} . \]

证明 我们只需考虑 $ j = 1 $ 的情形；由推论 6.10，一般情形可由坐标的置换得到。于是写 $ x = (x_1, x') \in \mathbb{R} \times \mathbb{R}^{n-1} $。由于 $ fg $ 具有紧支集，由分部积分可得

\[ \int_{-\infty}^{\infty} [\partial_1 f(x_1, x')]g(x_1, x')\, dx_1 = -\int_{-\infty}^{\infty} f(x_1, x')\partial_1 g(x_1, x')\, dx_1 \]

对每个 $ x' \in \mathbb{R}^{n-1} $ 成立。由富比尼定理，现在得到

\[ \begin{aligned} \int_X (\partial_1 f)g\, dx &= \int_{\mathbb{R}^n} (\partial_1 f)g\, dx \\ &= \int_{\mathbb{R}^{n-1}} \left( \int_{-\infty}^{\infty} \partial_1 f(x_1, x')g(x_1, x')\, dx_1 \right) dx' \\ &= -\int_{\mathbb{R}^{n-1}} \left( \int_{-\infty}^{\infty} f(x_1, x')\partial_1 g(x_1, x')\, dx_1 \right) dx' \\ &= -\int_{\mathbb{R}^n} f\partial_1 g\, dx = -\int_X f\partial_1 g\, dx . \quad \blacksquare \end{aligned} \]

7.23 推论 设 $ f \in C^k(X) $ 且 $ g \in C_c^k(X) $，则

\[ \int_X (\partial^{\alpha} f)g\, dx = (-1)^{|\alpha|} \int_X f\partial^{\alpha} g\, dx \]

对 $ \alpha \in \mathbb{N}^n $ 且 $ |\alpha| \le k $ 成立。

分部积分也是下一个结果的证明的核心。

7.24 命题 每个微分算子

\[ \mathcal{A}(\partial) = \sum_{|\alpha| \le m} a_\alpha \partial^{\alpha} \in \mathcal{D}\mathrm{iffop}(X) \]

都有唯一的形式伴随，它由下式显式给出：

\[ \mathcal{A}^{\sharp}(\partial)v = \sum_{|\alpha| \le m} (-1)^{|\alpha|}\partial^{\alpha}(\overline{a_\alpha}v) \qquad \text{对 } v \in \mathcal{D}(X) . \tag{7.17} \]

若 $ \mathcal{A}(\partial) $ 的阶为 $ m $，则 $ \mathcal{A}^{\sharp}(\partial) $ 也是 $ m $ 阶微分算子。

证明 我们已经知道形式伴随至多有一个，故只需证明存在性以及 (7.17) 的正确性。

取 $ u, v \in \mathcal{D}(X) $。分部积分给出

\[ \begin{aligned} (\mathcal{A}(\partial)u \mid v) &= \int_X (\mathcal{A}(\partial)u)\overline{v}\, dx = \sum_{|\alpha| \le m} \int_X (a_\alpha \partial^{\alpha} u)\overline{v}\, dx \\ &= \sum_{|\alpha| \le m} (-1)^{|\alpha|} \int_X u\partial^{\alpha}(a_\alpha \overline{v})\, dx = \int_X u\,\overline{\sum_{|\alpha| \le m} (-1)^{|\alpha|}\partial^{\alpha}(\overline{a_\alpha}v)}\, dx . \end{aligned} \]

因此

\[ (\mathcal{A}(\partial)u \mid v) = (u \mid \mathcal{A}^{\sharp}(\partial)v) \qquad \text{对 } u, v \in \mathcal{D}(X) \]

只要 $ \mathcal{A}^{\sharp}(\partial)v $ 如 (7.17) 所定义。由莱布尼茨法则，存在 $ b_\alpha \in C^\infty(X) $（$ \alpha \in \mathbb{N}^n $，$ |\alpha| \le m-1 $）使得

\[ \mathcal{A}^{\sharp}(\partial) = (-1)^m \sum_{|\alpha| = m} \overline{a_\alpha}\partial^{\alpha} + \sum_{|\alpha| \le m-1} b_\alpha \partial^{\alpha} . \]

因此 $ \mathcal{A}^{\sharp}(\partial) $ 属于 $ \mathcal{D}\mathrm{iffop}(X) $。断言至此显然。 ■

对于描述系统时间演化的微分算子，通常把时间当作一个特殊的变量。例如在变量 $ (t, x) \in \mathbb{R} \times \mathbb{R}^n $ 中，我们回忆波动算子 $ \partial_t^2 - \Delta_x $ 与热算子 $ \partial_t - \Delta_x $（见习题 VII.5.10）。另一个例子是**薛定谔算子** $ (1/i)\partial_t - \Delta_x $。这三个算子都是二阶微分算子。

7.25 例 (a) 波动算子与薛定谔算子是形式自伴的。\footnote{这些事实在数学物理中特别重要。}

(b) 热算子的伴随是 $ (\partial_t - \Delta_x)^{\sharp} = -\partial_t - \Delta_x $。因此它不是形式自伴的。

(c) 对 $ \mathcal{A}(\partial) := \partial_t - \sum_{j=1}^n \partial_j $，有 $ \mathcal{A}^{\sharp}(\partial) = -\mathcal{A}(\partial) $。

(d) 设 $ a_{jk}, a_j, a_0 \in C^\infty(X, \mathbb{R}) $ 满足

\[ \sum_{j,k=1}^n \|a_{jk}\|_\infty \ne 0 , \qquad a_{jk} = a_{kj} \qquad \text{对 } j, k \in \{1,\dots,n\} . \]

再定义 $ \mathcal{A}(\partial) \in \mathcal{D}\mathrm{iffop}_2(X) $ 为

\[ \mathcal{A}(\partial)u := \sum_{j,k=1}^n \partial_j(a_{jk}\partial_k u) + \sum_{j=1}^n a_j\partial_j u + a_0 u \qquad \text{对 } u \in \mathcal{D}(X) . \]

这时我们说 $ \mathcal{A}(\partial) $ 是**散度型**算子。\footnote{这种说法的理由将在第 XI.6 节中说明。} 在此情形下，我们有

\[ \mathcal{A}^{\sharp}(\partial)v = \sum_{j,k=1}^n \partial_j(a_{jk}\partial_k v) - \sum_{j=1}^n a_j\partial_j v + \left( a_0 - \sum_{j=1}^n \partial_j a_j \right) v \qquad \text{对 } v \in \mathcal{D}(X) . \]

因此形式伴随也是散度型的，并且 $ \mathcal{A}(\partial) $ 是形式自伴的当且仅当 $ a_j = 0 $（$ j = 1,\dots,n $）。

证明 这由命题 7.22 容易推出。 ■

(e) 拉普拉斯算子 $ \Delta $ 是形式自伴的二阶散度型微分算子。

证明 在 (d) 中取 $ a_{jk} = \delta_{jk} $（克罗内克 δ）即得。 ■

##### 弱导数

现在我们简要说明导数概念可以如何推广，使得在经典意义下不可微的函数也能被赋予某种广义导数。

设 $ X $ 是 $ \mathbb{R}^n $ 中的开集。我们说 $ u \in L_{1,\mathrm{loc}}(X) $ 是**弱可微的**，若存在 $ u_j \in L_{1,\mathrm{loc}}(X) $ 使得

\[ \int_X (\partial_j \varphi)u\, dx = -\int_X \varphi u_j\, dx \qquad \text{对 } \varphi \in \mathcal{D}(X) \text{ 且 } 1 \le j \le n . \tag{7.18} \]

更一般地，若 $ m \ge 2 $ 是整数，我们说 $ u \in L_{1,\mathrm{loc}}(X) $ 在 $ X $ 上是 **m 次弱可微的**，若存在 $ u_\alpha \in L_{1,\mathrm{loc}}(X) $ 使得

\[ \int_X (\partial^{\alpha}\varphi)u\, dx = (-1)^{|\alpha|} \int_X \varphi u_\alpha\, dx \qquad \text{对 } \varphi \in \mathcal{D}(X) , \tag{7.19} \]

对所有满足 $ |\alpha| \le m $ 的 $ \alpha \in \mathbb{N}^n $ 成立。若确是如此，则由定理 7.18 立即推出 $ u_\alpha \in L_{1,\mathrm{loc}}(X) $ 由 $ u $（以及 $ \alpha $）唯一确定。我们称 $ u_\alpha $ 为 **α 阶弱偏导数**，并记 $ \partial^{\alpha} u := u_\alpha $。在 $ m = 1 $ 的情形，我们记 $ \partial_j u := u_j $。这些记号由下面第一条注即可说明其合理性。

7.26 注 (a) 设 $ m \in \mathbb{N}^{\times} $。则每个 $ u \in C^m(X) $ 都是 $ m $ 次弱可微的，且弱导数与经典（或通常）的偏导数一致。

证明 这由推论 7.23 推出。 ■

(b) 设 $ W_{1,\mathrm{loc}}^m(X) $ 为 $ X $ 上所有 $ m $ 次弱可微函数之集。则 $ W_{1,\mathrm{loc}}^m(X) $ 是 $ L_{1,\mathrm{loc}}(X) $ 的向量子空间，且对每个满足 $ |\alpha| \le m $ 的 $ \alpha \in \mathbb{N}^n $，映射

\[ W_{1,\mathrm{loc}}^m(X) \to W_{1,\mathrm{loc}}^{m-|\alpha|}(X) , \qquad u \mapsto \partial^{\alpha} u \]

是定义良好的并且是线性的。

证明 这个简单的证明留给读者作为练习。 ■

(c) 对 $ u \in W_{1,\mathrm{loc}}^m(X) $ 与满足 $ |\alpha| + |\beta| \le m $ 的 $ \alpha, \beta \in \mathbb{N}^n $，有 $ \partial^{\alpha}\partial^{\beta} u = \partial^{\beta}\partial^{\alpha} u $。

证明 这立即由定义方程 (7.19) 以及光滑函数的性质推出。 ■

(d) 设 $ u \in L_{1,\mathrm{loc}}(\mathbb{R}) $ 由 $ u(x) := |x| $（$ x \in \mathbb{R} $）定义。则 $ u $ 是弱可微的，且 $ \partial u = \mathrm{sign} $。

证明 首先，绝对值函数 $ |\cdot| $ 在 $ \mathbb{R}^{\times} $ 上光滑，其导数在 $ \mathbb{R}^{\times} $ 上为 $ \mathrm{sign} $。现在设 $ \varphi \in \mathcal{D}(\mathbb{R}) $。分部积分给出

\[ \begin{aligned} \int_{\mathbb{R}} \varphi' u\, dx &= \int_0^{\infty} \varphi' u\, dx + \int_{-\infty}^0 \varphi' u\, dx \\ &= \varphi(x)x\Big|_0^{\infty} - \int_0^{\infty} \varphi(x)\, dx - \varphi(x)x\Big|_{-\infty}^0 + \int_{-\infty}^0 \varphi(x)\, dx \\ &= -\int_{\mathbb{R}} \varphi(x)\,\mathrm{sign}(x)\, dx . \end{aligned} \]

断言成立，因为 $ \mathrm{sign} $ 属于 $ L_{1,\mathrm{loc}}(\mathbb{R}) $。 ■

(e) 函数 $ \mathrm{sign} $ 属于 $ L_{1,\mathrm{loc}}(\mathbb{R}) $，且在 $ \mathbb{R}^{\times} $ 上光滑。然而它不是弱可微的。因此 (d) 中的绝对值函数不是二次弱可微的。

证明 对 $ \varphi \in \mathcal{D}(\mathbb{R}) $，我们有

\[ \int_{\mathbb{R}} \varphi'\,\mathrm{sign}\, dx = \int_0^{\infty} \varphi'(x)\, dx - \int_{-\infty}^0 \varphi'(x)\, dx = -2\varphi(0) . \tag{7.20} \]

若 $ \mathrm{sign} $ 是弱可微的，则存在 $ v \in L_{1,\mathrm{loc}}(\mathbb{R}) $ 使得

\[ \int_{\mathbb{R}} \varphi v\, dx = 2\varphi(0) \qquad \text{对 } \varphi \in \mathcal{D}(\mathbb{R}) , \]

而这是不成立的：见例 7.19(c)。 ■

用狄拉克分布 $ \delta $ 来说，(7.20) 取下述形式：

\[ \int_{\mathbb{R}} \varphi'\,\mathrm{sign}\, dx = -2\delta(\varphi) \qquad \text{对 } \varphi \in \mathcal{D}(X) . \]

按通常方式把对偶配对记为

\[ \langle \cdot , \cdot \rangle : \mathcal{D}'(X) \times \mathcal{D}(X) \to \mathbb{K} , \]

于是 $ \langle T, \varphi \rangle $ 是连续线性泛函 $ T $ 在元素 $ \varphi $ 处的值；我们有

\[ \langle \mathrm{sign}, \varphi' \rangle = -2\langle \delta, \varphi \rangle \qquad \text{对 } \varphi \in \mathcal{D}(\mathbb{R}) , \tag{7.21} \]

这里我们把 $ \mathrm{sign} \in L_{1,\mathrm{loc}}(\mathbb{R}) $ 与正则分布 $ T_{\mathrm{sign}} \in \mathcal{D}'(X) $ 等同起来，正如定理 7.20 的证明之后所讨论的那样。比较 (7.19) 与 (7.21) 提示下述定义：设 $ S, T \in \mathcal{D}'(X) $，$ \alpha \in \mathbb{N}^n $。若

\[ \langle T, \partial^{\alpha}\varphi \rangle = (-1)^{|\alpha|}\langle S, \varphi \rangle \qquad \text{对 } \varphi \in \mathcal{D}(X) , \]

则称 $ S $ 是 $ T $ 的 **α 阶分布导数**。

在此情形下，$ S $ 显然由 $ T $（以及 $ \alpha $）确定，故可记 $ \partial^{\alpha} T := S $。我们容易看出，每个分布都有任意阶的分布导数，且对每个 $ \alpha \in \mathbb{N}^n $，分布导数

\[ \partial^{\alpha} : \mathcal{D}'(X) \to \mathcal{D}'(X) , \qquad T \mapsto \partial^{\alpha} T \]

是线性映射。\footnote{见习题 13。} 特别地，(7.21) 表明，在分布的意义下，

\[ \partial(\mathrm{sign}) = 2\delta . \]

关于分布理论我们在此不能再深入，但我们想简要介绍索伯列夫空间。设 $ m \in \mathbb{N} $ 且 $ 1 \le p \le \infty $。因为 $ L_p(X) \subset L_{1,\mathrm{loc}}(X) $，所以每个 $ u \in L_p(X) $ 都有任意阶的分布导数。我们令\footnote{若 $ X $ 是 $ \mathbb{R} $ 中的区间，则可以证明 $ W_1^1(X) $ 与习题 5.6 中引入的空间一致。}

\[ W_p^m(X) := \{ u \in L_p(X) ; \partial^{\alpha} u \in L_p(X), |\alpha| \le m \} , \]

其中 $ \partial^{\alpha} $ 表示 $ \alpha $ 阶分布导数。再令

\[ \|u\|_{m,p} := \begin{cases} \left( \sum_{|\alpha| \le m} \|\partial^{\alpha} u\|_p^p \right)^{1/p} , & 1 \le p < \infty , \\ \max_{|\alpha| \le m} \|\partial^{\alpha} u\|_\infty , & p = \infty . \end{cases} \tag{7.22} \]

我们容易验证

\[ W_p^m(X) := (W_p^m(X), \|\cdot\|_{m,p}) \]

是赋范向量空间，称为 $ m $ 阶**索伯列夫空间**。特别地，$ W_p^0(X) = L_p(X) $。

7.27 定理

(i) $ W_p^m(X) $ 连续嵌入 $ L_p(X) $ 中，且 $ u \in L_p(X) $ 属于 $ W_p^m(X) $ 当且仅当 $ u $ 是 $ m $ 次弱可微的并且所有阶数 $ \le m $ 的弱导数都属于 $ L_p(X) $。

(ii) $ W_p^m(X) $ 是巴拿赫空间。

证明 (i) 这是显然的。

(ii) 设 $ (u_j) $ 是 $ W_p^m(X) $ 中的柯西序列。由 (7.22) 立即推出，对每个满足 $ |\alpha| \le m $ 的 $ \alpha \in \mathbb{N}^n $，$ (\partial^{\alpha} u_j)_{j \in \mathbb{N}} $ 是 $ L_p(X) $ 中的柯西序列。由于 $ L_p(X) $ 是完备的，存在唯一的 $ u_\alpha \in L_p(X) $ 使得当 $ j \to \infty $ 时 $ \partial^{\alpha} u_j \to u_\alpha $ 在 $ L_p(X) $ 中成立，且 $ |\alpha| \le m $。我们令 $ u := u_0 $。则由 (7.19) 推出，对所有 $ j \in \mathbb{N} $，

\[ \int_X (\partial^{\alpha}\varphi)u_j\, dx = (-1)^{|\alpha|} \int_X \varphi \partial^{\alpha} u_j\, dx \qquad \text{对 } \varphi \in \mathcal{D}(X) \text{ 且 } |\alpha| \le m . \tag{7.23} \]

由赫尔德不等式，我们推出

\[ \left| \int_X (\partial^{\alpha}\varphi)u_j\, dx - \int_X (\partial^{\alpha}\varphi)u\, dx \right| = \left| \int_X \partial^{\alpha}\varphi(u_j - u)\, dx \right| \le \|\partial^{\alpha}\varphi\|_{p'} \|u_j - u\|_p , \]

这表明

\[ \int_X (\partial^{\alpha}\varphi)u_j\, dx \to \int_X (\partial^{\alpha}\varphi)u\, dx \qquad \text{对 } \varphi \in \mathcal{D}(X) . \]

类似地，我们得到

\[ \int_X \varphi \partial^{\alpha} u_j\, dx \to \int_X \varphi u_\alpha\, dx \qquad \text{对 } \varphi \in \mathcal{D}(X) . \]
