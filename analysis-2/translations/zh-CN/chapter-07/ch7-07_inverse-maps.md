## 7 逆映射

设 $ J $ 是 $ \mathbb{R} $ 中的开区间，且 $ f : J \to \mathbb{R} $ 可微。又设 $ a \in J $ 且 $ f'(a) \ne 0 $。则线性近似

\[ \mathbb{R} \to \mathbb{R} , \quad x \mapsto f(a) + f'(a)(x - a) \]

在 $ a $ 处可逆。这在局部也成立，即存在 $ \varepsilon > 0 $ 使得 $ f $ 在 $ X := (a - \varepsilon, a + \varepsilon) $ 上可逆。此外，$ Y = f(X) $ 是开区间，且逆映射 $ f^{-1} : Y \to \mathbb{R} $ 可微，并有

\[ (f^{-1})'(f(x)) = (f'(x))^{-1} \qquad \text{对 } x \in X \]

（与定理 IV.1.8 比较）。

在本节中，我们对多元函数建立这一情形的自然推广。

##### 线性映射之逆的导数

下面，设

• $ E $ 与 $ F $ 是域 $ \mathbb{K} $ 上的巴拿赫空间。

我们要确定映射

\[ \operatorname{inv} : \mathcal{L}\mathrm{is}(E, F) \to \mathcal{L}(F, E) , \quad A \mapsto A^{-1} \]

的可微性，并在必要时求出其导数。为使这一问题有意义，我们必须先验证 $ \mathcal{L}\mathrm{is}(E, F) $ 是巴拿赫空间 $ \mathcal{L}(E, F) $ 的开子集。为证明这一点，我们先证明一个关于巴拿赫代数 $ \mathcal{L}(E) $ 中“几何级数”的定理。这里令 $ I := 1_{E} $。

7.1 命题 设 $ A \in \mathcal{L}(E) $ 且 $ \|A\| < 1 $。则 $ I - A $ 属于 $ \mathcal{L}\mathrm{aut}(E) $，$ (I - A)^{-1} = \sum_{k=0}^{\infty} A^{k} $，且 $ \|(I - A)^{-1}\| \le (1 - \|A\|)^{-1} $。

证明 我们在巴拿赫代数 $ \mathcal{L}(E) $ 中考虑几何级数 $ \sum A^{k} $。因为 $ \|A^{k}\| \le \|A\|^{k} $ 且

\[ \sum_{k=0}^{\infty} \|A\|^{k} = 1/(1 - \|A\|) , \tag{7.1} \]

由优级数判别法（定理 II.8.3）知，$ \sum A^{k} $ 在 $ \mathcal{L}(E) $ 中绝对收敛。特别地，级数的值

\[ B := \sum_{k=0}^{\infty} A^{k} \]

是 $ \mathcal{L}(E) $ 中良定义的元素。显然 $ AB = BA = \sum_{k=1}^{\infty} A^{k} $。因此 $ (I - A)B = B(I - A) = I $，从而 $ (I - A)^{-1} = B $。最后，由注 II.8.2(c) 与 (7.1) 给出估计

\[ \|(I - A)^{-1}\| = \|B\| \le (1 - \|A\|)^{-1} . ■ \]

7.2 命题

(i) $ \mathcal{L}\mathrm{is}(E, F) $ 在 $ \mathcal{L}(E, F) $ 中是开集。

(ii) 映射

\[ \operatorname{inv} : \mathcal{L}\mathrm{is}(E, F) \to \mathcal{L}(F, E) , \quad A \mapsto A^{-1} \]

无穷多次连续可微，且\footnote{由注 2.2(e)，当 $ E = F = \mathbb{K} $ 时，此公式化为 $ (1/z)' = -1/z^{2} $。}

\[ \partial\operatorname{inv}(A)B = -A^{-1}BA^{-1} \qquad \text{对 } A \in \mathcal{L}\mathrm{is}(E, F) \text{ 且 } B \in \mathcal{L}(E, F) . \tag{7.2} \]

证明 (i) 设 $ A_{0} \in \mathcal{L}\mathrm{is}(E, F) $，$ A \in \mathcal{L}(E, F) $ 满足 $ \|A - A_{0}\| < 1/\|A_{0}^{-1}\| $。因为

\[ A = A_{0} + A - A_{0} = A_{0}\left[I + A_{0}^{-1}(A - A_{0})\right] , \tag{7.3} \]

只需验证 $ I + A_{0}^{-1}(A - A_{0}) $ 属于 $ \mathcal{L}\mathrm{aut}(E) $。因为

\[ \|-A_{0}^{-1}(A - A_{0})\| \le \|A_{0}^{-1}\|\|A - A_{0}\| < 1 , \]

这由命题 7.1 得到。因此 $ \mathcal{L}(E, F) $ 中以 $ A_{0} $ 为中心、以 $ 1/\|A_{0}^{-1}\| $ 为半径的开球属于 $ \mathcal{L}\mathrm{is}(E, F) $。

(ii) 我们有 $ 2\|A - A_{0}\| < 1/\|A_{0}^{-1}\| $。由 (7.3)，我们得到

\[ A^{-1} = \left[I + A_{0}^{-1}(A - A_{0})\right]^{-1}A_{0}^{-1} , \]

从而

\[ A^{-1} - A_{0}^{-1} = \left[I + A_{0}^{-1}(A - A_{0})\right]^{-1}\left(I - \left[I + A_{0}^{-1}(A - A_{0})\right]\right)A_{0}^{-1} , \]

即

\[ \operatorname{inv}(A) - \operatorname{inv}(A_{0}) = -\left[I + A_{0}^{-1}(A - A_{0})\right]^{-1}A_{0}^{-1}(A - A_{0})A_{0}^{-1} . \tag{7.4} \]

由此及命题 7.1，我们推出

\[ \|\operatorname{inv}(A) - \operatorname{inv}(A_{0})\| \le \frac{\|A_{0}^{-1}\|^{2}\|A - A_{0}\|}{1 - \|A_{0}^{-1}(A - A_{0})\|} < 2\|A_{0}^{-1}\|^{2}\|A - A_{0}\| . \tag{7.5} \]

因此 $ \operatorname{inv} $ 连续。

(iii) 下面证明 $ \operatorname{inv} $ 可微。设 $ A \in \mathcal{L}\mathrm{is}(E, F) $。对满足 $ \|B\| < 1/\|A^{-1}\| $ 的 $ B \in \mathcal{L}(E, F) $，由 (i) 知 $ A + B $ 属于 $ \mathcal{L}\mathrm{is}(E, F) $，且

\[ (A + B)^{-1} - A^{-1} = (A + B)^{-1}\left[A - (A + B)\right]A^{-1} = -(A + B)^{-1}BA^{-1} . \]

这给出

\[ \operatorname{inv}(A + B) - \operatorname{inv}(A) + A^{-1}BA^{-1} = \left[\operatorname{inv}(A) - \operatorname{inv}(A + B)\right]BA^{-1} . \]

于是，

\[ \operatorname{inv}(A + B) - \operatorname{inv}(A) + A^{-1}BA^{-1} = o(\|B\|) \quad (B \to 0) \]

由 $ \operatorname{inv} $ 的连续性得到。因此 $ \operatorname{inv} : \mathcal{L}\mathrm{is}(E, F) \to \mathcal{L}(F, E) $ 可微，且 (7.2) 成立。

(iv) 我们表示映射

\[ g : \mathcal{L}(F, E)^{2} \to \mathcal{L}\left(\mathcal{L}(E, F), \mathcal{L}(F, E)\right) \]

为

\[ g(T_{1}, T_{2})(S) := -T_{1}ST_{2} \qquad \text{对 } T_{1}, T_{2} \in \mathcal{L}(F, E) \text{ 且 } S \in \mathcal{L}(E, F) . \]

于是容易看出 $ g $ 是双线性且连续的，因此

\[ g \in C^{\infty}\left(\mathcal{L}(F, E)^{2}, \mathcal{L}\left(\mathcal{L}(E, F), \mathcal{L}(F, E)\right)\right) \]

（见习题 4.4 与 5.2）。此外，

\[ \partial\operatorname{inv}(A) = g\left(\operatorname{inv}(A), \operatorname{inv}(A)\right) \qquad \text{对 } A \in \mathcal{L}\mathrm{is}(E, F) . \tag{7.6} \]

因此由 (ii) 得 $ \partial\operatorname{inv} $ 的连续性。于是映射 $ \operatorname{inv} $ 属于 $ C^{1}\left(\mathcal{L}\mathrm{is}(E, F), \mathcal{L}(F, E)\right) $。最后，由 (7.6) 借助链式法则及简单的归纳论证，可知该映射是光滑的。■

##### 反函数定理

现在我们可以证明一个关于可微映射局部行为的中心结果，它——正如我们稍后将看到的——具有极其深远的影响。

7.3 定理（反函数）设 $ X $ 在 $ E $ 中是开集，$ x_{0} \in X $。又设对 $ q \in \mathbb{N}^{\times} \cup \{\infty\} $ 有 $ f \in C^{q}(X, F) $。最后，设

\[ \partial f(x_{0}) \in \mathcal{L}\mathrm{is}(E, F) . \]

则存在 $ x_{0} $ 在 $ X $ 中的开邻域 $ U $ 以及 $ y_{0} := f(x_{0}) $ 的开邻域 $ V $，它们具有如下性质：

(i) $ f : U \to V $ 是双射。

(ii) $ f^{-1} \in C^{q}(V, E) $，且对每个 $ x \in U $ 有

\[ \partial f(x) \in \mathcal{L}\mathrm{is}(E, F) \quad \text{且} \quad \partial f^{-1}(f(x)) = \left[\partial f(x)\right]^{-1} . \]

证明 (i) 令 $ A := \partial f(x_{0}) $，$ h := A^{-1}f : X \to E $。则由习题 5.1 与链式法则（定理 5.7）可知，$ h $ 属于 $ C^{q}(X, E) $ 且 $ \partial h(x_{0}) = A^{-1}\partial f(x_{0}) = I $。于是我们不失一般性地考虑 $ E = F $ 且 $ \partial f(x_{0}) = I $ 的情形（见习题 5.1）。

(ii) 我们通过令

\[ h(x) := f(x + x_{0}) - f(x_{0}) \qquad \text{对 } x \in X_{1} := X - x_{0} . \]

再做一次简化。则 $ X_{1} $ 在 $ E $ 中是开集，且 $ h \in C^{q}(X_{1}, E) $，$ h(0) = 0 $，$ \partial h(0) = \partial f(x_{0}) = I $。因此只需考虑

\[ E = F , \quad x_{0} = 0 , \quad f(0) = 0 , \quad \partial f(0) = I . \]

(iii) 我们证明 $ f $ 在 0 附近局部双射。确切地说，我们证明存在零点邻域\footnote{即 0 的邻域。} $ U $ 与 $ V $，使得对每个 $ y \in V $，方程 $ f(x) = y $ 在 $ U $ 中有唯一解，且 $ f(U) \subset V $。这个问题显然等价于确定零点邻域 $ U $ 与 $ V $，使得映射

\[ g_{y} : U \to E , \quad x \mapsto x - f(x) + y \]

对每个 $ y \in V $ 恰有一个不动点。开始，我们令 $ g := g_{0} $。因为 $ \partial f(0) = I $，有 $ \partial g(0) = 0 $，且利用 $ \partial g $ 的连续性可找到 $ r > 0 $ 使得

\[ \|\partial g(x)\| \le 1/2 \qquad \text{对 } x \in 2r\mathbb{B} . \tag{7.7} \]

因为 $ g(0) = 0 $，应用积分形式的中值定理（定理 3.10）得 $ g(x) = \int_{0}^{1}\partial g(tx)x\,dt $。进而，我们得到

\[ \|g(x)\| \le \int_{0}^{1}\|\partial g(tx)\|\|x\|\,dt \le \|x\|/2 \qquad \text{对 } x \in 2r\mathbb{B} . \tag{7.8} \]

因此对每个 $ y \in r\mathbb{B} $，我们有估计

\[ \|g_{y}(x)\| \le \|y\| + \|g(x)\| \le 2r \qquad \text{对 } x \in 2r\mathbb{B} , \]

即对每个 $ y \in r\mathbb{B} $，$ g_{y} $ 把 $ 2r\mathbb{B} $ 映到其自身。

对 $ x_{1}, x_{2} \in 2r\mathbb{B} $，借助中值定理可得

\[ \|g_{y}(x_{1}) - g_{y}(x_{2})\| = \left\|\int_{0}^{1}\partial g\left(x_{2} + t(x_{1} - x_{2})\right)(x_{1} - x_{2})\,dt\right\| \le \frac{1}{2}\|x_{1} - x_{2}\| . \]

于是，对每个 $ y \in r\mathbb{B} $，$ g_{y} $ 是 $ 2r\mathbb{B} $ 上的压缩映射。由此，巴拿赫不动点定理（定理 IV.4.3）保证了存在唯一的 $ x \in 2r\mathbb{B} $ 使得 $ g_{y}(x) = x $，从而使得 $ f(x) = y $。

我们令 $ V := r\mathbb{B} $，$ U := f^{-1}(V) \cap 2r\mathbb{B} $。则 $ U $ 是开零点邻域，且 $ f|U : U \to V $ 是双射。

(iv) 现在证明 $ f^{-1} : V \to E $ 连续。考虑

\[ x = x - f(x) + f(x) = g(x) + f(x) \qquad \text{对 } x \in U . \]

因此

\[ \|x_{1} - x_{2}\| \le \frac{1}{2}\|x_{1} - x_{2}\| + \|f(x_{1}) - f(x_{2})\| \qquad \text{对 } x_{1}, x_{2} \in U , \]

从而

\[ \|f^{-1}(y_{1}) - f^{-1}(y_{2})\| \le 2\|y_{1} - y_{2}\| \qquad \text{对 } y_{1}, y_{2} \in V . \tag{7.9} \]

于是 $ f^{-1} : V \to E $ 是利普希茨连续的。

(v) 我们证明 $ f^{-1} : V \to E $ 的可微性，并证明其导数由下式给出

\[ \partial f^{-1}(y) = \left[\partial f(x)\right]^{-1} \qquad \text{其中 } x := f^{-1}(y) . \tag{7.10} \]

首先证明对 $ x \in U $，$ \partial f(x) $ 属于 $ \mathcal{L}\mathrm{aut}(E) $。由 $ f(x) = x - g(x) $ 可知，对 $ x \in U $ 有 $ \partial f(x) = I - \partial g(x) $。注意到 (7.7)，可见 $ \partial f(x) \in \mathcal{L}\mathrm{aut}(E) $ 由命题 7.1 得到。

现在设 $ y, y_{0} \in V $，令 $ x := f^{-1}(y) $，$ x_{0} := f^{-1}(y_{0}) $。则

\[ f(x) - f(x_{0}) = \partial f(x_{0})(x - x_{0}) + o(\|x - x_{0}\|) \quad (x \to x_{0}) , \]

且当 $ x \to x_{0} $ 时，我们得到

\[ \begin{aligned} &\|f^{-1}(y) - f^{-1}(y_{0}) - \left[\partial f(x_{0})\right]^{-1}(y - y_{0})\| \\ &\quad = \|x - x_{0} - \left[\partial f(x_{0})\right]^{-1}(f(x) - f(x_{0}))\| \le c\left\|o(\|x - x_{0}\|)\right\| \end{aligned} \]

其中 $ c = \left\|\left[\partial f^{-1}(x_{0})\right]^{-1}\right\| $。因为 (7.9) 给出估计 $ 2\|y - y_{0}\| \ge \|x - x_{0}\| $，我们最终有

\[ \frac{\|f^{-1}(y) - f^{-1}(y_{0}) - \left[\partial f(x_{0})\right]^{-1}(y - y_{0})\|}{\|y - y_{0}\|} \le \frac{2c\left\|o(\|x - x_{0}\|)\right\|}{\|x - x_{0}\|} \tag{7.11} \]

当 $ x \to x_{0} $ 时。现在令 $ y \to y_{0} $ 取极限，由 (iv) 知 $ x \to x_{0} $，而 (7.11) 表明 $ f^{-1} $ 在 $ y_{0} $ 处可微，其导数为 $ \left[\partial f(x_{0})\right]^{-1} $。

(vi) 还需验证 $ f^{-1} $ 属于 $ C^{q}(V, E) $。考虑 (7.10) 所表明的，即

\[ \partial f^{-1} = (\partial f \circ f^{-1})^{-1} = \operatorname{inv} \circ \partial f \circ f^{-1} . \tag{7.12} \]

由 (iv) 知 $ f^{-1} $ 属于 $ C(V, E) $，且 $ f^{-1}(V) \cap \mathbb{B}(x_{0}, 2r) = U $；又由假设知 $ \partial f \in C(U, \mathcal{L}(E)) $。利用命题 7.2 可知 $ \partial f^{-1} $ 属于 $ C(V, \mathcal{L}(E)) $，这就证明了 $ f^{-1} \in C^{1}(V, E) $。对 $ q > 1 $，可由 (7.12) 利用链式法则归纳地证明 $ f^{-1} \in C^{p}(V, E) $。■

##### 微分同胚

设 $ X $ 在 $ E $ 中是开集，$ Y $ 在 $ F $ 中是开集，$ q \in \mathbb{N} \cup \{\infty\} $。我们称映射 $ f : X \to Y $ 为从 $ X $ 到 $ Y $ 的 $ C^{q} $ 微分同胚，若它是双射且

\[ f \in C^{q}(X, Y) , \quad \text{且} \quad f^{-1} \in C^{q}(Y, E) . \]

我们可以把 $ C^{0} $ 微分同胚称为**同胚**或**拓扑映射**。我们令

\[ \operatorname{Diff}^{q}(X, Y) := \{f : X \to Y ; \ f \text{ 是 } C^{q} \text{ 微分同胚}\} . \]

映射 $ g : X \to F $ 是局部 $ C^{q} $ 微分同胚\footnote{当 $ q = 0 $ 时，人们说局部同胚或局部拓扑映射。}，如果每个 $ x_{0} \in X $ 都有开邻域 $ U \in \mathfrak{U}_{X}(x_{0}) $ 与 $ V \in \mathfrak{U}_{F}(g(x_{0})) $，使得 $ g|U $ 属于 $ \operatorname{Diff}^{q}(U, V) $。我们用 $ \operatorname{Diff}_{\mathrm{loc}}^{q}(X, F) $ 表示从 $ X $ 到 $ F $ 的所有局部 $ C^{q} $ 微分同胚之集。

7.4 注 设 $ X $ 在 $ E $ 中是开集，$ Y $ 在 $ F $ 中是开集。

(a) 对每个 $ q \in \mathbb{N} $，有包含关系

\[ \begin{aligned} &\operatorname{Diff}^{\infty}(X, Y) \subset \operatorname{Diff}^{q+1}(X, Y) \subset \operatorname{Diff}^{q}(X, Y) \subset \operatorname{Diff}_{\mathrm{loc}}^{q}(X, F) , \\ &\operatorname{Diff}_{\mathrm{loc}}^{\infty}(X, F) \subset \operatorname{Diff}_{\mathrm{loc}}^{q+1}(X, F) \subset \operatorname{Diff}_{\mathrm{loc}}^{q}(X, F) . \end{aligned} \]

(b) 设 $ f \in C^{q+1}(X, Y) $ 且 $ f \in \operatorname{Diff}^{q}(X, Y) $。则一般不能推出 $ f $ 属于 $ \operatorname{Diff}^{q+1}(X, Y) $。

证明 令 $ E := F := \mathbb{R} $，$ X := Y := \mathbb{R} $，考虑 $ f(x) := x^{3} $。则 $ f $ 是光滑的拓扑映射，即 $ f \in C^{\infty}(X, Y) \cap \operatorname{Diff}^{0}(X, Y) $。然而 $ f^{-1} $ 在 0 处不可微。■

(c) 局部拓扑映射是**开映射**，即它们把开集映为开集（见习题 III.2.14）。

证明 这容易由定理 I.3.8(ii) 与 III.2.4(ii) 得到。■

(d) 对 $ f \in \operatorname{Diff}_{\mathrm{loc}}^{1}(X, Y) $，有 $ \partial f(x) \in \mathcal{L}\mathrm{is}(E, F) $ 对 $ x \in X $ 成立。

证明 这是链式法则的推论（见习题 1）。■

7.5 推论 设 $ X $ 在 $ E $ 中是开集，$ q \in \mathbb{N}^{\times} \cup \{\infty\} $，且 $ f \in C^{q}(X, F) $。则

\[ f \in \operatorname{Diff}_{\mathrm{loc}}^{q}(X, F) \iff \partial f(x) \in \mathcal{L}\mathrm{is}(E, F) \ \text{对 } x \in X . \]

证明 “$ \Rightarrow $” 由注 7.4(a)，归纳可得 $ f $ 属于 $ \operatorname{Diff}_{\mathrm{loc}}^{1}(X, F) $。于是结论由注 7.4(d) 得到。

“$ \Leftarrow $” 这由反函数定理得到。■

7.6 注 在推论 7.5 的假设下，对 $ x \in X $ 有 $ \partial f(x) $ 属于 $ \mathcal{L}\mathrm{is}(E, F) $。则 $ f $ 是局部拓扑的，从而 $ Y := f(X) $ 是开集。然而一般地，$ f $ 不是从 $ X $ 到 $ Y $ 的 $ C^{q} $ 微分同胚。

证明 令 $ X := E := F := \mathbb{C} $，$ f(z) := e^{z} $。则 $ f $ 光滑，且对 $ z \in \mathbb{C} $ 有 $ \partial f(z) = e^{z} \ne 0 $。由于其 $ 2\pi i $-周期性，$ f $ 不是单射。■

##### 非线性方程组的可解性

我们现在对 $ E = F = \mathbb{R}^{m} $ 的情形陈述反函数定理。我们将利用 $ \mathbb{R}^{m} $ 上的每个线性映射都连续，以及线性映射当其行列式不为零时可逆这一事实。

本节其余部分，设 $ X $ 在 $ \mathbb{R}^{m} $ 中是开集，$ x_{0} \in X $。又设 $ q \in \mathbb{N}^{\times} \cup \{\infty\} $，$ f = (f^{1}, \ldots, f^{m}) \in C^{q}(X, \mathbb{R}^{m}) $。

7.7 定理 若 $ \det(\partial f(x_{0})) \ne 0 $，则存在 $ x_{0} $ 的开邻域 $ U $ 与 $ f(x_{0}) $ 的开邻域 $ V $，使得 $ f|U $ 属于 $ \operatorname{Diff}^{q}(U, V) $。

证明 由定理 1.6 知 $ \operatorname{Hom}(\mathbb{R}^{m}, \mathbb{R}^{m}) = \mathcal{L}(\mathbb{R}^{m}) $。线性代数告诉我们

\[ \partial f(x_{0}) \in \mathcal{L}\mathrm{aut}(\mathbb{R}^{m}) \iff \det(\partial f(x_{0})) \ne 0 \]

（例如 [Gab96, A3.6(a)]）。于是结论由定理 7.3 得到。■

7.8 推论 若 $ \det(\partial f(x_{0})) \ne 0 $，则存在 $ x_{0} $ 的开邻域 $ U $ 与 $ f(x_{0}) $ 的开邻域 $ V $，使得方程组

\[ \begin{aligned} f^{1}(x^{1}, \ldots, x^{m}) &= y^{1} , \\ &\vdots \\ f^{m}(x^{1}, \ldots, x^{m}) &= y^{m} \end{aligned} \tag{7.13} \]

对每个 $ m $-元组 $ (y^{1}, \ldots, y^{m}) \in V $ 在 $ U $ 中恰有一个解

\[ x^{1} = x^{1}(y^{1}, \ldots, y^{m}), \ldots, x^{m} = x^{m}(y^{1}, \ldots, y^{m}) . \]

函数 $ x^{1}, \ldots, x^{m} $ 属于 $ C^{q}(V, \mathbb{R}) $。

7.9 注 (a) 根据注 1.18(b) 与推论 2.9，线性映射 $ \partial f(x) $ 的行列式可用雅可比矩阵 $ \left[\partial_{k}f^{j}(x)\right] $ 来计算，即 $ \det(\partial f(x)) = \det\left[\partial_{k}f^{j}(x)\right] $。它称为 $ f $（在点 $ x $ 处）的**雅可比行列式**。我们也可以简单地称它为**雅可比**，并把它写作

\[ \frac{\partial(f^{1}, \ldots, f^{m})}{\partial(x^{1}, \ldots, x^{m})}(x) . \]

(b) 由于反函数定理的证明是构造性的，原则上可用它来计算（近似地）$ f^{-1}(x) $。特别地，通过在 $ x_{0} $ 的邻域中考察方程组 (7.13)，我们可以逼近推论 7.8 所描述的有限维情形的解。

证明 这是因为定理 7.3 的证明基于压缩定理，因而基于逐次逼近法。■
