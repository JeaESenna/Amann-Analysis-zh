因此 $ \omega\,|\,\partial B $ 不可积，莱布尼茨面积公式不成立。这说明定理 3.4 确实需要 $ \omega\,|\,\partial B $ 可积这一假设。 ■

##### 高维问题

在下面的例子中，我们考虑把上面的结果推广到高维情形。

3.10 例 (a)（体积的计算） 设 $ \Omega $ 是 $ \mathbb{R}^m $ 中的有界分段光滑区域。则

\[ \operatorname{vol}(\overline{\Omega}) = \operatorname{vol}(\Omega) = \frac{1}{m}\int_{\partial\Omega}\sum_{j=1}^{m}(-1)^{j-1}x^{j}\,dx^{1}\wedge\cdots\wedge\widehat{dx^{j}}\wedge\cdots\wedge dx^{m}. \]

证明 我们置

\[ \alpha := \sum_{j=1}^{m}(-1)^{j-1}x^{j}\,dx^{1}\wedge\cdots\wedge\widehat{dx^{j}}\wedge\cdots\wedge dx^{m}\in\Omega^{m-1}(\mathbb{R}^{m}) \]

且 $ \omega := \varphi\alpha $，其中 $ \varphi $ 是关于 $ \overline{\Omega} $ 的紧邻域 $ U $ 上的光滑截断函数。于是 $ \omega $ 属于 $ \Omega_c^{m-1}(\mathbb{R}^m) $，在 $ U $ 上与 $ \alpha $ 一致，并且满足

\[ d\omega\,|\,\overline{\Omega} = m\omega_{\mathbb{R}^m}\,|\,\overline{\Omega}, \]

这由例 XI.3.7(b) 推出。因为 $ \mathcal{H}^{m-1}(S_{\overline{\Omega}}) = 0 $，并且由定理 1.7(iii) 与 (iv)，我们看到 $ \operatorname{Rd}(\overline{\Omega}) = S_{\overline{\Omega}}\cup\partial\Omega $ 是 $ \lambda_m $-零集。因此我们得到

\[ m\operatorname{vol}(\Omega) = m\operatorname{vol}(\overline{\Omega}) = \int_{\overline{\Omega}}dx = \int_{\overline{\Omega}}d\omega = \int_{\partial\Omega}\omega = \int_{\partial\Omega}\alpha, \]

其中最后一个等式由定理 3.4 形式的斯托克斯定理推出。 ■

(b)（球面） 对 $ \Omega = \mathbb{B}^m $，我们再次得到公式

\[ \operatorname{vol}(S^{m-1}) = m\operatorname{vol}(\mathbb{B}^{m}), \]

这已在例 1.13(c) 中导出。

证明 这由 (a) 并借助例 XI.5.3(c) 推出。 ■

(c) 设 $ N $ 是 $ \mathbb{R}^m\setminus\{0\} $ 中的一个非空紧致超曲面，使得从 $ 0 $ 出发的每条半射线至多与 $ N $ 相交一次。又设 $ K(N) $ 是以 $ N $ 为底、以 $ 0 $ 为顶点的锥。于是，作为莱布尼茨扇形公式的一个（部分）推广，我们有

\[ \operatorname{vol}(K(N)) = \frac{1}{m}\int_{N}\sum_{j=1}^{m}(-1)^{j-1}x^{j}\,dx^{1}\wedge\cdots\wedge\widehat{dx^{j}}\wedge\cdots\wedge dx^{m}. \]

证明 我们容易验证，$ B := K(N) $ 是 $ \mathbb{R}^m $ 的一个带薄奇异集的 $ m $ 维紧致子流形，且 $ \partial B = \operatorname{int}(N)\cup S $，其中 $ S := \{\,t\,i(p) \,;\, p\in N,\ 0 < t < 1\,\} $，而 $ i: N\hookrightarrow\mathbb{R}^m $。例 XI.4.13(b) 给出

\[ \alpha := \sum_{j=1}^{m}(-1)^{j-1}x^{j}\,dx^{1}\wedge\cdots\wedge\widehat{dx^{j}}\wedge\cdots\wedge dx^{m} = v\lrcorner\omega_{\mathbb{R}^m} \]

其中 $ v(x) := (x,x)\in T_x\mathbb{R}^m $。于是注 2.2(g) 表明 $ \alpha = (v\,|\,\nu)\omega_{\partial B} $。因为对 $ p\in S $ 有 $ v(p)\in T_p S $，我们得到 $ \alpha\,|\,S = 0 $。又因为 $ d\alpha = m\omega_{\mathbb{R}^m} $，定理 3.4 给出

\[ m\operatorname{vol}(B) = \int_{B}d\alpha = \int_{\partial B}\alpha = \int_{\operatorname{int}(N)}\alpha = \int_{N}\alpha \]

从而得到结论。 ■

##### 同伦不变性与应用

设 $ I := [0,1] $，$ r\in\mathbb{N} $，并假定 $ M $ 是紧致的且没有边界。正如在微分形式的富比尼定理之前的讨论中那样，对 $ \omega\in\Omega^{r+1}(I\times M) $ 与 $ p\in M $，我们用 $ \widehat{\omega}(\cdot,p) $ 表示由 $ \omega $ 诱导的 $ M $ 上取值于 1-形式的 $ r $-形式。它定义为

\[ \widehat{\omega}(\cdot,p)(v_1,\ldots,v_r) := \omega(\cdot,p)(\cdot,v_1,\ldots,v_r)\quad \text{对 } v_1,\ldots,v_r\in T_p M . \]

由于对每个 $ r $-元组 $ (v_1,\ldots,v_r)\in(T_p M)^r $，1-形式 $ \widehat{\omega}(\cdot,p)(v_1,\ldots,v_r) $ 都连续，从而是 $ I $ 上可积的，因此

\[ \int_I\omega := \left(p\mapsto\int_I\widehat{\omega}(\cdot,p)\right) \]

对每个 $ \omega\in\Omega^{r+1}(I\times M) $ 都是 $ \Omega^r(M) $ 中一个良定义的元素。因此线性映射

\[ K : \Omega^{r+1}(I\times M)\to\Omega^r(M),\quad \omega\mapsto\int_I\omega \tag{3.15} \]

是有定义的。与第 XI.3 节中一样，我们用 $ i_\ell $ 表示嵌入

\[ i_\ell : M\to I\times M,\quad p\mapsto(\ell,p) \]

其中 $ \ell\in\{0,1\} = \partial I $。于是引理 XI.3.9 有如下整体推广：

3.11 引理 $ K\circ d + d\circ K = i_1^* - i_0^* $。

证明 因为该陈述关于 $ M $ 是局部的，所以只需在局部坐标中验证它。而这正是引理 XI.3.9 所做的事。 ■

作为这个引理的一个应用，我们现在可以证明命题 VIII.4.7 的高维推广，该命题讨论的是线积分的同伦不变性。

3.12 定理 设 $ M $ 与 $ N $ 是不带边界的紧 $ m $ 维定向流形。若 $ f_0,f_1\in C^\infty(M,N) $ 同伦，则

\[ \int_M f_0^*\omega = \int_M f_1^*\omega \quad \text{对 } \omega\in\Omega^m(N) . \]

证明 按假设，存在 $ h\in C^\infty(I\times M,N) $ 使得对 $ j = 0,1 $ 有 $ h(j,\cdot) = f_j $。现在令 $ g := K\circ h^* $，其中 $ K $ 是映射 (3.15)。于是，因为 $ d $ 与 $ h^* $ 可交换，我们有

\[ d\circ g + g\circ d = d\circ K\circ h^* + K\circ h^*\circ d = d\circ K\circ h^* + K\circ d\circ h^* = (d\circ K + K\circ d)\circ h^* = i_1^*h^* - i_0^*h^* = f_1^* - f_0^*. \]

由 $ d\omega = 0 $（对 $ \omega\in\Omega^m(N) $），于是推出

\[ f_1^*\omega - f_0^*\omega = (d\circ g)\omega - g\circ d\omega = d(Kh^*\omega) . \]

因此我们得到

\[ \int_M f_1^*\omega - \int_M f_0^*\omega = \int_M d(Kh^*\omega) = 0 \]

由推论 3.5(ii) 推出。 ■

下面我们演示斯托克斯定理的几个拓扑应用。

3.13 命题（毛球定理） 偶数维球面上的每个光滑向量场都有零点。

证明 由例 VII.10.14(a)，我们知道对 $ p\in S^m $，$ T_p S^m $ 是 $ \mathbb{R}p $ 在 $ \mathbb{R}^{m+1} $ 中的正交补。因此，我们可以把 $ v\in\mathcal{V}(S^m) $ 看作一个光滑映射 $ v: S^m\to\mathbb{R}^{m+1} $，且对 $ p\in S^m $ 有 $ v(p)\perp p $。若 $ v $ 有零点，则我们可以把 $ v $ 换成 $ p\mapsto v(p)/|v(p)| $。因此我们可以假定对 $ p\in S^m $ 有 $ |v(p)| = 1 $，也就是说，可以假定 $ v(S^m)\subset S^m $。由此，因为

\[ |\cos(\pi t)p + \sin(\pi t)v(p)|^2 = \cos^2(\pi t)|p|^2 + \sin^2(\pi t)|v(p)|^2 = 1, \]

我们发现映射

\[ h : I\times S^m\to S^m,\quad (t,p)\mapsto\cos(\pi t)p + \sin(\pi t)v(p) \]

是有定义的。注 XI.1.1(j) 表明 $ h $ 光滑，且 $ h(0,\cdot) = \operatorname{id}_{S^m} $、$ h(1,\cdot) = -\operatorname{id}_{S^m} $。因此 $ f_0 := \operatorname{id}_{S^m} $ 同伦于**对跖映射** $ f_1 := -\operatorname{id}_{S^m} $。现在定理 3.12 给出

\[ \int_{S^m}\omega = \int_{S^m}f_1^*\omega \quad \text{对 } \omega\in\Omega^m(S^m) . \tag{3.16} \]

假定 $ m $ 是偶数。则 $ F := -\operatorname{id}_{\overline{\mathbb{B}}^{m+1}} $ 是 $ \overline{\mathbb{B}}^{m+1} $ 到自身的反转定向的微分同胚。现在这一点与注 XI.1.1(j) 表明 $ f_1 = F\,|\,S^m $ 也是 $ S^m $ 到自身的反转定向的微分同胚。因此注 2.1(f) 与定理 2.3 给出等式 $ \int_{S^m}f_1^*\omega = -\int_{S^m}\omega $，它连同 (3.16) 表明 $ \int_{S^m}\omega = 0 $（对 $ \omega\in\Omega^m(S^m) $）。然而，这与 $ \int_{S^m}\omega_{S^m} = \operatorname{vol}(S^m)\neq 0 $ 矛盾。 ■

我们可以把 $ S^2 $ 上的光滑向量场解释为对“毛球”的一种（数学上理想化的）梳理。于是命题 3.13 说：“一个被光滑梳理过的毛球至少有一个秃点”。

我们还可以由定理 3.12 推出基本的布劳威尔不动点定理。

3.14 定理（布劳威尔不动点定理） $ \overline{\mathbb{B}}^m $ 到自身的每个连续映射都至少有一个不动点。

证明\footnote{当 $ m = 1 $ 时，该断言由介值定理推出（见习题 III.5.1）。} (i) 设 $ f\in C(\overline{\mathbb{B}}^m,\overline{\mathbb{B}}^m) $，并假定 $ f $ 没有不动点。我们考虑径向收缩

\[ \rho : \mathbb{R}^m\to\overline{\mathbb{B}}^m,\quad x\mapsto \begin{cases} x & \text{若 } x\in\overline{\mathbb{B}}^m, \\ x/|x| & \text{若 } x\in(\overline{\mathbb{B}}^m)^c. \end{cases} \]

容易验证 $ \rho $ 是一致连续的。因此函数 $ g := f\circ\rho: \mathbb{R}^m\to\overline{\mathbb{B}}^m $ 也一致连续，且 $ g\,|\,\overline{\mathbb{B}}^m = f $。特别地，$ g $ 没有不动点。因为 $ g(\mathbb{R}^m)\subset\overline{\mathbb{B}}^m $，所以对 $ |x|\ge 2 $ 有 $ |g(x) - x|\ge |x| - |g(x)|\ge 1 $。因为 $ 2\overline{\mathbb{B}}^m $ 是紧致的，存在 $ \delta\in(0,1/2] $ 使得对 $ |x|\le 2 $ 有 $ |g(x) - x|\ge 2\delta $。因此对所有 $ x\in\mathbb{R}^m $ 有 $ |g(x) - x|\ge 2\delta > 0 $。

假定 $ \{\varphi_\varepsilon\,;\,\varepsilon > 0\} $ 是一个磨光核。因为 $ g $ 属于 $ BUC(\mathbb{R}^m) $，定理 X.7.11 表明存在 $ \varepsilon_0 > 0 $ 使得 $ h := \varphi_{\varepsilon_0} * g $ 满足估计

\[ |h(x) - g(x)|\le \|h - g\|_\infty < \delta \quad \text{对 } x\in\mathbb{R}^m . \]

因此

\[ |h(x) - x|\ge |g(x) - x| - |h(x) - g(x)|\ge \delta \quad \text{对 } x\in\mathbb{R}^m . \]

此外，我们发现

\[ |h(x)| = \left|\int_{\mathbb{R}^m}\varphi_{\varepsilon_0}(x - y)g(y)\,dy\right|\le \|g\|_\infty\int_{\mathbb{R}^m}\varphi_{\varepsilon_0}(x - y)\,dy = \|g\|_\infty\int_{\mathbb{R}^m}\varphi_1\,dx\le 1 \]

对 $ x\in\mathbb{R}^m $。最后，由定理 X.7.8(iv) 推出 $ h $ 光滑。因此 $ h\,|\,\overline{\mathbb{B}}^m $ 是 $ \overline{\mathbb{B}}^m $ 到自身的、没有不动点的光滑映射。在下一步中，我们证明这是不可能的。
