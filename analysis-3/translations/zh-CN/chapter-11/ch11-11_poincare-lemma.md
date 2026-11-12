(b) 对 $ \varphi \in C^{\infty}(X, Y) $ 与 $ r \in \mathbb{N} $，图表
\[ \begin{array}{ccc} \Omega^{r}(Y) & \xrightarrow{d} & \Omega^{r+1}(Y) \\ \varphi^{\ast}\downarrow & & \downarrow\varphi^{\ast} \\ \Omega^{r}(X) & \xrightarrow{d} & \Omega^{r+1}(X) \end{array} \]
可交换。

证明 这就是 (3.12)。■

(c)（正则性）若 $ \alpha $ 是 $ C^{k+1} $ 类的 $ r $ 形式，则 $ d\alpha $ 显然是 $ C^{k} $ 类的 $ (r+1) $ 形式。然而，对 $ \alpha = a\,dx^{(j)} $，其中 $ (j) \in \mathbb{J}_{r}^{m} $，有
\[ d\alpha = da \wedge dx^{(j)} = \sum_{i} \partial_{i} a\, dx^{i} \wedge dx^{(j)}, \]
其中我们只对满足 $ i \neq j_{k} $（$ 1 \le k \le r $）的下标 $ i \in \{1, \ldots, m\} $ 求和，因为对其余下标有 $ dx^{i} \wedge dx^{(j)} = 0 $。因此存在 $ C^{k} $ 类的 $ r $ 形式 $ \alpha $，使得 $ d\alpha $ 也属于 $ C^{k} $ 类。■

3.7 例 (a) 对 $ \alpha = \sum_{j=1}^{m} a_{j}\, dx^{j} \in \Omega^{1}(X) $，有
\[ d\alpha = \sum_{1 \le j < k \le m} (\partial_{j} a_{k} - \partial_{k} a_{j})\, dx^{j} \wedge dx^{k}. \]

(b) 对 $ \alpha = \sum_{j=1}^{m} (-1)^{j-1} a_{j}\, dx^{1} \wedge \cdots \wedge \widehat{dx^{j}} \wedge \cdots \wedge dx^{m} \in \Omega^{m-1}(X) $，得到
\[ d\alpha = \left( \sum_{j=1}^{m} \partial_{j} a_{j} \right) dx^{1} \wedge \cdots \wedge dx^{m}. \]

(c) 对 $ \alpha \in \Omega^{m}(X) $，$ d\alpha = 0 $。■

##### 庞加莱引理

若 $ d\alpha = 0 $，则称微分形式 $ \alpha \in \Omega(X) $ 为**闭的**。若存在**原函数** $ \beta \in \Omega(X) $ 使得\footnote{说一个形式是恰当的，意味着它的次数至少为 1。} $ d\beta = \alpha $，则称它是**恰当的**。

3.8 例与注 (a) 例 3.7(a) 表明，$ \alpha = \sum_{j=1}^{m} a_{j}\, dx^{j} $ 是闭的，当且仅当 $ \partial_{j} a_{k} = \partial_{k} a_{j} $（$ 1 \le j, k \le m $）。因此，在普法夫形式的情形，这个推广了的闭性概念归结为第 VIII.3 节的定义。

(b) 每个恰当形式都是闭形式。

证明 这由 $ d^{2} = 0 $ 推出。■

(c) $ X $ 上的每个 $ m $ 形式都是闭形式。

证明 见例 3.7(c)。■

(d)（正则性）闭形式的定义显然对 $ C^{1} $ 类形式有意义；恰当形式的概念对连续微分形式有意义。■

在定理 VIII.3.8 中我们已经看到，若 $ X $ 是星形的，则每个闭普法夫形式都是恰当的。在下文中，我们将证明庞加莱的这个“引理”在一般情形下也成立。

令 $ I := [0,1] $，并令 $ t $ 为 $ I $ 中的一般点。对 $ \ell \in \{0,1\} $，单射
\[ i_{\ell} : X \to I \times X ,\quad x \mapsto (\ell, x) \]
是光滑的。显然，$ i_{0} $ 与 $ i_{1} $ 分别把 $ X $ 与 $ X $ 上的柱体 $ I \times X $ 的“底” $ \{0\} \times X $ 和“顶” $ \{1\} \times X $ 等同起来。因此\footnote{因为偏导数 $ \partial_{t} $ 定义在 $ I $ 上，所以微分形式在 $ I \times X $ 上如何定义是清楚的。注意 $ I \times X $ 是带边流形，并见第 4 节。}
\[ i_{\ell}^{\ast} : \Omega^{r}(I \times X) \to \Omega^{r}(X) \]
有定义。对 $ \alpha \in \Omega(I \times X) $，形式 $ i_{0}^{\ast}\alpha $（或 $ i_{1}^{\ast}\alpha $）是 $ \alpha $ 到 $ X $ 的限制。它可通过把 $ \alpha $ 的典范基表示中的系数里的 $ (t,x) $ 换为 $ (0,x) $（或 $ (1,x) $），并删去所有出现 $ dt $ 的项而得到（见例 3.4(j)）。

我们定义线性映射
\[ K : \Omega^{r+1}(I \times X) \to \Omega^{r}(X) \]
为
\[ K\alpha := \sum_{(j)\in\mathbb{J}_{r}} \int_{0}^{1} a_{(j)}(t, \cdot)\, dt\, dx^{(j)} \tag{3.16} \]
其中
\[ \alpha = \sum_{(j)\in\mathbb{J}_{r}} a_{(j)}\, dt \wedge dx^{(j)} + \sum_{(k)\in\mathbb{J}_{r+1}} b_{(k)}\, dx^{(k)}. \tag{3.17} \]

3.9 引理 $ K $ 是良定义的，并且满足
\[ K \circ d + d \circ K = i_{1}^{\ast} - i_{0}^{\ast}. \tag{3.18} \]

证明 关于含参积分可微性的定理（定理 X.3.18）容易推出，由 (3.16) 对 (3.17) 中的 $ \alpha $ 所定义的 $ K\alpha $ 属于 $ \Omega^{r}(X) $。显然映射 $ K $ 也是线性的。

为证明 (3.18)，只需考虑 $ \alpha = a\,dt \wedge dx^{(j)} $ 与 $ \alpha = b\,dx^{(k)} $ 这两种情形，其中 $ (j) \in \mathbb{J}_{r} $，$ (k) \in \mathbb{J}_{r+1} $。

(i) 令 $ \alpha = a\,dt \wedge dx^{(j)} $。则 $ i_{0}^{\ast}\alpha = i_{1}^{\ast}\alpha = 0 $。我们还得到
\[ \begin{aligned} K d\alpha &= K(da \wedge dt \wedge dx^{(j)}) = K\left( \sum_{\ell=1}^{m} \partial_{x^{\ell}} a\, dx^{\ell} \wedge dt \wedge dx^{(j)} \right) \\ &= -\sum_{\ell=1}^{m} \int_{0}^{1} \partial_{x^{\ell}} a(t, \cdot)\, dt\, dx^{\ell} \wedge dx^{(j)}, \end{aligned} \]
其中我们用了 $ dt \wedge dt \wedge dx^{(j)} = 0 $。另一方面，定理 X.3.18 给出
\[ d(K\alpha) = d\left( \int_{0}^{1} a(t, \cdot)\, dt\, dx^{(j)} \right) = \sum_{\ell=1}^{m} \int_{0}^{1} \partial_{x^{\ell}} a(t, \cdot)\, dt\, dx^{\ell} \wedge dx^{(j)}. \]
这就证明了本情形的断言。

(ii) 令 $ \alpha = b\,dx^{(k)} $，其中 $ (k) \in \mathbb{J}_{r+1} $。则 $ K\alpha = 0 $，因此 $ dK\alpha = 0 $。此外，我们求得
\[ d\alpha = \partial_{t} b\, dt \wedge dx^{(k)} + \sum_{\ell=1}^{m} \partial_{x^{\ell}} b\, dx^{\ell} \wedge dx^{(k)} \]
以及
\[ K d\alpha = \int_{0}^{1} \partial_{t} b(\tau, \cdot)\, d\tau\, dx^{(k)} = (b(1, \cdot) - b(0, \cdot))\, dx^{(k)} = i_{1}^{\ast}\alpha - i_{0}^{\ast}\alpha, \]
所以本情形的断言也成立。■

设 $ M $ 与 $ N $ 是流形。若存在映射\footnote{注意 $ I \times M $ 是带边流形。} $ h \in C^{\infty}(I \times M, N) $，即一个**同伦**，使得 $ h(j, \cdot) = f_{j} $（$ j = 0, 1 $），则称两个映射 $ f_{0}, f_{1} \in C^{\infty}(M, N) $ 在 $ N $ 中**同伦**。若映射 $ f \in C^{\infty}(M, N) $ 在 $ N $ 中同伦于常值映射，则称它在 $ N $ 中是**零同伦的**。最后，若从 $ M $ 到 $ M $ 的恒等映射是零同伦的，则称 $ M $ 是**可缩的**。

3.10 注 (a) 语句“$ f_{1} $ 在 $ N $ 中同伦于 $ f_{2} $”在 $ C^{\infty}(M, N) $ 中（或更一般地，在 $ C^{k}(M, N) $ 中）定义了一个等价关系。

(b)（连续）同伦的概念显然推广了环路同伦的想法（见第 VIII.4 节）。

(c) 每个星形开集都是可缩的。

证明 设 $ X $ 关于 $ x_{0} \in X $ 是星形的。则
\[ h : I \times X \to X ,\quad (t, x) \mapsto x_{0} + t(x - x_{0}) \]
显然是同伦，且 $ h(0, \cdot) = x_{0} $，$ h(1, \cdot) = \mathrm{id}_{X} $。■

(d)（正则性）对 $ k \in \mathbb{N}^{\times} $，若出现的所有函数都属于 $ C^{k} $ 类，则上述定义对 $ C^{k} $ 流形 $ M $ 与 $ N $ 有意义。若 $ M $ 与 $ N $ 是拓扑空间且所考虑的所有函数都连续，则这些定义也有意义。■

我们现在可以容易地证明广义庞加莱引理。

3.11 定理（庞加莱引理）若 $ X $ 可缩，则 $ X $ 上每个闭微分形式都是恰当的。

证明 设 $ \alpha \in \Omega^{r+1}(X) $ 是闭的。因为 $ X $ 可缩，存在 $ h \in C^{\infty}(I \times X, X) $ 使得 $ h(1, \cdot) = \mathrm{id}_{X} $，且对某个 $ p \in X $ 有 $ h(0, \cdot) = p $。因为 $ \alpha $ 是闭的，$ h^{\ast}\alpha \in \Omega^{r+1}(I \times X) $ 也是闭的，因为 $ d \circ h^{\ast} = h^{\ast} \circ d $。因此由引理 3.9 推出
\[ d(Kh^{\ast}\alpha) = i_{1}^{\ast}h^{\ast}\alpha - i_{0}^{\ast}h^{\ast}\alpha = (h \circ i_{1})^{\ast}\alpha = \alpha. \]
这是因为 $ h \circ i_{1} = \mathrm{id}_{X} $，且根据例 3.4(i)，$ i_{0}^{\ast}h^{\ast}\alpha = (h \circ i_{0})^{\ast}\alpha $ 是零形式。■

我们应当指出，庞加莱引理的证明给出了一个构造给定闭微分形式的原函数的显式程序。当 $ X $ 是星形时情形特别简单，此时我们可以不失一般性地（通过作适当的平移）假设 $ X $ 关于 $ 0 $ 是星形的。

3.12 推论 设 $ X $ 关于 $ 0 $ 是星形的。设 $ r \in \mathbb{N}^{\times} $，并设
\[ \alpha = \sum_{(j)\in\mathbb{J}_{r}} a_{(j)}\, dx^{(j)} \in \Omega^{r}(X) \]
是闭的。又令
\[ \beta := \sum_{(j)\in\mathbb{J}_{r}} \sum_{k=1}^{r} (-1)^{k-1} \int_{0}^{1} t^{r-1} a_{(j)}(tx)\, dt\, x^{j_{k}} dx^{j_{1}} \wedge \cdots \wedge \widehat{dx^{j_{k}}} \wedge \cdots \wedge dx^{j_{r}}. \tag{3.19} \]
则 $ \beta $ 属于 $ \Omega^{r-1}(X) $，且 $ d\beta = \alpha $。

证明 在本情形中，$ h(t, x) := tx $（$ (t, x) \in I \times X $）定义了“$ X $ 到 $ 0 $ 的收缩”。由 $ dh^{j} = x^{j}\, dt + t\, dx^{j} $ 与例 3.4(b) 推出
\[ \begin{aligned} h^{\ast}\alpha(t, x) &= \sum_{(j)\in\mathbb{J}_{r}} a_{(j)}(tx) t^{r}\, dx^{(j)} \\ &\quad + \sum_{(j)\in\mathbb{J}_{r}} \sum_{k=1}^{r} (-1)^{k-1} a_{(j)}(tx) t^{r-1} x^{j_{k}}\, dt \wedge dx^{j_{1}} \wedge \cdots \wedge \widehat{dx^{j_{k}}} \wedge \cdots \wedge dx^{j_{r}}, \end{aligned} \]
因为那些 $ dt $ 至少出现两次的项为零。由 (3.16) 与 (3.17) 推出 $ \beta = Kh^{\ast}\alpha $，而断言现在由庞加莱引理的证明推出。■

3.13 注 (a) 当 $ r = 1 $ 时，即当 $ \alpha $ 是普法夫形式时，$ \beta $ 的公式与 (VIII.3.4) 中的情形相同。

(b) 令 $ m = 3 $，且
\[ \alpha = a_{1}\, dx^{2} \wedge dx^{3} + a_{2}\, dx^{3} \wedge dx^{1} + a_{3}\, dx^{1} \wedge dx^{2} \in \Omega^{2}(X). \]
则求 $ \beta = \sum_{j=1}^{3} b_{j}\, dx^{j} $ 使 $ d\beta = \alpha $ 的问题，等价于求三个函数 $ b_{1}, b_{2}, b_{3} \in \mathcal{E}(X) $ 使之满足 $ X $ 中的偏微分方程组
\[ \begin{aligned} \partial_{1} b_{2} - \partial_{2} b_{1} &= a_{3}, \\ \partial_{2} b_{3} - \partial_{3} b_{2} &= a_{1}, \\ \partial_{3} b_{1} - \partial_{1} b_{3} &= a_{2} \end{aligned} \tag{3.20} \]
的问题。然后，对给定的 $ a_{j} \in \mathcal{E}(X) $，
\[ \partial_{1} a_{1} + \partial_{2} a_{2} + \partial_{3} a_{3} = 0 \tag{3.21} \]
是 (3.20) 有解所必需的。若 $ X $ 可缩（例如 $ X = \mathbb{R}^{3} $），则 (3.21) 也是充分的。

证明 由例 3.7(a)，(3.20) 等价于 $ d\beta = \alpha $。例 3.7(b) 表明 (3.21) 等价于 $ d\alpha = 0 $。现在断言由 $ d^{2} = 0 $ 与庞加莱引理推出。■

由推论 3.12 特别推出，在星形区域的情形，(3.20) 可用公式 (3.19) 通过求积解出。在一般情形，方程 $ d\beta = \alpha $ 显然也可以重新表述为等价的偏微分方程组。

当然，(3.20) 没有唯一解，因为可以给 $ \beta $ 加上一个闭形式，也就是说，可以加上把 (3.20) 右端置零所得齐次方程组的任意解 $ (b_{1}, b_{2}, b_{3}) $。

##### 张量

设 $ r, s \in \mathbb{N} $。对 $ x \in X $，令
\[ T_{s}^{r}(T_{x}X) := \{x\} \times T_{s}^{r}(\mathbb{R}^{m}) \tag{3.22} \]
并称 $ \gamma \in T_{s}^{r}(T_{x}X) $ 为 $ T_{x}X $ 上的 $ r $ 逆变、$ s $ 协变的**张量**，或类型 $ (r,s) $ 的**张量**。$ X $ 上 $ (r,s) $ 张量的**丛**定义为
\[ T_{s}^{r}(X) := \bigcup_{x\in X} T_{s}^{r}(T_{x}X) = X \times T_{s}^{r}(\mathbb{R}^{m}). \]

映射
\[ \gamma : X \to T_{s}^{r}(X) \quad \text{且} \quad \gamma(x) \in T_{s}^{r}(T_{x}X), \]
即张量丛 $ T_{s}^{r}(X) $ 的一个截面，称为 $ X $ 上的 $ (r,s) $ **张量（场）**或类型 $ (r,s) $ 的**张量**。由 (3.22)，$ X $ 上每个 $ (r,s) $ 张量 $ \gamma $ 都有唯一表示
\[ \gamma(x) = (x, \gamma(x)) \quad \text{对 } x \in X, \]
其**主部**\footnote{当 $ s = 0 $ 时，我们称之为向量部分；当 $ r = 0 $ 时，我们称之为余向量部分。张量把向量与余向量结合在一起，因此这样的术语不再可行。}为
\[ \gamma : X \to T_{s}^{r}(\mathbb{R}^{m}). \]

设 $ k \in \mathbb{N} \cup \{\infty\} $。若 $ (r,s) $ 张量 $ \gamma $ 的主部具有这一性质，即若\footnote{照例，我们把 $ T_{x}\mathbb{R}^{m} $ 和 $ T_{x}^{\ast}\mathbb{R}^{m} $ 与 $ \mathbb{R}^{m} $ 等同起来。}
\[ \gamma \in C^{k}\left(X, \mathcal{L}^{r+s}(\mathbb{R}^{m}, \mathbb{R})\right). \]
则 $ \gamma $ 属于 $ C^{k} $ 类（或当 $ k = \infty $ 时，称 $ \gamma $ 为 $ k $ 次连续可微或光滑）。

我们用
\[ \mathcal{T}_{s}^{r}(X) \]
表示 $ X $ 上所有光滑 $ (r,s) $ 张量的集合。

若 $ \boldsymbol{\alpha}_{1}, \ldots, \boldsymbol{\alpha}_{r} $ 是 $ X $ 上的普法夫形式，$ \boldsymbol{v}_{1}, \ldots, \boldsymbol{v}_{s} $ 是 $ X $ 上的向量场，其对应的主部分别为 $ \alpha_{1}, \ldots, \alpha_{r} $ 与 $ v_{1}, \ldots, v_{s} $，则我们令
\[ \gamma(\boldsymbol{\alpha}_{1}, \ldots, \boldsymbol{\alpha}_{r}, \boldsymbol{v}_{1}, \ldots, \boldsymbol{v}_{s})(x) := \gamma(x)\left(\alpha_{1}(x), \ldots, \alpha_{r}(x), v_{1}(x), \ldots, v_{s}(x)\right) \]
对 $ x \in X $。（这显然与 (3.4) 一致。）由于这些理由，我们可以沿用以前处理向量场与微分形式时所用的记号约定，也就是说，把张量与其主部等同起来，并且从现在起使用普通字体而不是粗体。

**加法**
\[ T_{s}^{r}(X) \times T_{s}^{r}(X) \to T_{s}^{r}(X) ,\quad (\gamma, \delta) \mapsto \gamma + \delta, \]

**乘以函数**
\[ \mathcal{E}(X) \times T_{s}^{r}(X) \to T_{s}^{r}(X), ,\quad (f, \gamma) \mapsto f\gamma \]

**以及张量积**
\[ T_{s_{1}}^{r_{1}}(X) \times T_{s_{2}}^{r_{2}}(X) \to T_{s_{1}+s_{2}}^{r_{1}+r_{2}}(X) ,\quad (\gamma, \delta) \mapsto \gamma \otimes \delta \tag{3.23} \]
