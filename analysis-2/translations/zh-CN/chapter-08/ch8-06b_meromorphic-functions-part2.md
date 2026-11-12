##### 孤立奇点

设 $ f : U\setminus\{z_{0}\} \to \mathbb{C} $ 全纯，且 $ r > 0 $ 满足 $ \overline{\mathbb{D}}(z_{0},r) \subset U $。进一步设

\[ f(z) = \sum_{n=-\infty}^{\infty}c_{n}(z - z_{0})^{n} \quad \text{对 } z \in \mathbb{D}^{\bullet}(z_{0},r) \]

是 $ f $ 在 $ \mathbb{D}^{\bullet}(z_{0},r) $ 中的洛朗展开。若 $ z_{0} $ 是 $ f $ 的奇点，则当它不是可去奇点时，称它是**孤立的**。由黎曼可去奇点定理（的证明），这成立当且仅当 $ f $ 的洛朗展开的主部不恒等于零。若 $ z_{0} $ 是 $ f $ 的孤立奇点，且存在 $ m \in \mathbb{N}^{\times} $ 使得 $ c_{-m} \ne 0 $ 且对 $ n > m $ 有 $ c_{-n} = 0 $，则称 $ z_{0} $ 是 $ f $ 的**极点**。此时 $ m $ 是该极点的**阶**。若洛朗级数主部中无穷多个系数异于零，则 $ z_{0} $ 是 $ f $ 的**本性奇点**。最后，我们通过下式定义 $ f $ 在 $ z_{0} $ 处的**留数**

\[ \operatorname{Res}(f,z_{0}) := c_{-1} . \]

函数 $ g $ 在 $ U $ 中称为**亚纯的**，若存在 $ U $ 的闭子集 $ P(g) $，使得 $ g $ 在 $ U\setminus P(g) $ 上全纯，且每个 $ z \in P(g) $ 都是 $ g $ 的极点。\footnote{$ P(g) $ 也可以是空集。因此 $ U $ 上的每个全纯函数也是亚纯的。} 此时 $ P(g) $ 是 $ g $ 的**极点集**。

6.7 注 (a) 设 $ f : U\setminus\{z_{0}\} \to \mathbb{C} $ 全纯。则有

\[ \operatorname{Res}(f,z_{0}) = \frac{1}{2\pi i}\int_{\partial\mathbb{D}(z_{0},r)}f(z)\,dz \]

对每个满足 $ \overline{\mathbb{D}}(z_{0},r) \subset U $ 的 $ r > 0 $ 成立。因此，$ f $ 在 $ z_{0} $ 处的留数（相差因子 $ 1/2\pi i $）就是对 $ f $ 沿道路 $ \partial\mathbb{D}(z_{0},r) $ 积分之后所“剩余”（即“残余”）的量。

证明 这由推论 6.4 与例 5.3(a) 得到。■

(b) $ U $ 中亚纯函数 $ f $ 的极点集 $ P(f) $ 是离散的、可数的，且该集合在 $ U $ 中没有聚点。\footnote{然而，$ f $ 的极点完全可能聚积在 $ U $ 的边界上。}

证明 (i) 设 $ z_{0} \in P(f) $。则存在 $ r > 0 $ 使得 $ \overline{\mathbb{D}}(z_{0},r) \subset U $。从而 $ f $ 在 $ \mathbb{D}^{\bullet}(z_{0},r) $ 中全纯。因此 $ P(f)\cap\mathbb{D}(z_{0},r) = \{z_{0}\} $，这表明 $ P(f) $ 是离散的。

(ii) 假设 $ P(f) $ 在 $ U $ 中有聚点 $ z_{0} $。由于 $ P(f) $ 是离散的，$ z_{0} $ 不属于 $ P(f) $。因此 $ z_{0} $ 位于开集 $ U\setminus P(f) $ 中，且存在 $ r > 0 $ 使得 $ \mathbb{D}(z_{0},r) \subset U\setminus P(f) $。因此 $ z_{0} $ 不是 $ P(f) $ 的聚点，矛盾。

(iii) 对每个 $ z \in P(f) $，存在 $ r_{z} > 0 $ 使得 $ \mathbb{D}^{\bullet}(z,r_{z})\cap P(f) = \varnothing $。若 $ K $ 是 $ U $ 的紧致子集，则 $ K\cap P(f) $ 也是紧致的。因此存在 $ z_{0},\ldots,z_{m} \in P(f) $ 使得

\[ K\cap P(f) \subset \bigcup_{j=0}^{m}\mathbb{D}(z_{j},r_{z_{j}}) . \]

因此 $ K\cap P(f) $ 是有限集。

(iv) 为验证 $ P(f) $ 可数，令

\[ K_{j} := \{\, x \in U ;\ d(x,\partial U) \ge 1/j,\ |x| \le j \,\} \quad \text{对 } j \in \mathbb{N}^{\times} . \]

由例 III.1.3(l) 与 III.2.22(c)，以及海涅–博雷尔定理，每个 $ K_{j} $ 都是紧致的。此外 $ \bigcup_{j}K_{j} = U $，且对每个 $ j \in \mathbb{N}^{\times} $，$ K_{j}\cap P(f) $ 是有限集。于是由命题 I.6.8 可知 $ P(f) = \bigcup_{j}\left(K_{j}\cap P(f)\right) $ 可数。■

下一个定理表明，函数亚纯当且仅当它局部是两个全纯函数之商。\footnote{这解释了“亚纯”这一名称，其意为“分式形式”，而“全纯”可译为“整形式”。}

6.8 命题 函数 $ f $ 在 $ U $ 中亚纯当且仅当存在 $ U $ 的闭子集 $ A $ 且满足以下条件：

(i) $ f $ 在 $ U\setminus A $ 中全纯。

(ii) 对每个 $ a \in A $，存在 $ r > 0 $ 使得 $ \mathbb{D}(a,r) \subset U $，存在 $ g, h \in C^{\omega}\left(\mathbb{D}(a,r)\right) $ 且 $ h \ne 0 $，且 $ f = g/h $ 在 $ \mathbb{D}^{\bullet}(a,r) $ 中成立。

证明 (a) 设 $ f $ 在 $ U $ 中亚纯。则对 $ a \in P(f) =: A $，存在 $ r > 0 $ 满足 $ \mathbb{D}(a,r) \subset U $，使得 $ f $ 有洛朗展开

\[ f(z) = \sum_{n=-m}^{\infty}c_{n}(z - a)^{n} \quad \text{对 } z \in \mathbb{D}^{\bullet}(a,r) \]

（在 $ \mathbb{D}^{\bullet}(a,r) $ 中），其中 $ m \in \mathbb{N}^{\times} $ 适当。全纯函数

\[ \mathbb{D}^{\bullet}(a,r) \to \mathbb{C} , \quad z \mapsto (z - a)^{m}f(z) = \sum_{k=0}^{\infty}c_{k-m}(z - a)^{k} \tag{6.7} \]

在 $ a $ 处有可去奇点。因此存在 $ g \in C^{\omega}\left(\mathbb{D}(a,r)\right) $ 使得

\[ g(z) = (z - a)^{m}f(z) \quad \text{对 } 0 < |z - a| < r . \]

因此 $ f $ 在 $ \mathbb{D}^{\bullet}(a,r) $ 中有表示 $ f = g/h $，其中 $ h := (X - a)^{m} \in C^{\omega}(\mathbb{C}) $。

(b) 设给定条件满足。若 $ h(a) \ne 0 $，则可（通过缩小 $ r $）假设对 $ z \in \mathbb{D}(a,r) $ 有 $ h(z) \ne 0 $。则 $ f = g/h $ 在 $ \mathbb{D}(a,r) $ 中全纯。在 $ h(a) = 0 $ 的情形，可假设存在 $ m \in \mathbb{N}^{\times} $ 使得 $ h $ 有幂级数展开

\[ h(z) = \sum_{k=m}^{\infty}c_{k}(z - a)^{k} = (z - a)^{m}\sum_{n=0}^{\infty}c_{n+m}(z - a)^{n} \]

（在 $ \mathbb{D}(a,r) $ 中），其中 $ c_{m} $ 异于零，因为 $ h \ne 0 $。因此由下式定义的函数

\[ \varphi(z) := \sum_{n=0}^{\infty}c_{n+m}(z - a)^{n} \quad \text{对 } z \in \mathbb{D}(a,r) \]

在 $ \mathbb{D}(a,r) $ 上全纯（见命题 V.3.5），且 $ \varphi(a) = c_{m} \ne 0 $。因此存在 $ \rho \in (0,r) $ 使得对 $ |z - a| \le \rho $ 有 $ \varphi(z) \ne 0 $，这意味着 $ g/\varphi \in C^{\omega}\left(\mathbb{D}(a,\rho)\right) $。记 $ g/\varphi $ 的泰勒级数为 $ \sum_{n\ge 0}b_{n}(z - a)^{n} $，则得

\[ f(z) = \frac{g(z)}{h(z)} = \frac{1}{(z - a)^{m}}\frac{g}{\varphi}(z) = \sum_{n=0}^{\infty}b_{n}(z - a)^{n-m} \quad \text{对 } z \in \mathbb{D}^{\bullet}(a,\rho) . \]

由这一表达式以及洛朗展开的唯一性可知，$ a $ 是 $ f $ 的极点。■

6.9 例 (a) 每个有理函数在 $ \mathbb{C} $ 中亚纯，且只有有限多个极点。

(b) 正切与余切在 $ \mathbb{C} $ 中亚纯。它们的极点集分别为 $ \pi(\mathbb{Z} + 1/2) $ 与 $ \pi\mathbb{Z} $。余切在 $ \pi\mathbb{D}^{\bullet} $ 中的洛朗展开为

\[ \cot z = \frac{1}{z} - 2\sum_{k=1}^{\infty}\frac{\zeta(2k)}{\pi^{2k}}z^{2k-1} \quad \text{对 } z \in \pi\mathbb{D}^{\bullet} . \]

证明 因为 $ \tan = \sin/\cos $ 且 $ \cot = 1/\tan $，前两个断言由命题 6.8 得到。余切的上述表示由 (VI.7.18)、定理 VI.6.15 以及洛朗展开的唯一性推出。■

(c) 伽马函数在 $ \mathbb{C} $ 中亚纯。它的极点集是 $ -\mathbb{N} $。

证明 由命题 VI.9.5 的魏尔斯特拉斯乘积表示与魏尔斯特拉斯收敛定理（定理 5.27）可知，$ \Gamma $ 是某个整函数的倒数，且该整函数的零点集为 $ -\mathbb{N} $。于是断言由命题 6.8 得到。■

(d) 黎曼 $ \zeta $ 函数在 $ \mathbb{C} $ 中亚纯。

证明 这由定理 VI.6.15 得到。■

(e) 函数 $ z \mapsto e^{1/z} $ 在 $ \mathbb{C} $ 中不是亚纯的。

证明 因为 $ e^{1/z} = \exp(1/z) $，有

\[ e^{1/z} = \sum_{k=0}^{\infty}\frac{1}{k!\,z^{k}} = 1 + \frac{1}{z} + \frac{1}{2z^{2}} + \cdots \quad \text{对 } z \in \mathbb{C}^{\times} . \]

因此 $ 0 $ 是 $ z \mapsto e^{1/z} $ 的本性奇点。■

##### 单极点

我们将看到，亚纯函数的留数起着特别重要的作用。因此，我们应设法在不显式作洛朗展开的情况下确定留数。对一阶极点——即**单极点**——这一点尤其容易，我们接下来说明。

6.10 命题 全纯函数 $ f : U\setminus\{z_{0}\} \to \mathbb{C} $ 在 $ z_{0} $ 处有单极点当且仅当 $ z \mapsto g(z) := (z - z_{0})f(z) $ 在 $ z_{0} $ 处有可去奇点且 $ g(z_{0}) \ne 0 $。此时

\[ \operatorname{Res}(f,z_{0}) = \lim_{z\to z_{0}}(z - z_{0})f(z) . \]

证明 设 $ g $ 在 $ U $ 中全纯且 $ g(z_{0}) \ne 0 $。则存在 $ r > 0 $ 满足 $ \mathbb{D}(z_{0},r) \subset U $，以及 $ \mathbb{C} $ 中的序列 $ (b_{n}) $，使得

\[ g(z) = \sum_{n=0}^{\infty}b_{n}(z - z_{0})^{n} \quad \text{对 } z \in \mathbb{D}(z_{0},r) \text{ 且 } g(z_{0}) = b_{0} \ne 0 . \]

因为

\[ f(z) = \frac{g(z)}{z - z_{0}} = \sum_{n=-1}^{\infty}c_{n}(z - z_{0})^{n} \quad \text{对 } z \in \mathbb{D}^{\bullet}(z_{0},r) , \]

其中 $ c_{n} := b_{n+1} $ 且 $ c_{-1} := b_{0} \ne 0 $，点 $ z_{0} $ 是单极点，且

\[ \operatorname{Res}(f,z_{0}) = c_{-1} = b_{0} = g(z_{0}) = \lim_{z\to z_{0}}(z - z_{0})f(z) . \]

反之，若 $ z_{0} $ 是 $ f $ 的单极点，则存在 $ r > 0 $ 使得 $ \mathbb{D}(z_{0},r) \subset U $，且

\[ f(z) = \sum_{n=-1}^{\infty}c_{n}(z - z_{0})^{n} \quad \text{对 } z \in \mathbb{D}^{\bullet}(z_{0},r) \text{ 且 } c_{-1} \ne 0 . \]

由此可得

\[ (z - z_{0})f(z) = \sum_{n=0}^{\infty}c_{n-1}(z - z_{0})^{n} \quad \text{对 } z \in \mathbb{D}^{\bullet}(z_{0},r) . \]

现在断言由黎曼可去奇点定理与解析函数的唯一性定理推出。■

6.11 例 (a) 设 $ g $ 与 $ h $ 在 $ U $ 中全纯，且 $ h $ 在 $ z_{0} $ 处有**单零点**，即\footnote{单零点即阶为 1 的零点（见习题 IV.3.10）。} $ h(z_{0}) = 0 $ 且 $ h'(z_{0}) \ne 0 $。则 $ f := g/h $ 在 $ U $ 中亚纯，且若 $ g(z_{0}) \ne 0 $，则 $ z_{0} $ 是 $ f $ 的单极点，其留数为 $ \operatorname{Res}(f,z_{0}) = g(z_{0})/h'(z_{0}) $。

证明 泰勒公式给出

\[ h(z) = (z - z_{0})h'(z_{0}) + o(|z - z_{0}|) \quad (z \to z_{0}) , \]

因此当 $ z \to z_{0} $ 时 $ h(z)(z - z_{0})^{-1} \to h'(z_{0}) $。这意味着

\[ \lim_{z\to z_{0}}(z - z_{0})f(z) = \lim_{z\to z_{0}}g(z)/\left(h(z)(z - z_{0})^{-1}\right) = g(z_{0})/h'(z_{0}) , \]

于是断言由定理 6.8 与 6.10 以及黎曼可去奇点定理得到。■

(b) 正切与余切只有单极点。它们的留数为

\[ \operatorname{Res}\left(\tan,\pi(k + 1/2)\right) = -\operatorname{Res}(\cot,k\pi) = -1 \quad \text{对 } k \in \mathbb{Z} . \]

证明 这立即由 (a) 得到。■

(c) 伽马函数只有一阶极点，且

\[ \operatorname{Res}(\Gamma,-n) = (-1)^{n}/n! \quad \text{对 } n \in \mathbb{N} . \]

证明 由 (VI.9.2)，对满足 $ \operatorname{Re} z > -n - 1 $ 的 $ z \in \mathbb{C}\setminus(-\mathbb{N}) $，得表示

\[ (z + n)\Gamma(z) = \frac{\Gamma(z + n + 1)}{z(z + 1)\cdot\cdot\cdot\cdot\cdot(z + n - 1)} . \]

因此当 $ z \to -n $ 时 $ (z + n)\Gamma(z) $ 收敛到 $ (-1)^{n}\Gamma(1)/n! $。因为 $ \Gamma(1) = 1 $，断言由例 6.9(c) 与命题 6.10 推出。■

(d) 黎曼 $ \zeta $ 函数在 $ 1 $ 处有单极点，留数为 $ 1 $。

证明 这由定理 VI.6.15 得到。■

(e) 设 $ p \in \mathbb{R} $ 且 $ a > 0 $。则由 $ f(z) := e^{-ipz}/(z^{2} + a^{2}) $ 定义的函数在 $ \mathbb{C} $ 中亚纯，且在 $ \pm ia $ 处有单极点，其留数为

\[ \operatorname{Res}(f,\pm ia) = \pm e^{\pm pa}/2ia . \]

证明 显然 $ (z \mp ia)f(z) = e^{-ipz}/(z \pm ia) $ 在 $ \pm ia $ 处全纯，且

\[ \lim_{z\to\pm ia}(z \mp ia)f(z) = \pm e^{\pm pa}/2ia . \]

因此断言由命题 6.10 得到。■

(f) 对 $ p \in \mathbb{R} $ 与 $ f(z) := e^{-ipz}/(z^{4} + 1) $，函数 $ f $ 在 $ \mathbb{C} $ 中亚纯，且

\[ P(f) = \{\, z_{j} := e^{i(\pi/4+j\pi/2)} ;\ j = 0,\ldots,3 \,\} . \]

每个极点都是单极点，且每个留数为

\[ \operatorname{Res}(f,z_{j}) = e^{-ipz_{j}}/4z_{j}^{3} \quad \text{对 } 0 \le j \le 3 . \]

证明 初等计算给出

\[ \prod_{k=0,\,k\ne j}^{3}(z_{j} - z_{k}) = 4z_{j}^{3} . \]

因此这一断言也由命题 6.10 得到。■
