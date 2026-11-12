## 6 亚纯函数

在本章的核心各节中，我们研究了除孤立点外全纯的复函数。典型的例子是

\[ \mathbb{C}^{\times} \to \mathbb{C} , \quad z \mapsto e^{1/z} , \quad \mathbb{C}\setminus\{\pm i\} \to \mathbb{C} , \quad z \mapsto 1/(1 + z^{2}) , \]

\[ \mathbb{C}^{\times} \to \mathbb{C} , \quad z \mapsto \sin(z)/z , \quad \mathbb{C}\setminus\pi\mathbb{Z} \to \mathbb{C} , \quad z \mapsto \cot z . \]

结果表明，这些“例外点”导致一个出奇简单的分类。这一分类借助洛朗级数来完成，洛朗级数把一个函数展开成既含正次幂又含负次幂的幂级数。因此，它把泰勒级数推广为能够展开全纯函数的级数。

在此语境下，我们还将推广柯西积分定理，并证明留数定理；留数定理有许多重要的应用，这里我们只给出其中少数几个。

##### 洛朗展开

对 $ c := (c_{n}) \in \mathbb{C}^{\mathbb{Z}} $，我们考虑幂级数

\[ nc := \sum_{n\ge 0} c_{n}X^{n} \quad\text{且}\quad hc := \sum_{n\ge 1} c_{-n}X^{n} . \]

设它们的收敛半径分别为 $ \rho_{1} $ 与 $ 1/\rho_{0} $，且 $ 0 \le \rho_{0} < \rho_{1} \le \infty $。则由定理 V.3.1，$ nc $ [或 $ hc $] 在 $ \rho_{1}\mathbb{D} $ [或 $ (1/\rho_{0})\mathbb{D} $] 中所表示的函数 $ \underline{nc} $ [或 $ \underline{hc} $] 是全纯的。因为 $ z \mapsto 1/z $ 在 $ \mathbb{C}^{\times} $ 中全纯，且当 $ |z| > \rho_{0} $ 时有 $ |1/z| < 1/\rho_{0} $，注 5.13(d) 保证了函数

\[ z \mapsto \underline{hc}(1/z) = \sum_{n=1}^{\infty} c_{-n}z^{-n} \]

在 $ |z| > \rho_{0} $ 上全纯。因此

\[ z \mapsto \sum_{n=-\infty}^{\infty} c_{n}z^{n} := \sum_{n=0}^{\infty} c_{n}z^{n} + \sum_{n=1}^{\infty} c_{-n}z^{-n} \]

是由

\[ \Omega(\rho_{0},\rho_{1}) := \rho_{1}\mathbb{D}\setminus\rho_{0}\overline{\mathbb{D}} = \{ z \in \mathbb{C} ;\ \rho_{0} < |z| < \rho_{1} \} . \]

给出的以 0 为中心的圆环域中的全纯函数。

现在设 $ z_{0} \in \mathbb{C} $。则

\[ \sum_{n\in\mathbb{Z}} c_{n}(z - z_{0})^{n} := \sum_{n\ge 0} c_{n}(z - z_{0})^{n} + \sum_{n\ge 1} c_{-n}(z - z_{0})^{-n} \tag{6.1} \]

称为关于**展开点** $ z_{0} $ 的**洛朗级数**，而 $ (c_{n}) $ 是系数序列。在 (6.1) 中，$ \sum_{n\ge 1} c_{-n}(z - z_{0})^{-n} $ 是**主部**，而 $ \sum_{n\ge 0} c_{n}(z - z_{0})^{n} $ 是**正则部**。若主部与正则部都在 $ M \subset \mathbb{C} $ 中收敛 [或依范数收敛]，则称洛朗级数 (6.1) 在 $ M $ 中**收敛** [或**依范数收敛**]。按定义，它在 $ z \in M $ 处的**值**是主部与正则部在 $ z $ 处的值之和，即

\[ \sum_{n=-\infty}^{\infty} c_{n}(z - z_{0})^{n} := \sum_{n=0}^{\infty} c_{n}(z - z_{0})^{n} + \sum_{n=1}^{\infty} c_{-n}(z - z_{0})^{-n} . \]

由这些预备知识及定理 V.1.8 可知，洛朗级数 $ \sum_{n\in\mathbb{Z}} c_{n}(z - z_{0})^{n} $ 在由

\[ z_{0} + \Omega(\rho_{0},\rho_{1}) = \{ z \in \mathbb{C} ;\ \rho_{0} < |z - z_{0}| < \rho_{1} \} \]

给出的以 $ z_{0} $ 为中心的圆环域的每个紧致子集中正规收敛，且函数

\[ z_{0} + \Omega(\rho_{0},\rho_{1}) \to \mathbb{C} , \quad z \mapsto \sum_{n=-\infty}^{\infty} c_{n}(z - z_{0})^{n} \]

是全纯的。上面的讨论表明，反之，在圆环域中全纯的每个函数都可以由一个洛朗级数来表示。

6.1 引理 对 $ \rho > 0 $ 与 $ a \in \mathbb{C} $，

\[ \int_{\rho\partial\mathbb{D}} \frac{dz}{z - a} = \begin{cases} 2\pi i , & |a| < \rho , \\ 0 , & |a| > \rho . \end{cases} \]

证明 (i) 设 $ |a| < \rho $，且 $ \delta > 0 $ 满足 $ \mathbb{D}(a,\delta) \subset \rho\mathbb{D} $。因为 $ \partial\mathbb{D}(a,\delta) $ 与 $ \rho\partial\mathbb{D} $ 在 $ \mathbb{C}\setminus\{a\} $ 中同伦（见习题 5.6），该断言由命题 5.7 与例 5.3(a) 推出。

(ii) 若 $ |a| > \rho $，则 $ \rho\partial\mathbb{D} $ 在 $ \mathbb{C}\setminus\{a\} $ 中零伦，且该断言同样由命题 5.7 推出。■

6.2 引理 设 $ f : \Omega(r_{0},r_{1}) \to \mathbb{C} $ 全纯。

(i) 对 $ r,s \in (r_{0},r_{1}) $，我们有

\[ \int_{r\partial\mathbb{D}} f(z)\,dz = \int_{s\partial\mathbb{D}} f(z)\,dz . \]

(ii) 设 $ a \in \Omega(\rho_{0},\rho_{1}) $，且 $ r_{0} < \rho_{0} < \rho_{1} < r_{1} $。则

\[ f(a) = \frac{1}{2\pi i}\int_{\rho_{1}\partial\mathbb{D}}\frac{f(z)}{z - a}\,dz - \frac{1}{2\pi i}\int_{\rho_{0}\partial\mathbb{D}}\frac{f(z)}{z - a}\,dz . \]

证明 (i) 因为 $ r\partial\mathbb{D} $ 与 $ s\partial\mathbb{D} $ 在 $ \Omega := \Omega(r_{0},r_{1}) $ 中同伦，该断言由命题 5.7 推出。

(ii) 设 $ g : \Omega \to \mathbb{C} $ 由

\[ g(z) := \begin{cases} \left(f(z) - f(a)\right)/(z - a) , & z \in \Omega\setminus\{a\} , \\ f'(a) , & z = a . \end{cases} \]

定义。显然 $ g $ 在 $ \Omega\setminus\{a\} $ 中全纯，且

\[ g'(z) = \frac{f'(z)(z - a) - f(z) + f(a)}{(z - a)^{2}} \quad\text{对 } z \in \Omega\setminus\{a\} . \tag{6.2} \]

由泰勒公式（推论 IV.3.3）

\[ f(z) = f(a) + f'(a)(z - a) + \frac{1}{2}f''(a)(z - a)^{2} + o(|z - a|^{2}) \tag{6.3} \]

（当 $ z \to a $），我们得到

\[ \frac{g(z) - g(a)}{z - a} = \frac{1}{z - a}\left(\frac{f(z) - f(a)}{z - a} - f'(a)\right) = \frac{1}{2}f''(a) + \frac{o(|z - a|^{2})}{(z - a)^{2}} \]

（当 $ z $ 在 $ \Omega\setminus\{a\} $ 中趋于 $ a $ 时）。于是 $ g $ 在 $ a $ 处可微，且 $ g'(a) = f''(a)/2 $。因此 $ g $ 在 $ \Omega $ 中全纯。将引理 6.1 与 (i) 应用于 $ g $ 即得该断言。■

现在我们可以证明前面提到的展开定理。

6.3 定理（洛朗展开）在 $ \Omega := \Omega(r_{0},r_{1}) $ 中全纯的每个函数 $ f $ 都有唯一的洛朗展开

\[ f(z) = \sum_{n=-\infty}^{\infty} c_{n}z^{n} \quad\text{对 } z \in \Omega . \tag{6.4} \]

洛朗级数在 $ \Omega $ 的每个紧致子集上正规收敛，且其系数由

\[ c_{n} = \frac{1}{2\pi i}\int_{r\partial\mathbb{D}}\frac{f(\zeta)}{\zeta^{n+1}}\,d\zeta \quad\text{对 } n \in \mathbb{Z} \text{ 且 } r_{0} < r < r_{1} . \tag{6.5} \]

给出。

证明 (i) 我们首先验证 $ f $ 由系数按 (6.5) 给出的洛朗级数表示。由引理 6.2(i) 可知 $ c_{n} $ 对 $ n \in \mathbb{Z} $ 良定义，即它与 $ r $ 无关。

设 $ r_{0} < s_{0} < s_{1} < r_{1} $ 且 $ z \in \Omega(s_{0},s_{1}) $。对满足 $ |\zeta| = s_{1} $ 的 $ \zeta \in \mathbb{C} $，我们有 $ |z/\zeta| < 1 $，从而

\[ \frac{1}{\zeta - z} = \frac{1}{\zeta}\cdot\frac{1}{1 - z/\zeta} = \sum_{n=0}^{\infty}\frac{z^{n}}{\zeta^{n+1}} , \]

在 $ s_{1}\partial\mathbb{D} $ 上正规收敛。因此我们有

\[ \frac{1}{2\pi i}\int_{s_{1}\partial\mathbb{D}}\frac{f(\zeta)}{\zeta - z}\,d\zeta = \sum_{n=0}^{\infty} c_{n}z^{n} \]

（见习题 4.9）。对满足 $ |\zeta| = s_{0} $ 的 $ \zeta \in \mathbb{C} $，我们有 $ |\zeta/z| < 1 $，从而

\[ \frac{1}{\zeta - z} = -\frac{1}{z}\cdot\frac{1}{1 - \zeta/z} = -\sum_{m=0}^{\infty}\frac{\zeta^{m}}{z^{m+1}} , \]

在 $ s_{0}\partial\mathbb{D} $ 上正规收敛。因此

\[ \begin{aligned} \frac{1}{2\pi i}\int_{s_{0}\partial\mathbb{D}}\frac{f(\zeta)}{\zeta - z}\,d\zeta &= -\sum_{m=0}^{\infty}\left(\frac{1}{2\pi i}\int_{s_{0}\partial\mathbb{D}} f(\zeta)\zeta^{m}\,d\zeta\right)z^{-m-1} \\ &= -\sum_{n=1}^{\infty} c_{-n}z^{-n} . \end{aligned} \]

于是由引理 6.2(ii) 我们得到表示 (6.4)。

(ii) 现在我们证明 (6.4) 中的系数是唯一的。设 $ f(z) = \sum_{n=-\infty}^{\infty} a_{n}z^{n} $ 在 $ \Omega $ 的紧致子集上正规收敛。对 $ r \in (r_{0},r_{1}) $ 与 $ m \in \mathbb{Z} $，我们有（见例 5.3(a)）

\[ \frac{1}{2\pi i}\int_{r\partial\mathbb{D}} f(z)z^{-m-1}\,dz = \frac{1}{2\pi i}\sum_{n=-\infty}^{\infty} a_{n}\int_{r\partial\mathbb{D}} z^{n-m-1}\,dz = a_{m} . \]

这表明对 $ m \in \mathbb{Z} $ 有 $ a_{m} = c_{m} $。

(iii) 因为我们已知洛朗级数在 $ \Omega $ 的紧致子集上正规收敛，定理得证。■

作为该定理的一个简单推论，我们得到在开**穿孔圆盘**

\[ \mathbb{D}^{\bullet}(z_{0},r) := z_{0} + \Omega(0,r) = \{ z \in \mathbb{C} ;\ 0 < |z - z_{0}| < r \} . \]

中全纯的函数的洛朗展开。

6.4 推论 设 $ f $ 在 $ \mathbb{D}^{\bullet}(z_{0},r) $ 中全纯。则 $ f $ 有唯一的洛朗展开

\[ f(z) = \sum_{n=-\infty}^{\infty} c_{n}(z - z_{0})^{n} \quad\text{对 } z \in \mathbb{D}^{\bullet}(z_{0},r) , \]

其中

\[ c_{n} := \frac{1}{2\pi i}\int_{\partial\mathbb{D}(z_{0},\rho)}\frac{f(z)}{(z - z_{0})^{n+1}}\,dz \quad\text{对 } n \in \mathbb{Z} \text{ 且 } \rho \in (0,r) . \]

该级数在 $ \mathbb{D}^{\bullet}(z_{0},r) $ 的每个紧致子集上正规收敛，且

\[ |c_{n}| \le \rho^{-n}\max_{z\in\partial\mathbb{D}(z_{0},\rho)}|f(z)| \quad\text{对 } n \in \mathbb{Z} \text{ 且 } \rho \in (0,r) . \tag{6.6} \]

证明 除 (6.6) 外，所有断言都由定理 6.3 应用于 $ z \mapsto f(z + z_{0}) $ 得到。估计 (6.6) 由 (6.5) 与命题 5.2(ii) 推出。■

##### 可去奇点

在下文中设

• $ U $ 是 $ \mathbb{C} $ 的开子集，且 $ z_{0} $ 是 $ U $ 中的一个点。

给定全纯函数 $ f : U\setminus\{z_{0}\} \to \mathbb{C} $，若 $ f $ 有全纯延拓 $ F : U \to \mathbb{C} $，则点 $ z_{0} $ 是**可去奇点**。当不致混淆时，我们对这个延拓沿用符号 $ f $。

6.5 例 设 $ f : U \to \mathbb{C} $ 全纯。则 $ z_{0} $ 是

\[ g : U\setminus\{z_{0}\} \to \mathbb{C} , \quad z \mapsto \left(f(z) - f(z_{0})\right)/(z - z_{0}) \]

的可去奇点。特别地，0 是

\[ z \mapsto \sin(z)/z , \quad z \mapsto (\cos z - 1)/z , \quad z \mapsto \log(z + 1)/z \]

的可去奇点。

证明 这由引理 6.2(ii) 的证明推出。■

函数 $ f $ 的可去奇点可以由 $ f $ 的局部有界性来刻画：

6.6 定理（黎曼可去奇点定理）设 $ f : U\setminus\{z_{0}\} \to \mathbb{C} $ 全纯。则点 $ z_{0} $ 是 $ f $ 的可去奇点，当且仅当 $ f $ 在 $ z_{0} $ 的一个邻域中有界。

证明 设 $ r > 0 $ 满足 $ \overline{\mathbb{D}}(z_{0},r) \subset U $。

若 $ z_{0} $ 是 $ f $ 的可去奇点，则存在 $ F \in C^{\omega}(U) $ 使得 $ F \supset f $。由 $ \overline{\mathbb{D}}(z_{0},r) $ 的紧致性可得

\[ \sup_{z\in\mathbb{D}^{\bullet}(z_{0},r)}|f(z)| = \sup_{z\in\mathbb{D}^{\bullet}(z_{0},r)}|F(z)| \le \max_{z\in\overline{\mathbb{D}}(z_{0},r)}|F(z)| < \infty . \]

因此 $ f $ 在 $ U\setminus\{z_{0}\} $ 中 $ z_{0} $ 的邻域 $ \mathbb{D}^{\bullet}(z_{0},r) $ 内有界。

为证明其逆，我们令

\[ M(\rho) := \max_{z\in\partial\mathbb{D}(z_{0},\rho)}|f(z)| \quad\text{对 } \rho \in (0,r) . \]

由假设，存在 $ M \ge 0 $ 使得对 $ \rho \in (0,r) $ 有 $ M(\rho) \le M $（因为 $ |f| $ 在 $ \overline{\mathbb{D}}(z_{0},r)\setminus\{z_{0}\} $ 上连续，从而对每个 $ 0 < r_{0} < r $ 在紧致集 $ \overline{\mathbb{D}}(z_{0},r)\setminus\mathbb{D}(z_{0},r_{0}) $ 上有界）。于是由 (6.6) 可得

\[ |c_{n}| \le M(\rho)\rho^{-n} \le M\rho^{-n} \quad\text{对 } n \in \mathbb{Z} \text{ 且 } \rho \in (0,r) . \]

因此 $ f $ 的洛朗展开的主部为零，由推论 6.4 可得

\[ f(z) = \sum_{n=0}^{\infty} c_{n}(z - z_{0})^{n} \quad\text{对 } z \in \mathbb{D}^{\bullet}(z_{0},r) . \]

由

\[ z \mapsto \sum_{n=0}^{\infty} c_{n}(z - z_{0})^{n} \quad\text{对 } z \in \mathbb{D}(z_{0},r) , \]

定义的函数在 $ \mathbb{D}(z_{0},r) $ 上全纯，且在 $ \mathbb{D}^{\bullet}(z_{0},r) $ 上与 $ f $ 一致。因此 $ z_{0} $ 是 $ f $ 的可去奇点。■
