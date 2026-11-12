（b）令 $ \omega_{S^{1}} := (x\,dy - y\,dx)|S^{1} $，并令

\[ g_{1}: (0,2\pi) \to S^{1}\setminus\{(1,0)\}, \qquad t \mapsto (\cos t, \sin t) \]

为 $ S^{1}\setminus\{(1,0)\} $ 的一个参数化。那么关于由坐标卡 $ (\varphi, U) $（其中 $ \varphi := g_{1}^{-1} $，$ U := S^{1}\setminus\{(1,0)\} $）诱导的局部坐标，我们有

\[ \omega_{S^{1}}|U = dt . \]

证明 这由 $ \varphi_{\ast}\omega_{S^{1}} = (g_{1}^{1}\dot{g}_{1}^{2} - g_{1}^{2}\dot{g}_{1}^{1})\,dt $ 推出。■

（c）令 $ U := S^{2}\setminus H_{3} $ 为 2 球面 $ S^{2} $ 减去它与半平面 $ H_{3} := \mathbb{R}^{+}\times\{0\}\times\mathbb{R} $ 相交的半圆。\footnote{见例 VII.9.11(b)。}又令

\[ (0,2\pi)\times(0,\pi) \to U, \qquad (\varphi,\vartheta) \mapsto (\cos\varphi\sin\vartheta, \sin\varphi\sin\vartheta, \cos\vartheta) \]

为 $ U $ 用球坐标给出的参数化。最后，令

\[ \alpha := x\,dy\wedge dz + y\,dz\wedge dx + z\,dx\wedge dy \in \Omega^{2}(\mathbb{R}^{3}) . \]

则形式 $ \omega_{S^{2}} := \alpha|S^{2} \in \Omega^{2}(S^{2}) $ 关于局部坐标 $ (\varphi,\vartheta) $ 有表示

\[ \omega_{S^{2}}|U = -\sin\vartheta\,d\varphi\wedge d\vartheta . \]

证明 经过简单计算，\footnote{注意（例如）$ \partial(x,y)/\partial(\varphi,\vartheta) $ 是由 (VII.9.3) 去掉最后一行所得的矩阵的行列式。}我们由例 3.4(d) 得到此式。■

##### 坐标变换

为了高效地进行具体计算，选择最适合问题的坐标是重要的。例如，当我们要描述旋转对称的问题时，就使用极坐标，正如我们在第 X.8 节处理积分理论时所做的那样。

由于给定的问题通常已经在某个坐标系中描述，我们必须能够不费周折地换到另一个坐标系。这一背景为下文关于向量场与普法夫形式的变换定理作了铺垫。

设 $ (\varphi, U) $ 与 $ (\psi, V) $ 是 $ M $ 的坐标卡，且 $ U\cap V\neq\varnothing $。设 $ \varphi = (x^{1}, \ldots, x^{m}) $，$ \psi = (y^{1}, \ldots, y^{m}) $。在 $ U\cap V $ 上，我们可以把 $ y^{j} $ 看作局部坐标 $ x = (x^{1}, \ldots, x^{m}) $ 的函数；也可以把 $ x^{j} $ 看作 $ y = (y^{1}, \ldots, y^{m}) $ 的函数。这里通常而方便的做法是不引入新记号，而直接写 $ y = y(x) $ 与 $ x = x(y) $。显然映射 $ y(\cdot) $ 是从 $ U\cap V $ 到自身的微分同胚，即**坐标变换**，我们也把它记为 $ x\mapsto y $。其逆映射是 $ x(\cdot) $，即坐标变换 $ y\mapsto x $。然而，我们也可以把 $ x $［或 $ y $］看成 $ \mathbb{H}^{m} $ 中 $ X := \varphi(U\cap V) $［或 $ Y := \psi(U\cap V) $］里的一般点。这时坐标变换 $ x\mapsto y $ 不过是转移函数 $ \psi\circ\varphi^{-1}\in\mathrm{Diff}(X,Y) $。从上下文总能看清应在这两种解释中选哪一种。

在下面的公式中，我们把从上下文判断 $ x^{j} $ 表示自变量还是表示函数 $ x^{j}(\cdot) $ 这件事留给你。这种双重含义在实践中几乎不成为问题，它是有意采用的，因为这有助于把公式写成更直观、更易记的形式。

4.7 命题 对坐标变换 $ x\mapsto y $，我们有

\[ \frac{\partial}{\partial y^{j}} = \sum_{k=1}^{m}\frac{\partial x^{k}}{\partial y^{j}}\frac{\partial}{\partial x^{k}} \qquad \text{与} \qquad dy^{j} = \sum_{k=1}^{m}\frac{\partial y^{j}}{\partial x^{k}}\,dx^{k} \]

对 $ 1\le j\le m $。

证明 由注 4.5(c) 可得

\[ \frac{\partial}{\partial y^{j}} = \sum_{k=1}^{m} v_{j}^{k}\frac{\partial}{\partial x^{k}} \qquad \text{与} \qquad v_{j}^{k} = \left\langle dx^{k}, \frac{\partial}{\partial y^{j}} \right\rangle \qquad \text{对 } 1\le j, k\le m . \]

由 $ x = f(y) $ 与 (4.5)，我们得到

\[ \left\langle dx^{k}, \frac{\partial}{\partial y^{j}} \right\rangle = \frac{\partial x^{k}}{\partial y^{j}} \qquad \text{对 } 1\le j, k\le m , \tag{4.17} \]

这证明了第一个断言。

类似地，我们有

\[ dy^{j} = \sum_{k=1}^{m} a_{k}\,dx^{k} \qquad \text{与} \qquad a_{k} = \left\langle dy^{j}, \frac{\partial}{\partial x^{k}} \right\rangle = \frac{\partial y^{j}}{\partial x^{k}} \]

对 $ 1\le j, k\le m $，这证明了第二个断言。■

4.8 推论 （a）坐标变换 $ x\mapsto y $ 的雅可比矩阵满足

\[ \left[\frac{\partial y^{j}}{\partial x^{k}}\right] = \left[\frac{\partial x^{j}}{\partial y^{k}}\right]^{-1} . \]

（b）

\[ dy^{1}\wedge\cdots\wedge dy^{m} = \frac{\partial(y^{1}, \ldots, y^{m})}{\partial(x^{1}, \ldots, x^{m})}\,dx^{1}\wedge\cdots\wedge dx^{m} . \]

证明 （a）因为

\[ y(\cdot) = \psi\circ\varphi^{-1}\in\mathrm{Diff}(X,Y) \qquad \text{与} \qquad y(\cdot)^{-1} = x(\cdot) = \varphi\circ\psi^{-1}\in\mathrm{Diff}(Y,X) , \]

所以断言是显然的。

（b）这可由例 3.4(c)、注 4.5(e) 之后的讨论以及下述事实推出：

\[ \frac{\partial(y^{1}, \ldots, y^{m})}{\partial(x^{1}, \ldots, x^{m})} \]

是坐标变换 $ x\mapsto y $ 的雅可比行列式（见注 VII.7.9(a)）。■

4.9 例 （a）（平面极坐标）利用极坐标变换

\[ V_{2} \to \mathbb{R}^{2}, \qquad (r,\varphi) \mapsto (x,y) := (r\cos\varphi, r\sin\varphi) \]

其中 $ V_{2} := (0,\infty)\times(0,2\pi) $，我们有

\[ \frac{\partial}{\partial r} = \frac{\partial x}{\partial r}\frac{\partial}{\partial x} + \frac{\partial y}{\partial r}\frac{\partial}{\partial y} = \cos\varphi\,\frac{\partial}{\partial x} + \sin\varphi\,\frac{\partial}{\partial y} \]

与

\[ \frac{\partial}{\partial\varphi} = \frac{\partial x}{\partial\varphi}\frac{\partial}{\partial x} + \frac{\partial y}{\partial\varphi}\frac{\partial}{\partial y} = -r\sin\varphi\,\frac{\partial}{\partial x} + r\cos\varphi\,\frac{\partial}{\partial y} . \]

（b）（球坐标）令 $ V_{3} := (0,\infty)\times(0,2\pi)\times(0,\pi) $。利用球坐标变换

\[ V_{3} \to \mathbb{R}^{3}, \qquad (r,\varphi,\vartheta) \mapsto (x,y,z) = (r\cos\varphi\sin\vartheta, r\sin\varphi\sin\vartheta, r\cos\vartheta) , \]

我们得到

\[ \begin{aligned} \frac{\partial}{\partial r} &= \cos\varphi\sin\vartheta\,\frac{\partial}{\partial x} + \sin\varphi\sin\vartheta\,\frac{\partial}{\partial y} + \cos\vartheta\,\frac{\partial}{\partial z} \\ \frac{\partial}{\partial\varphi} &= -r\sin\varphi\sin\vartheta\,\frac{\partial}{\partial x} + r\cos\varphi\sin\vartheta\,\frac{\partial}{\partial y} \\ \frac{\partial}{\partial\vartheta} &= r\cos\varphi\cos\vartheta\,\frac{\partial}{\partial x} + r\sin\varphi\cos\vartheta\,\frac{\partial}{\partial y} - r\sin\vartheta\,\frac{\partial}{\partial z} . \end{aligned} \]

（c）（柱坐标）令 $ X := (0,\infty)\times(0,2\pi)\times\mathbb{R} $。对柱坐标变换

\[ X \to \mathbb{R}^{3}, \qquad (r,\varphi,\zeta) \mapsto (x,y,z) := (r\cos\varphi, r\sin\varphi, \zeta) , \]

我们得到

\[ \frac{\partial}{\partial r} = \cos\varphi\,\frac{\partial}{\partial x} + \sin\varphi\,\frac{\partial}{\partial y}, \quad \frac{\partial}{\partial\varphi} = -r\sin\varphi\,\frac{\partial}{\partial x} + r\cos\varphi\,\frac{\partial}{\partial y}, \quad \frac{\partial}{\partial\zeta} = \frac{\partial}{\partial z} . \quad \blacksquare \]

##### 外微分

下一个定理表明，外微分可以推广到在流形上整体地定义。

4.10 定理 恰有一个映射

\[ d: \Omega(M) \to \Omega(M) , \]

即**外**（或**嘉当**）微分，它具有以下四条性质：

（i）$ d $ 是 $ \mathbb{R} $-线性的，并把 $ \Omega^{r}(M) $ 映入 $ \Omega^{r+1}(M) $。

（ii）$ d $ 满足**乘积法则**

\[ d(\alpha\wedge\beta) = d\alpha\wedge\beta + (-1)^{r}\alpha\wedge d\beta \qquad \text{对 } \alpha\in\Omega^{r}(M) \text{ 与 } \beta\in\Omega(M) . \]

（iii）$ d^{2} = d\circ d = 0 $。

（iv）$ f\in\mathcal{E}(M) = \Omega^{0}(M) $ 的微分 $ df $ 与 $ f $ 的微分相同。

又

\[ d\circ h^{\ast} = h^{\ast}\circ d \tag{4.18} \]

对 $ h\in C^{\infty}(M,N) $。

证明 （a）（存在性）设 $ (\varphi, U) $ 是 $ M $ 的坐标卡。由定理 3.5，恰有一个映射 $ d: \Omega(\varphi(U))\to\Omega(\varphi(U)) $ 具有性质 (i)–(iv)。我们通过要求下图交换来定义 $ d_{U}: \Omega(U)\to\Omega(U) $：

\[ \begin{array}{ccc} \Omega(U) & \xrightarrow{d_{U}} & \Omega(U) \\ \varphi_{\ast}\downarrow & & \uparrow\varphi^{\ast} \\ \Omega(\varphi(U)) & \xrightarrow{d} & \Omega(\varphi(U)) \end{array} \tag{4.19} \]

等价地，我们令 $ d_{U} := \varphi^{\ast}\circ d\circ\varphi_{\ast} $。由注 4.4(e) 可知 $ \varphi_{\ast} $ 是代数同构，且 $ (\varphi_{\ast})^{-1} = (\varphi^{-1})_{\ast} $。由此与 (4.19)，我们容易验证 $ d_{U} $ 具有性质 (i)–(iv) 且被唯一确定。

设 $ (\psi, V) $ 是 $ M $ 的另一个坐标卡，且 $ U\cap V\neq\varnothing $。则由 $ \varphi = (\varphi\circ\psi^{-1})\circ\psi $、拉回的性质与 (3.12) 推出

\[ \begin{aligned} d_{U} &= \varphi^{\ast}\circ d\circ\varphi_{\ast} = \psi^{\ast}\circ(\varphi\circ\psi^{-1})^{\ast}\circ d\circ(\varphi\circ\psi^{-1})_{\ast}\circ\psi_{\ast} \\ &= \psi^{\ast}\circ d\circ\psi_{\ast} = d_{V} \end{aligned} \tag{4.20} \]

（当然是在 $ U\cap V $ 上）。因此 $ d_{U} $ 与所选取的特殊坐标无关。

设 $ \{(\varphi_{\kappa}, U_{\kappa}) ; \kappa\in K\} $ 是 $ M $ 的图册，并设 $ i_{\kappa}: U_{\kappa}\hookrightarrow M $ 为自然嵌入。则我们如下定义 $ d: \Omega(M)\to\Omega(M) $：

\[ d\alpha(p) := d_{U_{\kappa}}[(i_{\kappa})^{\ast}\alpha](p) \qquad \text{对 } \alpha\in\Omega(M) , \]

其中 $ \kappa\in K $ 的选取使得 $ p $ 位于 $ U_{\kappa} $ 中。由 (4.20)，这个定义是有意义的，并且显然 $ d $ 具有性质 (i)–(iv)。

（b）（唯一性）设 $ \alpha\in\Omega^{r}(M) $，$ p\in M $。又设 $ (\varphi, U) $ 是 $ p $ 附近的坐标卡。由注 4.5(c)，$ \alpha|U $ 在局部坐标下可以写成

\[ \alpha|U = \sum_{(j)\in\mathbb{J}_{r}} a_{(j)}\,dx^{(j)} \]

其中 $ a_{(j)}\in\mathcal{E}(U) $。现在由 (4.19) 以及注 3.6(a) 与 4.4(e) 推出

\[ \begin{aligned} d_{U}(\alpha|U) &= \varphi^{\ast}d\varphi_{\ast}(\alpha|U) = \varphi^{\ast}\sum_{(j)\in\mathbb{J}_{r}} d(\varphi_{\ast}a_{(j)})\wedge\varphi_{\ast}dx^{(j)} \\ &= \sum_{(j)\in\mathbb{J}_{r}} d_{U}a_{(j)}\wedge dx^{(j)} = \sum_{(j)\in\mathbb{J}_{r}} da_{(j)}\wedge dx^{(j)} , \end{aligned} \tag{4.21} \]

因为 $ d_{U}a_{(j)} $ 是 $ a_{(j)}\in\mathcal{E}(U) $ 的微分。

设 $ V $ 是 $ p $ 的开邻域，且 $ V\subset\subset U $。则 $ \varphi(V)\subset\subset\varphi(U) $。因此注 1.21(a) 蕴含存在 $ \widetilde{\chi}\in\mathcal{D}(\varphi(U)) $ 使得 $ \widetilde{\chi}|\varphi(V) = 1 $。对

\[ \chi := \begin{cases} \varphi^{\ast}\widetilde{\chi} & \text{在 } U \text{ 上} , \\ 0 & \text{在 } M\setminus U \text{ 上} , \end{cases} \]

我们有 $ \chi\in\mathcal{E}(M) $ 且 $ \chi|V = 1 $。这意味着

\[ b_{(j)} := \chi a_{(j)} \quad \text{对 } (j)\in\mathbb{J}_{r} \qquad \text{与} \qquad \xi^{j} := \chi x^{j} \quad \text{对 } 1\le j\le m \]

都属于 $ \mathcal{E}(M) $。因此微分 $ d\xi^{j}\in\Omega^{1}(M) $ 有定义，从而

\[ \beta := \sum_{(j)\in\mathbb{J}_{r}} b_{(j)}\,d\xi^{(j)} \]

也有定义，且属于 $ \Omega(M) $。

现在设 $ \widetilde{d} $ 是从 $ \Omega(M) $ 到自身的、满足 (i)–(iv) 的映射。则我们容易得到

\[ \widetilde{d}\beta = \sum_{(j)\in\mathbb{J}_{r}} db_{(j)}\wedge d\xi^{(j)} . \]

对 $ a\in\mathcal{E}(U) $，乘积法则给出

\[ d(\chi a) = a\,d\chi + \chi\,da \]

（见推论 VII.3.8 以及切映射的定义）。因为 $ \chi|V = 1 $，我们可以利用自然嵌入 $ i: V\hookrightarrow M $ 得出

\[ \left\langle i^{\ast}d(\chi a)(q), v(q)\right\rangle_{q} = \left\langle d(\chi a)(q), v(q)\right\rangle_{q} = \left\langle da(q), v(q)\right\rangle_{q} \qquad \text{对 } q\in V , \]

对 $ v\in\mathcal{V}(M) $。即 $ d(\chi a)|V = da|V $。由此与 (4.21) 推出 $ \beta|V = \alpha|V $ 以及

\[ \widetilde{d}\beta|V = d_{V}(\alpha|V) . \tag{4.22} \]

因为 $ d_{V} $ 是唯一的，且每个 $ p\in M $ 都有使 (4.22) 成立的开坐标邻域 $ V $，所以我们看到 $ \widetilde{d} = d $。

（c）为证明 (4.18)，我们可以利用前面的工作化归到局部情形，即可以假设 $ M = U $。于是断言由 (4.19)、(3.12) 与定理 3.5 推出。■

4.11 注 （a）设

\[ \alpha|U = \sum_{(j)\in\mathbb{J}_{r}} a_{(j)}\,dx^{(j)} \]

是 $ \alpha\in\Omega^{r}(M) $ 在坐标卡 $ (\varphi, U) $ 的局部坐标下的表示。则

\[ d(\alpha|U) = \sum_{(j)\in\mathbb{J}_{r}} da_{(j)}\wedge dx^{(j)} . \]

证明 这由 (4.21) 推出。■

（b）（正则性）对 $ k\in\mathbb{N} $，映射

\[ d: \Omega^{r}_{(k+1)}(M) \to \Omega^{r+1}_{(k)}(M) \qquad \text{对 } r\in\mathbb{N} \]

是有定义且 $ \mathbb{R} $-线性的。当 $ M $ 是 $ C^{k+2} $ 流形时，这仍然成立。■

##### 闭形式与恰当形式

与局部理论中一样，若 $ d\alpha = 0 $，则称 $ \alpha\in\Omega(M) $ 是**闭的**。若存在 $ \beta\in\Omega(M) $，即一个**原函数**，使得 $ d\beta = \alpha $，则称它是**恰当的**。

4.12 注与例 （a）因为 $ d^{2} = 0 $，每个恰当形式都是闭形式。

（b）$ M $ 上的每个 $ m $ 形式都是闭形式。

证明 这是因为 $ \Omega^{m+1}(M) = \{0\} $。■

（c）（庞加莱引理）设 $ r\in\mathbb{N}^{\times} $，且 $ \alpha\in\Omega^{r}(M) $ 是闭形式。则 $ \alpha $ 是局部恰当的，即每个 $ p\in M $ 都有开邻域 $ U $ 与 $ \beta\in\Omega^{r-1}(U) $，使得 $ d\beta = \alpha|U $。

证明 设 $ (\varphi, U) $ 是 $ p $ 附近的坐标卡，其中 $ \varphi(U) $ 是星形的。因为 $ d\alpha = 0 $ 且 $ d\varphi_{\ast}\alpha = \varphi_{\ast}d\alpha $，所以形式 $ \varphi_{\ast}\alpha\in\Omega^{r}(\varphi(U)) $。由于 $ \varphi(U) $ 是可缩的，由庞加莱引理（定理 3.11）存在 $ \beta_{0}\in\Omega^{r-1}(\varphi(U)) $ 使得 $ d\beta_{0} = \varphi_{\ast}\alpha $。令 $ \beta := \varphi^{\ast}\beta_{0}\in\Omega^{r-1}(U) $，我们便有 $ d\beta = \varphi^{\ast}d\beta_{0} = \varphi^{\ast}\varphi_{\ast}\alpha = \alpha|U $。■

##### 缩并

设 $ \alpha\in\Omega^{r+1}(M) $，$ v\in\mathcal{V}(M) $。则 $ \alpha $ 关于 $ v $ 的**缩并** $ v\lrcorner\alpha $ 由

\[ v\lrcorner\alpha(v_{1}, \ldots, v_{r}) := \alpha(v, v_{1}, \ldots, v_{r}) \qquad \text{对 } v_{j}\in\mathcal{V}(M) \text{ 与 } 1\le j\le r . \]

定义。我们有时把 $ v\lrcorner\cdot $ 写成 $ i_{v} $，并称 $ i_{v}\alpha $ 为 $ v $ 与 $ \alpha $ 的**内乘**。我们容易验证 $ v\lrcorner\alpha $ 属于 $ \Omega^{r}(M) $。为了完备性并避开一个麻烦的特殊情形，我们直接令

\[ v\lrcorner\alpha := 0 \qquad \text{对 } \alpha\in\Omega^{0}(M) . \]

4.13 注与例 （a）若 $ \varphi: M\to N $ 是微分同胚，则

\[ v\lrcorner(\varphi^{\ast}\alpha) = \varphi^{\ast}(\varphi_{\ast}v\lrcorner\alpha) \]

对 $ \alpha\in\Omega(N) $ 与 $ v\in\mathcal{V}(M) $。特别地，对每个 $ r $，下图交换：

\[ \begin{array}{ccc} \Omega^{r+1}(M) & \xleftarrow{\varphi^{\ast}} & \Omega^{r+1}(N) \\ v\lrcorner\downarrow & & \downarrow\varphi_{\ast}v\lrcorner \\ \Omega^{r}(M) & \xleftarrow{\varphi^{\ast}} & \Omega^{r}(N) \end{array} \]

证明 若 $ \alpha $ 是零形式，则断言显然成立。因此我们可以假设 $ \alpha\in\Omega^{r+1}(N) $。于是对 $ p\in M $ 与 $ v_{1}, \ldots, v_{r}\in T_{p}M $，我们得到

\[ \begin{aligned} v\lrcorner(\varphi^{\ast}\alpha)(p)(v_{1}, \ldots, v_{r}) &= (\varphi^{\ast}\alpha)(p)(v(p), v_{1}, \ldots, v_{r}) \\ &= \alpha(\varphi(p))((T_{p}\varphi)v(p), (T_{p}\varphi)v_{1}, \ldots, (T_{p}\varphi)v_{r}) \\ &= \alpha(\varphi(p))(\varphi_{\ast}v(\varphi(p)), (T_{p}\varphi)v_{1}, \ldots, (T_{p}\varphi)v_{r}) \\ &= (\varphi_{\ast}v\lrcorner\alpha)(\varphi(p))((T_{p}\varphi)v_{1}, \ldots, (T_{p}\varphi)v_{r}) \\ &= \varphi^{\ast}(\varphi_{\ast}v\lrcorner\alpha)(p)(v_{1}, \ldots, v_{r}) , \end{aligned} \]

这证明了断言。■

（b）设 $ X $ 是 $ \mathbb{H}^{m} $ 中的开集，$ \omega := dx^{1}\wedge\cdots\wedge dx^{m} $。对 $ v = \sum_{j=1}^{m} v^{j}\partial_{j} $，我们有

\[ v\lrcorner\omega = \sum_{j=1}^{m}(-1)^{j-1}v^{j}\,dx^{1}\wedge\cdots\wedge\widehat{dx^{j}}\wedge\cdots\wedge dx^{m} . \]

证明 我们令 $ v_{1} := v $。则对 $ v_{2}, \ldots, v_{m}\in\mathcal{V}(X) $，我们有

\[ (v_{1}\lrcorner\omega)(v_{2}, \ldots, v_{m}) = \omega(v_{1}, \ldots, v_{m}) = \det\left[\langle dx^{j}, v_{k}\rangle\right] . \]

把这个行列式按第一列展开，我们发现它的值为

\[ \sum_{j=1}^{m}(-1)^{j+1}\langle dx^{j}, v_{1}\rangle\det(A_{j}) , \]

其中 $ A_{j} $ 是从 $ [\langle dx^{j}, v_{k}\rangle] $ 中划去第一列与第 $ j $ 行所得的矩阵。由此推出

\[ \det(A_{j}) = dx^{1}\wedge\cdots\wedge\widehat{dx^{j}}\wedge\cdots\wedge dx^{m}(v_{2}, \ldots, v_{m}) . \]

现在断言随之成立，因为

\[ \langle dx^{j}, v_{1}\rangle = \sum_{k=1}^{m} v^{k}\langle dx^{j}, \partial_{k}\rangle = v^{j} . \quad \blacksquare \]

（c）设

\[ \rho: \mathbb{R}^{m+1}\setminus\{0\} \to S^{m}, \qquad x\mapsto x/|x| \]

为 $ \mathbb{R}^{m+1} $ 中 $ m $ 球面上的**径向收缩**\footnote{若 $ X $ 是拓扑空间，$ A $ 是 $ X $ 的子集，则连续映射 $ \rho: X\to A $ 若对 $ a\in A $ 满足 $ \rho(a) = a $，就称为 $ X $ 到 $ A $ 上的收缩。若存在 $ X $ 到 $ A $ 上的收缩，则称 $ A $ 是 $ X $ 的收缩核。}。又令

\[ \alpha := \sum_{j=1}^{m+1}(-1)^{j-1}x^{j}\,dx^{1}\wedge\cdots\wedge\widehat{dx^{j}}\wedge\cdots\wedge dx^{m+1} \]

以及

\[ \omega_{S^{m}} := \alpha|S^{m} . \]

于是令 $ r(x) := |x| $（$ x\in\mathbb{R}^{m+1} $），我们有

\[ \rho^{\ast}\omega_{S^{m}} = \frac{1}{r^{m+1}}\alpha = \sum_{j=1}^{m+1}(-1)^{j-1}\frac{x^{j}}{|x|^{m+1}}\,dx^{1}\wedge\cdots\wedge\widehat{dx^{j}}\wedge\cdots\wedge dx^{m+1} , \]

且 $ \rho^{\ast}\omega_{S^{m}} $ 是闭形式。

证明 因为 $ \rho\in C^{\infty}(\mathbb{R}^{m+1}\setminus\{0\}, \mathbb{R}^{m+1}) $ 且 $ \mathrm{im}(\rho) = S^{m} $，我们知道 $ \rho $ 是从 $ \mathbb{R}^{m+1}\setminus\{0\} $ 到 $ S^{m} $ 的光滑映射。因此 $ \rho^{\ast}\omega_{S^{m}}\in\Omega^{m}(\mathbb{R}^{m+1}\setminus\{0\}) $ 有定义。由注 4.12(b) 以及 $ d(\rho^{\ast}\omega_{S^{m}}) = \rho^{\ast}d\omega_{S^{m}} = 0 $，它是闭形式。

为证明 $ \rho^{\ast}\omega_{S^{m}} = r^{-(m+1)}\alpha $，我们必须验证：对每个 $ p\in\mathbb{R}^{m+1}\setminus\{0\} $，两边在取自 $ T_{p}\mathbb{R}^{m+1} $ 的一组基向量的每个 $ m $ 元组上取值相同。因此设 $ p\in\mathbb{R}^{m+1}\setminus\{0\} $。$ T_{p}\mathbb{R}^{m+1} $ 的一组基由向量 $ \{(p)_{p}, (v_{1})_{p}, \ldots, (v_{m})_{p}\} $ 给出，其中
