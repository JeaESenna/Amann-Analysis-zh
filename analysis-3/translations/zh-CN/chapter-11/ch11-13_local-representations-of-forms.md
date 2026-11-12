(c) 对 $ p \in U $，我们有 $ T_{p}M $ 的基 $ (\partial_{1}|_{p},\ldots,\partial_{m}|_{p}) $ 以及 $ \mathcal{V}(U) $ 的模基 $ (\partial_{1},\ldots,\partial_{m}) $。$ U $ 上的向量场 $ v $ 属于 $ \mathcal{V}(U) $ 当且仅当基表示

\[ v = \sum_{j=1}^{m} v^{j}\partial_{j} \]

的系数 $ v^{j} $ 全都属于 $ \mathcal{E}(U) $。

证明 第一个断言由注 VII.10.5 以及边界点处切空间的定义推出。第二个断言是

\[ \varphi_{\ast}v = \varphi_{\ast}\left(\sum_{j=1}^{m} v^{j}\partial_{j}\right) = \sum_{j=1}^{m}(\varphi_{\ast}v^{j})\varphi_{\ast}\partial_{j}, \]

以及 (b)、注 VIII.3.3(c) 的推论。■

(d)（正则性）设 $ k \in \mathbb{N} $，并设 $ M $ 是 $ C^{k+1} $ 流形。此时 $ (\partial_{1},\ldots,\partial_{m}) $ 是 $ \mathcal{V}^{k}(U) $ 的 $ C^{k}(U) $ 模基。$ U $ 上的向量场 $ v $ 属于 $ \mathcal{V}^{k}(U) $ 当且仅当它关于该基表示的系数属于 $ C^{k}(U) $。■

##### 微分形式

为推广 $ \mathbb{R}^{m} $ 的开子集 $ X $ 的余切空间 $ T_{p}^{\ast}X $ 与余切丛 $ T^{\ast}X $，我们现在定义 $ M $ 在点 $ p $ 处的**余切空间**

\[ T_{p}^{\ast}M := (T_{p}M)^{\ast} = \mathcal{L}(T_{p}M,\mathbb{R}). \]

我们定义 $ M $ 的**余切丛**

\[ T^{\ast}M := \bigcup_{p\in M} T_{p}^{\ast}M. \]

我们记

\[ \langle\cdot,\cdot\rangle_{p} : T_{p}^{\ast}M\times T_{p}M\to\mathbb{R} \qquad \text{对 } p\in M \]

为对偶配对\footnote{参见第 VIII.3 节。}，并同样把

\[ \langle\cdot,\cdot\rangle : T^{\ast}M\times TM\to\mathcal{E}(M), \qquad (\alpha,v)\mapsto[p\mapsto\langle\alpha(p),v(p)\rangle_{p}] \]

称为**对偶配对**。

由于 $ T_{p}M $ 是 $ m $ 维向量空间，$ T_{p}^{\ast}M $ 也是。因此，对 $ r\in\mathbb{N} $ 与 $ p\in M $，$ T_{p}^{\ast}M $ 的 $ r $ 重外积 $ \bigwedge^{r}T_{p}^{\ast}M $ 与 格拉斯曼代数

\[ \bigwedge T_{p}^{\ast}M = \bigoplus_{r\ge 0}\bigwedge^{r}T_{p}^{\ast}M \]

都得以定义。

为扩展上一节引入的概念，我们定义 $ M $ 上的**交错 r 形式丛**

\[ \bigwedge^{r}T^{\ast}M := \bigcup_{p\in M}\bigwedge^{r}T_{p}^{\ast}M. \]

我们定义 $ M $ 的**格拉斯曼丛**

\[ \bigwedge T^{\ast}M := \bigcup_{p\in M}\bigwedge T_{p}^{\ast}M. \]

于是 $ M $ 上的**微分形式**是一个映射

\[ \alpha : M\to\bigwedge T^{\ast}M \qquad \text{其中 } \alpha(p)\in\bigwedge T_{p}^{\ast}M \text{ 对 } p\in M, \]

也就是说，它是格拉斯曼丛的一个截面。若 $ \alpha(M)\subset\bigwedge^{r}T^{\ast}M $，则它有**次数 r**（或称它是一个 **r 形式**）。有时我们称 1 形式为**普法夫形式**。

若 $ \alpha $ 与 $ \beta $ 是 $ M $ 上的微分形式，则**和** $ \alpha+\beta $ 与**外积**\footnote{符号 $ \wedge $ 也称为楔积。} $ \alpha\wedge\beta $ 逐点定义：

\[ (\alpha+\beta)(p) := \alpha(p)+\beta(p) \quad \text{且 } \alpha\wedge\beta(p) := \alpha(p)\wedge\beta(p) \qquad \text{对 } p\in M. \]

若 $ \alpha $ 是 $ M $ 上的 r 形式，则它对向量场的作用也逐点定义：

\[ \alpha(v_{1},\ldots,v_{r})(p) := \alpha(p)\big(v_{1}(p),\ldots,v_{r}(p)\big) \qquad \text{对 } p\in M \text{ 且 } v_{1},\ldots,v_{r}\in\mathcal{V}(M). \]

最后，设 $ \varphi\in C^{1}(M,N) $，$ \beta $ 是 $ N $ 上的微分形式。则 $ \beta $ 沿 $ \varphi $ 的**拉回**同样逐点定义：

\[ \varphi^{\ast}\beta(p) := (T_{p}\varphi)^{\ast}\beta\big(\varphi(p)\big) \qquad \text{对 } p\in M. \]

显然 $ \varphi^{\ast}\beta $ 是 $ M $ 上的微分形式，即 $ \beta $ 沿 $ \varphi $ 的拉回。若 $ \varphi $ 是从 $ M $ 到 $ N $ 的 $ C^{1} $ 微分同胚，则

\[ \varphi_{\ast}\alpha := (\varphi^{-1})^{\ast}\alpha \]

是 $ M $ 上微分形式 $ \alpha $ 的**前推**。

设 $ k\in\mathbb{N}\cup\{\infty\} $。$ M $ 上的微分形式 $ \alpha $ 属于**类 $ C^{k} $**（或称它为 $ k $ 次**连续可微**，\footnote{当然，我们把类 $ C^{0} $ 的微分形式说成连续的。} 或在 $ k=\infty $ 的情形称为**光滑**），如果 $ M $ 的每一点都有一个坐标卡 $ (\varphi,U) $，使得 $ \varphi_{\ast}\alpha $ 是 $ \varphi(U) $ 上类 $ C^{k} $ 的微分形式。我们把 $ M $ 上所有类 $ C^{k} $ 的 r 形式之集记为

\[ \Omega_{(k)}^{r}(M), \]

而

\[ \Omega^{r}(M) := \Omega_{(\infty)}^{r}(M) \]

是 $ M $ 上所有光滑 r 形式之集。最后，

\[ \Omega(M) := \Omega_{(\infty)}(M) \]

是 $ M $ 上所有光滑微分形式之集。

仿照我们对向量场的处理，我们将一般地把注意力限制在光滑微分形式的研究上。我们把它留给你去证明：我们所证明的关于光滑形式的所有结论，只要按情形对 $ k $ 加以限制，对类 $ C^{k} $ 的形式也类似地成立。

4.4 注 (a) 上述微分形式的可微性概念与坐标无关。

若 $ \alpha $ 是 $ M $ 上类 $ C^{k} $ 的 r 形式，$ (\psi,V) $ 是 $ M $ 上的坐标卡，则 $ \psi_{\ast}\alpha $ 是 $ \psi(V) $ 上类 $ C^{k} $ 的 r 形式。

证明 $ M $ 的每一点 $ p $ 都有一个坐标卡 $ (\varphi,U) $ 使 $ \varphi_{\ast}\alpha\in\Omega_{(k)}^{r}(\varphi(U)) $。由注 3.3(a) 以及前推的逐点定义可得

\[ \psi_{\ast}\alpha = (\psi\circ\varphi^{-1})_{\ast}\varphi_{\ast}\alpha. \]

至此，仿照注 4.2(a) 的证明即可得到结论。■

(b) $ \Omega(M) $ 与 $ \Omega^{r}(M) $ 是 $ \mathcal{E}(M) $ 模，因而特别是 $ \mathbb{R} $ 向量空间。又

\[ \Omega(M) = \bigoplus_{r\ge 0}\Omega^{r}(M). \]

外积是 $ \mathbb{R} $ 双线性的、结合的与分次反交换的，也就是说，它满足以下规则：

(i) 映射

\[ \Omega^{r}(M)\times\Omega^{s}(M)\to\Omega^{r+s}(M), \quad (\alpha,\beta)\mapsto\alpha\wedge\beta \]

是良定义的且 $ \mathbb{R} $ 双线性的。

(ii) 对 $ \alpha,\beta,\gamma\in\Omega(M) $ 有 $ \alpha\wedge(\beta\wedge\gamma) = (\alpha\wedge\beta)\wedge\gamma $。

(iii) 对 $ \alpha\in\Omega^{r}(M) $ 与 $ \beta\in\Omega^{s}(M) $ 有 $ \alpha\wedge\beta = (-1)^{rs}\beta\wedge\alpha $。

证明 这由光滑性的定义、$ \wedge $ 的逐点定义以及定理 2.7 推出。■

(c) 每个 $ \alpha\in\Omega^{r}(M) $ 都是 $ \mathcal{V}(M) $ 上的交错 r 形式。

(d) $ \Omega^{0}(M) = \mathcal{E}(M) $，且对 $ r>m $ 有 $ \Omega^{r}(M) = \{0\} $。

(e) 对 $ h\in C^{\infty}(M,N) $，拉回 $ h^{\ast} : \Omega(N)\to\Omega(M) $ 是代数同态，即

\[ h^{\ast}(\alpha+\beta) = h^{\ast}\alpha+h^{\ast}\beta, \quad h^{\ast}(\alpha\wedge\beta) = h^{\ast}\alpha\wedge h^{\ast}\beta \]

对 $ \alpha,\beta\in\Omega(N) $。若 $ \alpha\in\Omega^{r}(N) $，则 $ h^{\ast}\alpha $ 属于 $ \Omega^{r}(M) $。又

\[ (k\circ h)^{\ast} = h^{\ast}\circ k^{\ast} \quad \text{且 } (\operatorname{id}_{M})^{\ast} = \operatorname{id}_{\Omega(M)}. \]

若 $ h $ 是微分同胚，则 $ h^{\ast} $ 是双射，且 $ (h^{\ast})^{-1} = (h^{-1})^{\ast} = h_{\ast} $。

证明 简单的验证留给你。■

(f) 设 $ M $ 是 $ N $ 的子流形，$ i : M\hookrightarrow N $ 是自然嵌入。\footnote{在这种情形下，我们总假设 $ N $ 没有边界。} 则对 $ \alpha\in\Omega^{r}(N) $，

\[ \alpha\,|\,M := i^{\ast}\alpha\in\Omega^{r}(M) \]

是 $ \alpha $ 到 $ M $ 的**限制**。\footnote{参见例 3.4(j)。} 设 $ p\in M $。由于切空间 $ T_{p}M $ 可视为 $ T_{p}N $ 的向量子空间，我们有 $ (\alpha\,|\,M)(p) = \alpha(p)\,|\,(T_{p}M)^{r} $。■

##### 局部表示

设 $ f\in C^{1}(M) := C^{1}(M,\mathbb{R}) $。如同第 VII.10 节，我们通过

\[ df(p) := \operatorname{pr}\circ T_{p}f \qquad \text{对 } p\in M, \]

定义 $ f $ 的**微分** $ df $，其中

\[ \operatorname{pr} := \operatorname{pr}_{2} : T_{f(p)}\mathbb{R} = \{f(p)\}\times\mathbb{R}\to\mathbb{R} \]

是标准投影。

设 $ (\varphi,U) $ 是 $ p\in M $ 处的坐标卡。则由 $ df(p) $ 与 $ \partial_{j}|_{p} $ 的定义以及注 VII.10.9(b) 与 1.14(c) 的链式法则可得，对 $ 1\le j\le m $，

\[ \begin{aligned} \langle df(p),\partial_{j}|_{p}\rangle_{p} &= \langle df(p),(T_{\varphi(p)}\varphi^{-1})(\varphi(p),e_{j})\rangle_{p}\\ &= \operatorname{pr}\circ T_{p}f\circ T_{\varphi(p)}\varphi^{-1}(\varphi(p),e_{j})\\ &= \operatorname{pr}\circ T_{\varphi(p)}(f\circ\varphi^{-1})(\varphi(p),e_{j})\\ &= \partial(f\circ\varphi^{-1})(\varphi(p))e_{j}\\ &= \partial_{j}(f\circ\varphi^{-1})(\varphi(p))\\ &= \partial_{j}(\varphi_{\ast}f)(\varphi(p)) \end{aligned} \]

以缩写

\[ \partial_{j}f(p) := \frac{\partial f}{\partial x^{j}}(p) := \partial_{j}(f\circ\varphi^{-1})(\varphi(p)) = \partial_{j}(\varphi_{\ast}f)(\varphi(p)) \tag{4.3} \]

表示，对 $ 1\le j\le m $ 与 $ p\in U $，我们于是有

\[ \langle df(p),\partial_{j}|_{p}\rangle_{p} = \partial_{j}f(p) \quad \text{对 } 1\le j\le m, \quad p\in U. \tag{4.4} \]

因此

\[ \langle df,\partial_{j}\rangle = \partial_{j}f \quad \text{对 } 1\le j\le m. \tag{4.5} \]

注意，$ M $ 上通常的偏导数 $ \partial_{j}f $（在注 VII.2.7(a) 的意义下）在 $ M $ 不是“平坦的”，即不是 $ \mathbb{R}^{m} $ 的开子集时没有定义。由于流形上函数的导数只能通过局部表示来定义，(4.5) 中的 $ \partial_{j}f $ 除非解释为由 $ \varphi $ “下推”到参数区域 $ \varphi(U) $ 上的函数的偏导数，即 (4.3) 中出现的 $ \varphi_{\ast}f $ 的偏导数，否则没有意义。这就排除了实践中任何误解。记号 $ \partial f/\partial x^{j} $ 的优点是它给出了 $ f $ 被局部写出的“坐标的名称” $ (x^{1},\ldots,x^{m}) = \varphi $。

在第 VII.2 节中，对 $ \mathbb{R}^{m} $ 的开子集的情形，我们把偏导数 $ \partial_{j}f(p) $ 定义为第 $ j $ 个坐标单位向量 $ e_{j} $ 在（全）导数 $ \partial f(p) $（即 $ f $ 在 $ p $ 处的线性化）下的像。由于 $ df(p) $ 正是切映射 $ T_{p}f $ 的切部分，从而是“$ f $ 在点 $ p $ 处的线性化”，并且 $ \partial_{j}|_{p} $ 是 $ T_{p}M $ 的第 $ j $ 个坐标基向量，(4.4) 表明 $ \partial_{j}f(p) $ 是这些坐标向量在 $ f $ 的切映射下的像的切部分。因此 (4.3) 确实是把偏导数概念推广到流形上函数的正确方式。

最后，显然当 $ M $ 在 $ \mathbb{R}^{m} $ 中开且 $ \varphi $ 表示平凡坐标卡 $ \operatorname{id}_{M} $ 时，(4.3) 与经典的偏导数一致。

4.5 注 设 $ (\varphi,U) $ 是 $ M $ 的坐标卡。

(a) 对 $ f\in\mathcal{E}(M) = \Omega^{0}(M) $，微分 $ df $ 属于 $ \Omega^{1}(M) $。映射

\[ d : \Omega^{0}(M)\to\Omega^{1}(M), \quad f\mapsto df \]

是 $ \mathbb{R} $ 线性的。

(b) 设 $ (x^{1},\ldots,x^{m}) = \varphi $ 是 $ \varphi $ 在 $ U $ 上诱导的局部坐标，于是

\[ x^{j} := \operatorname{pr}_{j}\circ\varphi\in\mathcal{E}(U) \quad \text{对 } 1\le j\le m, \]

其中 $ \operatorname{pr}_{j} : \mathbb{R}^{m}\to\mathbb{R} $ 是标准投影。则 $ \Omega^{1}(U) $ 是 $ m $ 维自由 $ \mathcal{E}(U) $ 模，且 $ (dx^{1},\ldots,dx^{m}) $ 是一组模基，满足

\[ \left\langle dx^{j},\frac{\partial}{\partial x^{k}}\right\rangle = \delta_{k}^{j} \quad \text{对 } 1\le j,k\le m \tag{4.6} \]

并且它是 $ \mathcal{V}(U) $ 的基 $ (\partial/\partial x^{1},\ldots,\partial/\partial x^{m}) $ 的对偶基。基表示

\[ v = \sum_{j=1}^{m}v^{j}\frac{\partial}{\partial x^{j}}\in\mathcal{V}(U) \quad \text{且 } \alpha = \sum_{j=1}^{m}a_{j}\,dx^{j}\in\Omega^{1}(U) \tag{4.7} \]

要求有关系

\[ v^{j} = \langle dx^{j},v\rangle\in\mathcal{E}(U) \quad \text{且 } a_{j} = \left\langle\alpha,\frac{\partial}{\partial x^{j}}\right\rangle\in\mathcal{E}(U) \tag{4.8} \]

对 $ 1\le j\le m $。特别地，对 $ f\in\mathcal{E}(U) $ 有

\[ df = \sum_{j=1}^{m}\frac{\partial f}{\partial x^{j}}dx^{j}\in\Omega^{1}(U). \]

证明 (4.3) 与 (4.5) 蕴含

\[ \langle dx^{j},\partial_{k}\rangle = \partial_{k}x^{j} = \varphi^{\ast}\partial_{k}(\varphi_{\ast}x^{j}) = \varphi^{\ast}\partial_{k}[(\operatorname{pr}_{j}\circ\varphi)\circ\varphi^{-1}] = \varphi^{\ast}\partial_{k}\operatorname{pr}_{j} = \delta_{k}^{j} \]

从而得到 (4.6)。对具有 (4.7) 中表示的 $ v $，我们得到

\[ \langle dx^{j}(p),v(p)\rangle_{p} = \sum_{k=1}^{m}v^{k}(p)\left\langle dx^{j}(p),\frac{\partial}{\partial x^{k}}\Big|_{p}\right\rangle_{p} = \sum_{k=1}^{m}v^{k}(p)\delta_{k}^{j} = v^{j}(p) \tag{4.9} \]

对 $ p\in U $ 与 $ 1\le j\le m $，因为 $ dx^{j}(p) $ 是 $ T_{p}M = T_{p}U $ 上的线性形式。因此 (4.7) 的第一部分与注 4.3(c) 蕴含 (4.8) 的第一个断言。

对于 $ dx^{j} $ 经 $ \varphi $ 的前推，我们应用注 VII.10.9(b) 与 1.14(c) 以及 (4.2) 与 (4.6) 得到

\[ \begin{aligned} \langle(\varphi_{\ast}dx^{j})(\varphi(p)),(\varphi(p),e_{k})\rangle_{\varphi(p)} &= \langle dx^{j}(p),(T_{\varphi(p)}\varphi^{-1})(\varphi(p),e_{k})\rangle_{p}\\ &= \langle dx^{j}(p),(T_{p}\varphi)^{-1}(\varphi(p),e_{k})\rangle_{p}\\ &= \left\langle dx^{j}(p),\frac{\partial}{\partial x^{k}}\Big|_{p}\right\rangle_{p} = \delta_{k}^{j}. \end{aligned} \tag{4.10} \]

这表明 $ (\varphi_{\ast}dx^{1},\ldots,\varphi_{\ast}dx^{m}) $ 在每一点 $ \varphi(p)\in\varphi(U) $ 处是 $ T_{\varphi(p)}\varphi(U) $ 的标准基的对偶基。特别地，$ \varphi_{\ast}dx^{j} $ 的余向量部分在 $ \varphi(U) $ 上是常值的。

注 4.4(e) 保证 $ \varphi_{\ast} $ 是从 $ \Omega^{1}(U) $ 到 $ \Omega^{1}(\varphi(U)) $ 的向量空间同构。由此，(4.10) 以及命题 2.3，我们断定每个 $ \alpha\in\Omega^{1}(U) $ 都有形如 (4.7) 的表示，其系数是 $ U $ 上的实值函数 $ a_{j} $。由于

\[ \varphi_{\ast}\alpha = \sum_{j=1}^{m}(\varphi_{\ast}a_{j})\,\varphi_{\ast}dx^{j} \tag{4.11} \]

并且由于 1 形式 $ \varphi_{\ast}dx^{j} $ 的余向量部分在 $ \varphi(U) $ 上是常值的，由注 3.1(e) 可知 $ \alpha $ 属于 $ \Omega^{1}(U) $ 当且仅当 $ a_{j}\in\mathcal{E}(U) $ 对 $ 1\le j\le m $。最后，$ a_{j} = \langle\alpha,\partial_{j}\rangle $ 由类似于 (4.9) 的计算推出。■

(c) 对 $ r\in\mathbb{N} $，$ \Omega^{r}(U) $ 是 $ \binom{m}{r} $ 维自由 $ \mathcal{E}(U) $ 模，且

\[ \left\{ dx^{(j)} = dx^{j_{1}}\wedge\cdots\wedge dx^{j_{r}} ;\ (j) = (j_{1},\ldots,j_{r})\in\mathbb{J}_{r} \right\} \tag{4.12} \]

为一组基。$ U $ 上的 r 形式 $ \alpha $ 有唯一确定的**局部坐标下的基表示**

\[ \alpha = \sum_{(j)\in\mathbb{J}_{r}}a_{(j)}\,dx^{(j)} \tag{4.13} \]

其系数为

\[ a_{(j)} = \alpha\left(\frac{\partial}{\partial x^{j_{1}}},\ldots,\frac{\partial}{\partial x^{j_{r}}}\right) \quad \text{对 } (j)\in\mathbb{J}_{r}. \tag{4.14} \]

若 $ k\in\mathbb{N}\cup\{\infty\} $，则 $ \alpha $ 在 $ U $ 上属于类 $ C^{k} $ 当且仅当 $ a_{(j)}\in C^{k}(U) $ 对 $ (j)\in\mathbb{J}_{r} $。

证明 由 (4.10) 以及注 4.4(e) 中给出的拉回性质 $ (\varphi^{-1})^{\ast} = \varphi_{\ast} $ 可得

\[ \varphi_{\ast}dx^{(j)} = \varepsilon^{(j)} \quad \text{对 } (j)\in\mathbb{J}_{r}, \tag{4.15} \]

其中 $ (\varepsilon^{1},\ldots,\varepsilon^{m}) $ 表示 $ T_{\varphi(p)}\varphi(U) $ 的标准基的对偶基，$ p\in U $。因为 $ \varphi_{\ast} $ 是从 $ \Omega^{r}(U) $ 到 $ \Omega^{r}(\varphi(U)) $ 的向量空间同构，由命题 2.3 与 (4.2) 可知 $ U $ 上每个 r 形式 $ \alpha $ 都有形如 (4.13) 的唯一表示，其系数由 (4.14) 给出。因为

\[ \varphi_{\ast}\alpha = \sum_{(j)\in\mathbb{J}_{r}}(\varphi_{\ast}a_{(j)})\varphi_{\ast}dx^{(j)} \]

并且由 (4.15)，类 $ C^{k} $ 的 r 形式的可微性定义蕴含 $ \alpha $ 属于类 $ C^{k} $ 当且仅当 $ a_{(j)} $ 落在 $ C^{k}(U) $ 中。■

(d) 注意我们只证明了 $ \mathcal{V}(U) $ 与 $ \Omega(U) $ 是自由模，而对 $ \mathcal{V}(M) $ 与 $ \Omega(M) $ 没有作这样的断言。事实上，相应的断言在整体情形下一般并不成立，即对不能由单个坐标卡描述的流形不成立。例如，已知\footnote{由 Bott、Kervaire 与 Milnor 的工作。} $ n $ 维球面不支持 $ n $ 个（非平凡的）线性无关向量场（即 $ \mathcal{V}(S^{n}) $ 不是 $ n $ 维自由模），除非 $ n = 0,1,3 $ 或 $ 7 $。

(e)（正则性）若 $ k\in\mathbb{N} $，则当 $ M $ 是 $ C^{k+1} $ 流形时，(c) 的结论仍然成立。■

属于坐标卡 $ \varphi $ 的 $ U $ 上的局部坐标 $ x^{1},\ldots,x^{m} $ 是 $ U $ 上的光滑函数；即它们是映射 $ \operatorname{pr}_{j}\circ\varphi\in\mathcal{E}(U) $，$ 1\le j\le m $。另一方面，我们也用 $ (x^{1},\ldots,x^{m}) $ 表示 $ \varphi(U) $ 的一般点，即 $ \mathbb{R}^{m} $ 的坐标也称为 $ x^{1},\ldots,x^{m} $。对两个不同对象使用同一记号是故意的。只要从上下文可以清楚哪个解释是正确的，这就大大简化了（局部）坐标下的计算。例如，表达式

\[ \alpha = \sum_{(j)\in\mathbb{J}_{r}}a_{(j)}\,dx^{(j)} \tag{4.16} \]

（若没有其他说明，这在实践中是通常的）有两种含义。第一，我们可以像前几节那样，把 (4.16) 视为 $ \overline{\mathbb{H}}^{m} $ 的开子集 $ X = \varphi(U) $ 上 r 形式的基表示。或者，我们可以把 (4.16) 解释为 $ U $ 上 r 形式关于相应坐标卡中局部坐标的基表示。这就是我们在此采取的立场。在第一种情形，$ a_{(j)} $ 是 $ X $ 上的函数，而 $ dx^{(j)} $ 是 $ \mathbb{R}^{m} $ 的常值基形式。在第二种情形，$ a_{(j)} $ 是 $ U\subset M $ 上的函数，而 $ dx^{(j)} $ 是“生活”在 $ U $ 上的依赖于位置的 r 形式。由于 (4.15)，为了从第二种解释过渡到第一种，我们必须用 $ \varphi $ 把系数函数 $ a_{(j)} = a_{(j)}(p) $ “下推”到参数区域。也就是说，$ a_{(j)} $ 必须解释为 $ \varphi_{\ast}a_{(j)} = a_{(j)}\circ\varphi^{-1} $，并且我们必须认为 $ a_{(j)} = a_{(j)}(x) $，$ x\in X $。

4.6 例 (a) 记 $ \mathbb{R}^{m+1} $ 中 $ m $ 维球面 $ S^{m} $ 的上、下半球面分别为 $ S_{+}^{m} $ 与 $ S_{-}^{m} $。也就是说，设

\[ S_{\pm}^{m} := \{x\in\mathbb{R}^{m+1} ;\ |x| = 1,\ \pm x^{m+1} > 0\}. \]

又设

\[ \varphi_{\pm} : S_{\pm}^{m}\to\mathbb{B}^{m}, \quad x\mapsto x' := (x^{1},\ldots,x^{m}) \]

是 $ \mathbb{B}^{m} = \mathbb{B}^{m}\times\{0\} $ 到与 $ x^{m+1} $ 轴正交的超平面上的投影。则 $ (\varphi_{+},S_{+}^{m}) $ 与 $ (\varphi_{-},S_{-}^{m}) $ 是 $ S^{m} $ 的坐标卡。对

\[ \alpha := \sum_{j=1}^{m+1}(-1)^{j-1}x^{j}\,dx^{1}\wedge\cdots\wedge\widehat{dx^{j}}\wedge\cdots\wedge dx^{m+1}\in\Omega^{m}(\mathbb{R}^{m+1}), \]

在由 $ \varphi_{\pm} $ 诱导的局部坐标下，到 $ S^{m} $ 的限制读作

\[ \alpha\,|\,S_{\pm}^{m} = \pm\frac{(-1)^{m}}{\sqrt{1-|x'|^{2}}}\,dx^{1}\wedge\cdots\wedge dx^{m}. \]

证明 设 $ g_{\pm}(x') := (x',\pm\sqrt{1-|x'|^{2}}) $，$ x'\in\mathbb{B}^{m} $。则 $ g_{\pm} $ 是光滑的，并且是属于 $ \varphi_{\pm} $ 的、把半球面 $ S_{\pm}^{m} $ 表示为 $ \mathbb{B}^{m} $ 上图像的参数化。又 $ g_{\pm} = i\circ\varphi_{\pm}^{-1} $，其中 $ i : S^{m}\hookrightarrow\mathbb{R}^{m+1} $。因此 $ (\varphi_{\pm},S_{\pm}^{m}) $ 是 $ S^{m} $ 的坐标卡。对这些坐标卡，我们得到

\[ \begin{aligned} (\varphi_{\pm})_{\ast}(\alpha\,|\,S_{\pm}^{m}) &= (\varphi_{\pm}^{-1})^{\ast}\circ i^{\ast}\alpha = g_{\pm}^{\ast}\alpha\\ &= \sum_{j=1}^{m+1}(-1)^{j-1}g_{\pm}^{j}\,dg_{\pm}^{1}\wedge\cdots\wedge\widehat{dg_{\pm}^{j}}\wedge\cdots\wedge dg_{\pm}^{m+1}\\ &= \sum_{j=1}^{m}(-1)^{j-1}x^{j}\,dx^{1}\wedge\cdots\wedge\widehat{dx^{j}}\wedge\cdots\wedge dx^{m}\wedge\sum_{k=1}^{m}\frac{\mp x^{k}\,dx^{k}}{\sqrt{1-|x'|^{2}}}\\ &\quad \pm(-1)^{m}\sqrt{1-|x'|^{2}}\,dx^{1}\wedge\cdots\wedge dx^{m}\\ &= \pm\frac{(-1)^{m}}{\sqrt{1-|x'|^{2}}}\left[-\sum_{j=1}^{m}(-1)^{m+j-1+m-j}(x^{j})^{2}+1-|x'|^{2}\right]dx^{1}\wedge\cdots\wedge dx^{m}. \end{aligned} \]

由方括号中的表达式化为 1 即得结论。■
