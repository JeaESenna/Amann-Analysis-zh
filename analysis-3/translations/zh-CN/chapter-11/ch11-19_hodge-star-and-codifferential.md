曲线长度的一个公式。现在它可以自然地推广：黎曼流形 $ M $ 上的曲线 $ \gamma: I \to M $ 的长度为

\[ \int_{I} \sqrt{g(\dot\gamma(t), \dot\gamma(t))}\, dt , \]

其中 $ \dot\gamma(t) \in T_{\gamma(t)}M $ 是“速度向量”

\[ \dot\gamma(t) = (T_{t}\gamma)(t,1) \qquad \text{对 } t \in I , \]

它位于点 $ \gamma(t) $ 处。这里我们不再展开这一主题，因为所提出的问题最好在黎曼几何的框架中处理（不过参见习题 5）。

##### 霍奇星\footnote{本章其余部分初读时可以跳过。}

设 $ (M,g) $ 是黎曼流形，$ \omega_{M} $ 是 $ M $ 的体积元。对 $ 0 \le r \le m $，我们定义双线性映射

\[ (\cdot \mid \cdot)_{g,r}: \Omega^{r}(M) \times \Omega^{r}(M) \to \mathcal{E}(M) \tag{5.16} \]

为

\[ (\alpha \mid \beta)_{g,r}(p) := (\alpha(p) \mid \beta(p))_{g(p),r} \qquad \text{对 } p \in M \text{ 且 } \alpha, \beta \in \Omega^{r}(M) , \tag{5.17} \]

其中 $ (\cdot \mid \cdot)_{g(p),r} $ 表示 (2.14) 与 (2.15) 中引入的 $ \bigwedge^{r}T_{p}^{*}M $ 上的标量积。**霍奇星算子**（或简称霍奇星）

\[ \ast: \Omega^{r}(M) \to \Omega^{m-r}(M) , \quad \alpha \mapsto \ast\alpha \tag{5.18} \]

也是按点定义的：

\[ (\ast\alpha)(p) := \ast\alpha(p) \qquad \text{对 } p \in M \text{ 且 } \alpha \in \Omega(M) . \]

5.6 注 (a) 映射 (5.16) 是良定义的、双线性的、对称的，且为正。

证明 我们只需证明对 $ \alpha, \beta \in \Omega^{r}(M) $，$ (\alpha \mid \beta)_{g,r} $ 属于 $ \mathcal{E}(M) $，因为其余断言可由 $ (\cdot \mid \cdot)_{g(p),r} $ 的性质推出。因此设 $ (\varphi, U) $ 是 $ M $ 的正向坐标卡。根据注 5.4(f)，我们可以在 $ U $ 上选取定向标准正交标架 $ (v_{1},\ldots,v_{m}) $。设 $ (\eta^{1},\ldots,\eta^{m}) $ 是其对偶标架。则注 3.1(e) 推出

\[ \alpha|U = \sum_{(j)\in\mathbb{J}_{r}} \alpha_{(j)}\eta^{j_{1}} \wedge \cdots \wedge \eta^{j_{r}} \tag{5.19} \]

其中

\[ \alpha_{(j)} = \alpha(v_{j_{1}},\ldots,v_{j_{r}}) \in \mathcal{E}(U) \qquad \text{对 } (j) \in \mathbb{J}_{r} . \tag{5.20} \]

现在断言由 (2.14)、(2.15) 与注 2.15(c) 推出。■

(b) 星算子是良定义的 $ \mathcal{E}(M) $ 模同构，且

\[ \ast\ast\alpha = (-1)^{r(m-r)}\alpha \qquad \text{对 } \alpha \in \Omega^{r}(M) . \tag{5.21} \]

证明 因为 (5.21) 由例 2.17(e) 与按点定义 (5.18) 推出，又因为 (5.21) 也表明星算子是双射，所以只需证明 $ \ast\alpha $ 是光滑的。于是设 $ (\varphi, U) $ 是 $ M $ 的正向坐标卡。如同 (a) 的证明，设 $ (v_{1},\ldots,v_{m}) $ 是 $ U $ 上的标准正交标架，并设 $ (\eta^{1},\ldots,\eta^{m}) $ 是其对偶标架。则由 (5.19)、(5.20) 以及例 2.17(d) 中 $ \ast\alpha $ 的显式表示可得 $ \ast\alpha|U \in \mathcal{E}(U) $。■

(c) 对 $ \alpha, \beta \in \Omega^{r}(M) $，有

\[ \alpha \wedge \ast\beta = \beta \wedge \ast\alpha = (\alpha \mid \beta)_{g,r}\,\omega_{M} . \tag{5.22} \]

证明 这可由例 2.17(f) 以及所有涉及运算的按点定义直接推出。■

(d) $ \ast 1 = \omega_{M} $ 且 $ \ast\omega_{M} = 1 $。

(e)（正则性）显然，当 $ M $ 是 $ C^{k+1} $ 流形并将 $ \Omega(M) $ 换为 $ \Omega_{(k)}(M) $ 时，上述断言仍然成立。■

利用星算子的按点定义，我们可以把例 2.17 的其他公式搬到当前情形。下面的例子汇集了若干由此得到的法则。

设 $ ((x^{1},\ldots,x^{m}),U) $ 是 $ M $ 的坐标卡。当 $ (\partial_{1},\ldots,\partial_{m}) $ 是 $ U $ 上的标准正交标架时，我们说 $ (x^{1},\ldots,x^{m}) $ 是 $ U $ 上的**标准正交坐标**。若 $ \partial_{j} $ 不必是标准化的，即我们只知道当 $ j \ne k $ 时 $ g(\partial_{j},\partial_{k}) = 0 $，则称这些坐标是**正交的**。

5.7 例 在这些例子中，$ (x^{1},\ldots,x^{m}) $ 是 $ U \subset M $ 上的标准正交坐标，且 $ \alpha \in \Omega(U) $。

(a) 欧几里得坐标是标准正交坐标。极坐标、球坐标与伪球坐标是正交坐标。

证明 这由例 5.5 推出。■

(b) $ \ast\sum_{j} a_{j}\,dx^{j} = \sum_{j=1}^{m}(-1)^{j-1}a_{j}\,dx^{1} \wedge \cdots \wedge \widehat{dx^{j}} \wedge \cdots \wedge dx^{m} $。

(c) $ \ast\sum_{j}(-1)^{j-1}a_{j}\,dx^{1} \wedge \cdots \wedge \widehat{dx^{j}} \wedge \cdots \wedge dx^{m} = (-1)^{m-1}\sum_{j}a_{j}\,dx^{j} $。

(d) 对 $ m = 3 $，有

\[ \ast d\Bigl(\sum_{j} a_{j}\,dx^{j}\Bigr) = (\partial_{2}a_{3} - \partial_{3}a_{2})\,dx^{1} + (\partial_{3}a_{1} - \partial_{1}a_{3})\,dx^{2} + (\partial_{1}a_{2} - \partial_{2}a_{1})\,dx^{3} . \]

证明 这由例 3.7(a)（以及 (4.16) 之后的注）推出，因为 (2.20) 蕴含关系

\[ \ast(dx^{2} \wedge dx^{3}) = dx^{1} , \quad \ast(dx^{3} \wedge dx^{1}) = dx^{2} , \quad \ast(dx^{1} \wedge dx^{2}) = dx^{3} . \quad \blacksquare \]

当然，即使在非标准正交坐标下，我们也可以显式计算 $ \ast\sum_{(j)\in\mathbb{J}_{r}}a_{(j)}\,dx^{(j)} $。为简单起见，我们只考虑 1 形式的情形。

5.8 命题 设 $ ((x^{1},\ldots,x^{m}),U) $ 是 $ M $ 的正向坐标卡。则

\[ \ast dx^{j} = \sum_{k}(-1)^{k-1}g^{jk}\sqrt{G}\,dx^{1} \wedge \cdots \wedge \widehat{dx^{k}} \wedge \cdots \wedge dx^{m} . \]

证明 因为 $ \ast dx^{j} \in \Omega^{m-1}(U) $，例 3.2(b) 保证存在 $ a_{j\ell} \in \mathcal{E}(U) $，使得

\[ \ast dx^{j} = \sum_{\ell}(-1)^{\ell-1}a_{j\ell}\,dx^{1} \wedge \cdots \wedge \widehat{dx^{\ell}} \wedge \cdots \wedge dx^{m} . \]

这给出

\[ \begin{aligned} dx^{k} \wedge \ast dx^{j} &= \sum_{\ell}(-1)^{\ell-1}a_{j\ell}\,dx^{k} \wedge dx^{1} \wedge \cdots \wedge \widehat{dx^{\ell}} \wedge \cdots \wedge dx^{m} \\ &= a_{jk}\,dx^{1} \wedge \cdots \wedge dx^{m} . \end{aligned} \tag{5.23} \]

由注 2.14(b) 得 $ (dx^{j} \mid dx^{k})_{g,1} = g^{jk} $。于是注 5.6(c) 给出

\[ dx^{k} \wedge \ast dx^{j} = g^{kj}\omega_{M} = g^{jk}\sqrt{G}\,dx^{1} \wedge \cdots \wedge dx^{m} , \tag{5.24} \]

其中最后一个等式由注 5.4(c) 推出。现在断言由 (5.23) 与 (5.24) 推出。■

##### 余微分

设 $ (M,g) $ 是定向黎曼流形。为避免例外情形，我们置 $ \Omega^{-1}(M) := \{0\} $，于是由于 $ \Omega^{m+1}(M) = \{0\} $，我们也可以定义星运算 $ \ast: \Omega^{m+1}(M) \to \Omega^{-1}(M) $。借助（如此延拓的）星算子与外微分，我们对 $ 0 \le r \le m $ 定义**余微分**

\[ \delta: \Omega^{r}(M) \to \Omega^{r-1}(M) \]

由\footnote{经常用规范化因子 $ (-1)^{m(r+1)+1} $ 代替 $ (-1)^{m(r+1)} $，特别是在微分几何中。我们这样选择的原因将在注 6.23(c) 中说明。}

\[ \delta\alpha := (-1)^{m(r+1)}\ast d\ast\alpha \qquad \text{对 } \alpha \in \Omega^{r}(M) . \]

换言之，我们要求图表

\[ \begin{array}{ccc} \Omega^{r}(M) & \xrightarrow{\ast} & \Omega^{m-r}(M) \\ (-1)^{m(r+1)}\delta\downarrow & & \downarrow d \\ \Omega^{r-1}(M) & \xleftarrow{\ast} & \Omega^{m-r+1}(M) \end{array} \]

可交换。

下列注列出余微分的若干性质。

5.9 注 (a) $ \delta^{2} = 0 $。

证明 因为 $ \ast\ast\alpha = (-1)^{r(m-r)}\alpha $，我们有 $ \delta\delta\alpha = \pm\ast d\ast\ast d\ast\alpha = \pm\ast d^{2}\ast\alpha = 0 $，因为 $ d^{2} = 0 $。■

(b) $ \ast\delta d = d\delta\ast $ 且 $ \ast d\delta = \delta d\ast $。

证明 若 $ \alpha \in \Omega^{r}(M) $，则 $ d\alpha $ 属于 $ \Omega^{r+1}(M) $。因此

\[ \ast\delta d\alpha = (-1)^{m(r+2)}\ast\ast d\ast d\alpha = (-1)^{mr}\ast\ast d\ast d\alpha . \]

因为 $ d\ast d\alpha \in \Omega^{m-r}(M) $，我们于是得到 $ \ast\delta d\alpha = (-1)^{-r^{2}}d\ast d\alpha $。类似地，

\[ d\delta\ast\alpha = (-1)^{m(m-r+1)}d\ast d\ast\ast\alpha = (-1)^{m(m+1)-r^{2}}d\ast d\alpha . \]

因为 $ m(m+1) $ 是偶数，这证明了第一个断言。第二个断言类似可得。■

(c) $ d\ast\delta = \delta\ast d = 0 $。

证明 我们把这一简单证明留给你。■

(d) 对 $ \alpha \in \Omega^{r}(M) $，$ \ast\delta\alpha = (-1)^{r+1}d\ast\alpha $ 且 $ \delta(\ast\alpha) = (-1)^{r}\ast d\alpha $。

证明 第一个断言由

\[ \ast\delta\alpha = (-1)^{m(r+1)}\ast\ast d\ast\alpha = (-1)^{mr+m}(-1)^{(m-r+1)(r-1)}d\ast\alpha = (-1)^{r+1}d\ast\alpha \]

推出。第二个断言由类似计算推出。■

(e)（正则性）由 $ \delta $ 的定义以及注 4.11(b) 与 5.6(e) 立即推出：对 $ 1 \le r \le m $ 与 $ k \in \mathbb{N}^{\times} $，$ \delta $ 是从 $ \Omega^{r}_{(k)} $ 到 $ \Omega^{r-1}_{(k-1)} $ 的 $ \mathbb{R} $ 线性映射。这对 $ C^{k+1} $ 流形仍然成立。■

5.10 例 设 $ ((x^{1},\ldots,x^{m}),U) $ 是 $ M $ 的正向坐标卡。

(a) 对 $ \alpha = \sum_{j} a_{j}\,dx^{j} \in \Omega^{1}(U) $，有

\[ \delta\alpha = \frac{1}{\sqrt{G}}\sum_{j,k}\frac{\partial}{\partial x^{j}}\bigl(g^{jk}a_{k}\sqrt{G}\bigr) \in \mathcal{E}(U) . \]

证明 由命题 5.8 可得

\[ \ast\alpha = \sum_{j} a_{j}\sum_{k}(-1)^{k-1}g^{jk}\sqrt{G}\,dx^{1} \wedge \cdots \wedge \widehat{dx^{k}} \wedge \cdots \wedge dx^{m} . \]

由此（因为 $ r = 1 $）我们推出

\[ \begin{aligned} \delta\alpha = \ast d\ast\alpha &= \ast\sum_{j}\sum_{k}\sum_{\ell}(-1)^{k-1}\frac{\partial}{\partial x^{\ell}}\bigl(a_{j}g^{jk}\sqrt{G}\bigr)\,dx^{\ell} \wedge dx^{1} \wedge \cdots \wedge \widehat{dx^{k}} \wedge \cdots \wedge dx^{m} \\ &= \ast\sum_{j,k}\frac{\partial}{\partial x^{j}}\bigl(g^{jk}a_{k}\sqrt{G}\bigr)\,dx^{1} \wedge \cdots \wedge dx^{m} . \end{aligned} \]

现在断言由

\[ dx^{1} \wedge \cdots \wedge dx^{m} = \frac{1}{\sqrt{G}}\omega_{M} \tag{5.25} \]

以及注 5.6(d) 推出。■

(b) 对标准正交坐标 $ (x^{1},\ldots,x^{m}) $，由 (a) 推出

\[ \delta\Bigl(\sum_{j}a_{j}\,dx^{j}\Bigr) = \sum_{j}\partial_{j}a_{j} . \]

(c) 对 $ a \in \mathcal{E}(M) $，$ \delta a = 0 $。

(d)

\[ \delta(a\,dx^{1} \wedge \cdots \wedge dx^{m}) = \sum_{j,k}(-1)^{k-1}\frac{\partial}{\partial x^{j}}\Bigl(\frac{a}{\sqrt{G}}\Bigr)g^{jk}\sqrt{G}\,dx^{1} \wedge \cdots \wedge \widehat{dx^{k}} \wedge \cdots \wedge dx^{m} . \]

证明 利用 (5.25) 与注 5.6(d)，我们得到

\[ \ast(a\,dx^{1} \wedge \cdots \wedge dx^{m}) = a/\sqrt{G} . \]

因此

\[ \ast d\ast(a\,dx^{1} \wedge \cdots \wedge dx^{m}) = \ast\sum_{j}\frac{\partial}{\partial x^{j}}\Bigl(\frac{a}{\sqrt{G}}\Bigr)dx^{j} . \]

现在断言由命题 5.8 推出。■

(e) 在标准正交坐标下，有

\[ \delta\sum_{(j)\in\mathbb{J}_{r}}a_{(j)}\,dx^{(j)} = \sum_{(j)\in\mathbb{J}_{r}}\sum_{k=1}^{r}(-1)^{k-1}\partial_{j_{k}}a_{(j)}\,dx^{1} \wedge \cdots \wedge \widehat{dx^{j_{k}}} \wedge \cdots \wedge dx^{j_{r}} . \]

证明 由于线性性，只需考虑 $ \alpha = a\,dx^{(j)} $，其中 $ (j) \in \mathbb{J}_{r} $。由 (2.20) 与定理 4.10(ii)，我们得到

\[ d\ast\alpha = s(j)\,da \wedge dx^{(j^{c})} = s(j)\sum_{k=1}^{r}\partial_{j_{k}}a\,dx^{j_{k}} \wedge dx^{(j^{c})} . \]

因此例 2.17(d) 蕴含

\[ \ast d\ast\alpha = s(j)\sum_{k=1}^{r}s\bigl(j_{k},(j^{c})\bigr)\partial_{j_{k}}a\,dx^{j_{1}} \wedge \cdots \wedge \widehat{dx^{j_{k}}} \wedge \cdots \wedge dx^{j_{r}} \]

其中 $ s(j_{k},(j^{c})) := \operatorname{sign}\bigl(j_{k},(j^{c}),j_{1},\ldots,\widehat{j_{k}},\ldots,j_{r}\bigr) $。因为 $ (j^{c}) $ 由 $ m-r $ 个元素组成，由此推出

\[ \begin{aligned} s(j_{k},(j^{c})) &= (-1)^{(m-r)(r-1)}\operatorname{sign}\bigl(j_{k},j_{1},\ldots,\widehat{j_{k}},\ldots,j_{r},(j^{c})\bigr) \\ &= (-1)^{(m-r)(r-1)+k-1}s(j) . \end{aligned} \]

由于（mod 2）同余

\[ (m-r)(r-1)+k-1+m(r+1) \equiv k-r(r+1)-1 \equiv k-1 , \]

断言于是由 $ \delta $ 的定义推出。■

5.11 注 (a) 通过作适当修改，上述星算子与余微分的性质可以推广到伪黎曼流形的情形。

更确切地说，设 $ (M,g) $ 是定向伪黎曼流形。我们可以给 $ T_{p}M $ 配备由 $ \mathbb{R}^{m} $ 的内积诱导的内积。由注 2.18(a) 推出，$ g(p) $ 在任意 $ p \in M $ 处的表示矩阵 $ g $ 在适当选择的基下是对角的，且其对角元为 $ \pm 1 $。现在 $ (-1)^{s} = \operatorname{sign}g(p) $ 由 $ g(p) $ 唯一确定，其中 $ s $ 表示负元素的个数。我们现在假设 $ \operatorname{sign}(g) = \operatorname{sign}g(p) $ 在 $ M $ 上是常数，即它与 $ p $ 无关。由注 5.4(f)（的证明）推出，若 $ M $ 可由单个坐标卡描述，则该假设成立。

在此假设下，通过 (2.25) 定义的星算子也可以按点定义。此时 (5.21) 与 (5.22) 必须分别换为

\[ \ast\ast\alpha = \operatorname{sign}(g)(-1)^{r(m-r)}\alpha \qquad \text{对 } \alpha \in \Omega^{r}(M) , \]

以及

\[ \alpha \wedge \ast\beta = \beta \wedge \ast\alpha = \operatorname{sign}(g)(\alpha \mid \beta)_{g,r}\,\omega_{M} \qquad \text{对 } \alpha, \beta \in \Omega^{r}(M) , \]

正如我们从注 2.19(d) 与 (e) 分别得知的那样。这里 $ \omega_{M} $ 是注 5.4(g) 中定义的 $ M $ 的体积元。注 2.19(c) 还蕴含

\[ \ast 1 = \operatorname{sign}(g)\omega_{M} \qquad \text{对 } \ast\omega_{M} = 1 . \]

在此情形下，余微分定义为

\[ \delta\alpha := \operatorname{sign}(g)(-1)^{m(r+1)}\ast d\ast\alpha \qquad \text{对 } \alpha \in \Omega^{r}(M) . \tag{5.26} \]

我们容易验证，经过这些修改，注 5.6 的断言仍按原文成立。

证明 这些断言由注 2.19 推出。■

(b) 设 $ ((x^{1},\ldots,x^{m}),U) $ 是 $ M $ 的正向坐标卡。则

\[ \delta\sum_{j}a_{j}\,dx^{j} = \frac{1}{\sqrt{|G|}}\sum_{j,k}\frac{\partial}{\partial x^{j}}\bigl(g^{jk}a_{k}\sqrt{|G|}\bigr) \in \mathcal{E}(U) . \]

证明 这可由注 5.4(g) 推出，类似于例 5.10(a) 的证明。■

5.12 例 我们现在考虑闵可夫斯基空间 $ \mathbb{R}^{4}_{1,3} $，其度量为 $ (\cdot \mid \cdot)_{1,3} $，因此 $ g := (dt)^{2} - (dx)^{2} - (dy)^{2} - (dz)^{2} $。

(a) 若 $ (i,j,k) $ 是 $ (1,2,3) $ 的循环置换，则令 $ (x^{1},x^{2},x^{3}) := (x,y,z) $，有

\[ \ast(dx^{i} \wedge dt) = dx^{j} \wedge dx^{k} \qquad \text{与} \qquad \ast(dx^{i} \wedge dx^{j}) = -dx^{k} \wedge dt . \]

证明 设 $ (e_{0},e_{1},e_{2},e_{3}) $ 是 $ \mathbb{R}^{4}_{1,3} $ 的标准基。则

\[ g(e_{0},e_{0}) = 1 \qquad \text{与} \qquad g(e_{j},e_{j}) = -1 \qquad \text{对 } 1 \le j \le 3 . \]

这意味着

\[ (dt \mid dt)_{g,1} = 1 \qquad \text{与} \qquad (dx^{j} \mid dx^{j})_{g,1} = -1 . \]

因此

\[ (dt \wedge dx^{j} \mid dt \wedge dx^{j})_{g,2} = -1 \qquad \text{与} \qquad (dx^{j} \wedge dx^{k} \mid dx^{j} \wedge dx^{k})_{g,2} = 1 \qquad \text{对 } 1 \le j < k \le 3 . \]

现在断言由注 2.19(c) 推出。■

(b) 设 $ E_{j}, H_{j} \in \mathcal{E}(\mathbb{R}^{4}_{1,3}) $ 且

\[ \begin{aligned} \alpha &:= (E_{1}dx^{1} + E_{2}dx^{2} + E_{3}dx^{3}) \wedge dt \\ &\quad + H_{1}dx^{2} \wedge dx^{3} + H_{2}dx^{3} \wedge dx^{1} + H_{3}dx^{1} \wedge dx^{2} . \end{aligned} \]

则

\[ \begin{aligned} \ast\alpha &= -(H_{1}dx^{1} + H_{2}dx^{2} + H_{3}dx^{3}) \wedge dt \\ &\quad + E_{1}dx^{2} \wedge dx^{3} + E_{2}dx^{3} \wedge dx^{1} + E_{3}dx^{1} \wedge dx^{2} . \end{aligned} \]

证明 这是 (a) 与星算子的 $ \mathcal{E}(\mathbb{R}^{4}_{1,3}) $ 线性性的直接推论。■

(c) (b) 中的 $ \alpha $ 满足

\[ \delta\alpha = \sum_{j=1}^{3}\frac{\partial E_{j}}{\partial t}\,dx^{j} - \sum_{k=1}^{3}\frac{\partial E_{k}}{\partial x^{k}}\,dt + \sum_{(i,j,k)}\Bigl(\frac{\partial H_{i}}{\partial x^{j}} - \frac{\partial H_{j}}{\partial x^{i}}\Bigr)dx^{k} , \]

其中最后一项对所有 $ (1,2,3) $ 的循环置换求和。

证明 由 (b) 可知

\[ \ast\alpha = -\sum_{i=1}^{3}H_{i}\,dx^{i} \wedge dt + \sum_{(i,j,k)}E_{i}\,dx^{j} \wedge dx^{k} . \]

这意味着

\[ \begin{aligned} d\ast\alpha &= -\sum_{i=1}^{3}\sum_{\substack{j=1 \\ j \ne i}}^{3}\frac{\partial H_{i}}{\partial x^{j}}\,dx^{j} \wedge dx^{i} \wedge dt \\ &\quad + \sum_{(i,j,k)}\Bigl(\frac{\partial E_{i}}{\partial t}\,dt \wedge dx^{j} \wedge dx^{k} + \frac{\partial E_{i}}{\partial x^{i}}\,dx^{i} \wedge dx^{j} \wedge dx^{k}\Bigr) . \end{aligned} \]
