## 4 多重线性映射

设 $ E $ 与 $ F $ 为巴拿赫空间，$ X $ 是 $ E $ 的开子集。对 $ f \in C^1(X, F) $，有 $ \partial f \in C(X, \mathcal{L}(E, F)) $。令 $ g := \partial f $ 且 $ \mathbb{F} := \mathcal{L}(E, F) $。依定理 1.1，$ \mathbb{F} $ 是巴拿赫空间，因此我们可以研究映射 $ g \in C(X, \mathbb{F}) $ 的可微性。若 $ g $ [连续]可微，则称 $ f $ 二次[连续]可微，而 $ \partial^2 f := \partial g $ 是 $ f $ 的二阶导数。于是

\[ \partial^2 f(x) \in \mathcal{L}(E, \mathcal{L}(E, F)) \qquad \text{对 } x \in X . \]

定理 1.1 表明 $ \mathcal{L}(E, \mathcal{L}(E, F)) $ 也是巴拿赫空间。因此我们可以研究三阶导数 $ \partial^3 f := \partial(\partial^2 f) $（若其存在），并同样求得

\[ \partial^3 f(x) \in \mathcal{L}(E, \mathcal{L}(E, \mathcal{L}(E, F))) \qquad \text{对 } x \in X . \]

在这种记号下，随着 $ n $ 增大，$ \partial^n f $ 所占据的空间显然变得越来越复杂。然而，情况并不像看上去那样糟糕。我们将证明，这个看似复杂的空间 $ \mathcal{L}(E, \mathcal{L}(E, \ldots, \mathcal{L}(E, F) \cdots)) $（其中 $ E $ 出现 $ n $ 次）等距同构于从 $ E \times \cdots \times E $（同样有 $ n $ 个 $ E $）到 $ F $ 的所有连续多重线性映射的空间。因此，多重线性映射是理解高阶导数的恰当框架。

##### 连续的多重线性映射

在下文中，对 $ m \ge 2 $ 的 $ E_1, \ldots, E_m $、$ E $ 与 $ F $ 都是域 $ \mathbb{K} $ 上的巴拿赫空间。映射 $ \varphi : E_1 \times \cdots \times E_m \to F $ 是**多重线性**的，或等价地，是 $ m $ 线性的\footnote{当 $ m = 2 $ [或 $ m = 3 $] 时，称其为双线性 [或三线性] 映射。}，若对每个 $ k \in \{1, \ldots, m\} $ 以及满足 $ j = 1, \ldots, m $ 且 $ j \ne k $ 的任意选取 $ x_j \in E_j $，映射

\[ \varphi(x_1, \ldots, x_{k-1}, \cdot, x_{k+1}, \ldots, x_m) : E_k \to F \]

是线性的，也就是说，$ \varphi $ 是多重线性的，若它在每个变量上都是线性的。

首先我们证明，多重线性映射连续当且仅当它有界。\footnote{与定理 VI.2.5 比较。}

4.1 命题 对 $ m $ 线性映射 $ \varphi : E_1 \times \cdots \times E_m \to F $，下列陈述等价：
(i) $ \varphi $ 连续。
(ii) $ \varphi $ 在 $ 0 $ 处连续。
(iii) $ \varphi $ 在有界集上有界。
(iv) 存在 $ \alpha \ge 0 $ 使得

\[ \|\varphi(x_1, \ldots, x_m)\| \le \alpha\|x_1\| \cdots\cdots \|x_m\| \qquad \text{对 } x_j \in E_j ,\ 1 \le j \le m . \]

证明 “$ \text{(i)}\Rightarrow\text{(ii)} $”这一蕴含是显然的。

“$ \text{(ii)}\Rightarrow\text{(iii)} $” 假设 $ B \subset E_1 \times \cdots \times E_m $ 有界，则依例 II.3.3(c) 与注 II.3.2(a)，存在 $ \beta > 0 $，使得对 $ (x_1, \ldots, x_m) \in B $ 及 $ 1 \le j \le m $ 有 $ \|x_j\| \le \beta $。因为 $ \varphi $ 在 $ 0 $ 处连续，存在 $ \delta > 0 $，使得

\[ \|\varphi(y_1, \ldots, y_m)\| \le 1 \qquad \text{对 } y_j \in E_j ,\ \|y_j\| \le \delta ,\ 1 \le j \le m . \]

对 $ (x_1, \ldots, x_m) \in B $ 及 $ 1 \le j \le m $，令 $ y_j := \delta x_j/\beta $。则 $ \|y_j\| \le \delta $，并且

\[ (\delta/\beta)^m\|\varphi(x_1, \ldots, x_m)\| = \|\varphi(y_1, \ldots, y_m)\| \le 1 . \]

因此 $ \varphi(B) $ 有界。

“$ \text{(iii)}\Rightarrow\text{(iv)} $” 由假设，存在 $ \alpha > 0 $，使得

\[ \|\varphi(x_1, \ldots, x_m)\| \le \alpha \qquad \text{对 } (x_1, \ldots, x_m) \in \overline{\mathbb{B}} . \]

对 $ y_j \in E_j\setminus\{0\} $，令 $ x_j := y_j/\|y_j\| $。则 $ (x_1, \ldots, x_m) $ 属于 $ \overline{\mathbb{B}} $，并且我们求得

\[ \frac{1}{\|y_1\| \cdots\cdots \|y_m\|}\|\varphi(y_1, \ldots, y_m)\| = \|\varphi(x_1, \ldots, x_m)\| \le \alpha , \]

这就证明了该断言。

“$ \text{(iv)}\Rightarrow\text{(i)} $” 设 $ y = (y_1, \ldots, y_m) $ 是 $ E_1 \times \cdots \times E_m $ 中的点，$ (x^n) $ 是 $ E_1 \times \cdots \times E_m $ 中满足 $ \lim_n x^n = y $ 的序列。令 $ (x_1^n, \ldots, x_m^n) := x^n $，则由假设我们有

\[ \begin{aligned} \|\varphi(y_1, \ldots, y_m) - \varphi(x_1^n, \ldots, x_m^n)\| &\le \|\varphi(y_1 - x_1^n, y_2, \ldots, y_m)\| + \|\varphi(x_1^n, y_2 - x_2^n, y_3, \ldots, y_m)\| \\ &\quad + \cdots + \|\varphi(x_1^n, x_2^n, \ldots, y_m - x_m^n)\| \\ &\le \alpha\Big( \|y_1 - x_1^n\|\|y_2\| \cdots\cdots \|y_m\| + \|x_1^n\|\|y_2 - x_2^n\| \cdots\cdots \|y_m\| \\ &\quad + \cdots + \|x_1^n\|\|x_2^n\| \cdots\cdots \|y_m - x_m^n\| \Big) . \end{aligned} \]

因为序列 $ (x^n) $ 在 $ E_1 \times \cdots \times E_m $ 中有界，这一估计连同（命题 II.3.14 的）类似物表明，$ \varphi(x^n) $ 收敛于 $ \varphi(y) $。■

引入一个缩写记号是有用的。我们用

\[ \mathcal{L}(E_1, \ldots, E_m; F) \]

表示从 $ E_1 \times \cdots \times E_m $ 到 $ F $ 的所有连续多重线性映射之集。显然 $ \mathcal{L}(E_1, \ldots, E_m; F) $ 是 $ C(E_1 \times \cdots \times E_m, F) $ 的向量子空间。常常，所有 $ E_j $ 都相同，此时我们采用记号

\[ \mathcal{L}^m(E, F) := \mathcal{L}(E, \ldots, E; F) . \]

另外，我们令 $ \mathcal{L}^1(E, F) := \mathcal{L}(E, F) $ 以及 $ \mathcal{L}^0(E, F) := F $。最后，令

\[ \|\varphi\| := \inf\{ \alpha \ge 0 ; \|\varphi(x_1, \ldots, x_m)\| \le \alpha\|x_1\| \cdots\cdots \|x_m\|, x_j \in E_j \} \tag{4.1} \]

对 $ \varphi \in \mathcal{L}(E_1, \ldots, E_m; F) $。

4.2 定理
(i) 对 $ \varphi \in \mathcal{L}(E_1, \ldots, E_m; F) $，我们有

\[ \|\varphi\| = \sup\{ \|\varphi(x_1, \ldots, x_m)\| ; \|x_j\| \le 1,\ 1 \le j \le m \} \]

并且

\[ \|\varphi(x_1, \ldots, x_m)\| \le \|\varphi\|\|x_1\| \cdots\cdots \|x_m\| \]

对 $ (x_1, \ldots, x_m) \in E_1 \times \cdots \times E_m $。
(ii) 关系式 (4.1) 定义了一个范数，并且

\[ \mathcal{L}(E_1, \ldots, E_m; F) := (\mathcal{L}(E_1, \ldots, E_m; F), \|\cdot\|) \]

是巴拿赫空间。
(iii) 当对 $ 1 \le j \le m $ 有 $ \dim E_j < \infty $ 时，每个 $ m $ 线性映射都连续。

证明 对 $ m = 1 $，这些由命题 VI.2.3、结论 VI.2.4(e) 以及定理 1.1 与 1.6 推出。一般情形可通过对这些证明作显而易见的修改来验证，我们将其作为习题留给读者。■

##### 典范同构

$ \mathcal{L}(E_1, \ldots, E_m; F) $ 上的范数是 $ \mathcal{L}(E, F) $ 上算子范数的自然推广。下一个定理表明，这一范数在另一种意义上也是自然的。

4.3 定理 空间 $ \mathcal{L}(E_1, \ldots, E_m; F) $ 与 $ \mathcal{L}(E_1, \mathcal{L}(E_2, \ldots, \mathcal{L}(E_m, F) \cdots)) $ 等距同构。

证明 我们对 $ m = 2 $ 验证该断言。一般情形通过简单的归纳论证得到。
(i) 对 $ T \in \mathcal{L}(E_1, \mathcal{L}(E_2, F)) $ 我们令

\[ \varphi_T(x_1, x_2) := (Tx_1)x_2 \qquad \text{对 } (x_1, x_2) \in E_1 \times E_2 . \]

则 $ \varphi_T : E_1 \times E_2 \to F $ 是双线性的，并且

\[ \|\varphi_T(x_1, x_2)\| \le \|T\|\|x_1\|\|x_2\| \qquad \text{对 } (x_1, x_2) \in E_1 \times E_2 . \]

因此 $ \varphi_T $ 属于 $ \mathcal{L}(E_1, E_2; F) $，且 $ \|\varphi_T\| \le \|T\| $。

(ii) 设 $ \varphi \in \mathcal{L}(E_1, E_2; F) $。则我们令

\[ T_\varphi(x_1)x_2 := \varphi(x_1, x_2) \qquad \text{对 } (x_1, x_2) \in E_1 \times E_2 . \]

因为

\[ \|T_\varphi(x_1)x_2\| = \|\varphi(x_1, x_2)\| \le \|\varphi\|\|x_1\|\|x_2\| \qquad \text{对 } (x_1, x_2) \in E_1 \times E_2 , \]

我们得到

\[ T_\varphi(x_1) \in \mathcal{L}(E_2, F) \qquad \text{对 } \|T_\varphi(x_1)\| \le \|\varphi\|\|x_1\| \]

对每个 $ x_1 \in E_1 $。因此

\[ T_\varphi := [x_1 \mapsto T_\varphi(x_1)] \in \mathcal{L}(E_1, \mathcal{L}(E_2, F)) \quad \text{且} \quad \|T_\varphi\| \le \|\varphi\| . \]

(iii) 综上所述，我们已经证明了映射

\[ T \mapsto \varphi_T : \mathcal{L}(E_1, \mathcal{L}(E_2, F)) \to \mathcal{L}(E_1, E_2; F) \]

与

\[ \varphi \mapsto T_\varphi : \mathcal{L}(E_1, E_2; F) \to \mathcal{L}(E_1, \mathcal{L}(E_2, F)) \tag{4.2} \]

是线性的、连续的，且互为逆映射。因此它们是拓扑同构。特别地，$ T_{\varphi_T} = T $，并且我们得到

\[ \|T\| = \|T_{\varphi_T}\| \le \|\varphi_T\| \le \|T\| . \]

因此映射 $ T \mapsto \varphi_T $ 是等距。■

约定 用等距同构 (4.2) 将 $ \mathcal{L}(E_1, \ldots, E_m; F) $ 与 $ \mathcal{L}(E_1, \mathcal{L}(E_2, \ldots, \mathcal{L}(E_m, F) \cdots)) $ 等同起来。

4.4 结论 (a) 对 $ m \in \mathbb{N} $，我们有

\[ \mathcal{L}(E, \mathcal{L}^m(E, F)) = \mathcal{L}^{m+1}(E, F) . \]

证明 这由定理 4.3 与上述约定立即推出。■
(b) $ \mathcal{L}^m(E, F) $ 是巴拿赫空间。

证明 这由定理 4.3 与注 1.3(c) 推出。■

##### 对称多重线性映射

设 $ m \ge 2 $ 且 $ \varphi : E^m \to F $ 是 $ m $ 线性的。我们称 $ \varphi $ 是**对称**的，若

\[ \varphi(x_{\sigma(1)}, \ldots, x_{\sigma(m)}) = \varphi(x_1, \ldots, x_m) \]

对每个 $ (x_1, \ldots, x_m) $ 以及 $ \{1, \ldots, m\} $ 的每个置换 $ \sigma $ 成立。我们令

\[ \mathcal{L}_{\mathrm{sym}}^m(E, F) := \{ \varphi \in \mathcal{L}^m(E, F) ; \varphi \text{ 是对称的} \} . \]

4.5 命题 $ \mathcal{L}_{\mathrm{sym}}^m(E, F) $ 是 $ \mathcal{L}^m(E, F) $ 的闭向量子空间，因此它本身也是巴拿赫空间。

证明 设 $ (\varphi_k) $ 是 $ \mathcal{L}_{\mathrm{sym}}^m(E, F) $ 中的序列，在 $ \mathcal{L}^m(E, F) $ 中收敛于 $ \varphi $。对每个 $ (x_1, \ldots, x_m) \in E^m $ 以及每个置换\footnote{回顾 $ \mathrm{S}_n $ 是集合 $ \{1, \ldots, n\} $ 的置换群（见第 I.7 节末尾）。} $ \sigma \in S_m $，我们于是有

\[ \begin{aligned} \varphi(x_{\sigma(1)}, \ldots, x_{\sigma(m)}) &= \lim_k \varphi_k(x_{\sigma(1)}, \ldots, x_{\sigma(m)}) = \lim_k \varphi_k(x_1, \ldots, x_m) \\ &= \varphi(x_1, \ldots, x_m) . \end{aligned} \]

因此 $ \varphi $ 是对称的。■

##### 多重线性映射的导数

下一个定理表明，$ m $ 线性映射实际上是连续可微的，并且其导数是一些 $ (m-1) $ 线性函数的和。

4.6 命题 $ \mathcal{L}(E_1, \ldots, E_m; F) $ 是 $ C^1(E_1 \times \cdots \times E_m, F) $ 的向量子空间。并且，对 $ \varphi \in \mathcal{L}(E_1, \ldots, E_m; F) $ 及 $ (x_1, \ldots, x_m) \in E_1 \times \cdots \times E_m $，我们有

\[ \partial\varphi(x_1, \ldots, x_m)(h_1, \ldots, h_m) = \sum_{j=1}^{m}\varphi(x_1, \ldots, x_{j-1}, h_j, x_{j+1}, \ldots, x_m) \]

对 $ (h_1, \ldots, h_m) \in E_1 \times \cdots \times E_m $。

证明 我们用 $ A_x $ 表示映射

\[ (h_1, \ldots, h_m) \mapsto \sum_{j=1}^{m}\varphi(x_1, \ldots, x_{j-1}, h_j, x_{j+1}, \ldots, x_m) \]

从 $ E_1 \times \cdots \times E_m $ 到 $ F $。则不难验证

\[ (x \mapsto A_x) \in C(E_1 \times \cdots \times E_m, \mathcal{L}(E_1 \times \cdots \times E_m, F)) . \]

令 $ y_k := x_k + h_k $，则等式

\[ \varphi(y_1, \ldots, y_m) = \varphi(x_1, \ldots, x_m) + \sum_{k=1}^{m}\varphi(x_1, \ldots, x_{k-1}, h_k, y_{k+1}, \ldots, y_m) \]

由 $ \varphi $ 的多重线性性推出。因为每个映射

\[ E_{k+1} \times \cdots \times E_m \to F , \quad (z_{k+1}, \ldots, z_m) \mapsto \varphi(x_1, \ldots, x_{k-1}, h_k, z_{k+1}, \ldots, z_m) \]

是 $ (m-k) $ 线性的，我们同样得到

\[ \begin{aligned} \varphi(x_1, \ldots, x_{k-1}, h_k, y_{k+1}, \ldots, y_m) &= \varphi(x_1, \ldots, x_{k-1}, h_k, x_{k+1}, \ldots, x_m) \\ &\quad + \sum_{j=1}^{m-k}\varphi(x_1, \ldots, x_{k-1}, h_k, x_{k+1}, \ldots, x_{k+j-1}, h_{k+j}, y_{k+j+1}, \ldots, y_m) . \end{aligned} \]

因此，我们求得

\[ \varphi(x_1 + h_1, \ldots, x_m + h_m) - \varphi(x_1, \ldots, x_m) - A_x h = r(x, h) , \]

其中 $ r(x, h) $ 是若干函数值多重线性映射的和，其中每个被加项对适当的 $ i \in \{1, \ldots, m\} $ 都至少含有两个不同的 $ h_i $。于是定理 4.2(i) 蕴含当 $ h \to 0 $ 时 $ r(x, h) = o(\|h\|) $。■

4.7 推论 设 $ X $ 是 $ \mathbb{K} $ 中的开集，$ \varphi \in \mathcal{L}(E_1, \ldots, E_m; F) $ 且对 $ 1 \le j \le m $ 有 $ f_j \in C^1(X, E_j) $。则映射

\[ \varphi(f_1, \ldots, f_m) : X \to F , \quad x \mapsto \varphi(f_1(x), \ldots, f_m(x)) \]

属于 $ C^1(X, F) $，并且我们有

\[ \partial(\varphi(f_1, \ldots, f_m)) = \sum_{j=1}^{m}\varphi(f_1, \ldots, f_{j-1}, f_j', f_{j+1}, \ldots, f_m) . \]

证明 这由 $ f_j'(x) \in E_j $（命题 4.6）以及链式法则推出。■

符号公式

\[ \det[a_k^j] = \sum_{\sigma \in S_m}\operatorname{sign}(\sigma)a_{\sigma(1)}^1 \cdots\cdots a_{\sigma(m)}^m \]

表明 $ \det[a_k^j] $ 是行向量 $ a_{j\bullet} := (a_j^1, \ldots, a_j^m) $（或者，等价地，列向量 $ a_{\bullet k} := (a_k^1, \ldots, a_k^m) $）的 $ m $ 线性函数。

对满足 $ a_k = (a_k^1, \ldots, a_k^m) $ 的 $ a_1, \ldots, a_m \in \mathbb{K}^m $，我们令

\[ [a_1, \ldots, a_m] := [a_k^j] \in \mathbb{K}^{m \times m} . \]

换句话说，$ [a_1, \ldots, a_m] $ 是以列向量 $ a_{\bullet k} := a_k $（$ 1 \le k \le m $）为列的方阵。因此，行列式函数

\[ \det : \underbrace{\mathbb{K}^m \times \cdots \times \mathbb{K}^m}_{m} \to \mathbb{K} , \quad (a_1, \ldots, a_m) \mapsto \det[a_1, \ldots, a_m] \]

是一个良定义的 $ m $ 线性映射。

4.8 例 设 $ X $ 是 $ \mathbb{K} $ 中的开集。
(a) 对 $ a_1, \ldots, a_m \in C^1(X, \mathbb{K}^m) $，我们有 $ \det[a_1, \ldots, a_m] \in C^1(X, \mathbb{K}) $，并且

\[ (\det[a_1, \ldots, a_m])' = \sum_{j=1}^{m}\det[a_1, \ldots, a_{j-1}, a_j', a_{j+1}, \ldots, a_m] . \]

(b) 设 $ \varphi \in \mathcal{L}(E_1, E_2; F) $ 且 $ (f, g) \in C^1(X, E_1 \times E_2) $。则**（广义）乘积法则**为

\[ \partial\varphi(f, g) = \varphi(\partial f, g) + \varphi(f, \partial g) . \]
