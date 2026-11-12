定理 7.11 与定理 2.18(ii) 表明

\[ \lim_{\varepsilon\to0}(2\pi)^{-n/2}\int\xi^\alpha e^{-i\langle x,\xi\rangle}(f*\varphi_\varepsilon)(x)\,dx = \xi^\alpha\widehat{f}(\xi) \]

以及

\[ \lim_{\varepsilon\to0}(2\pi)^{-n/2}\int e^{-i\langle x,\xi\rangle}\left((D^\alpha f)*\varphi_\varepsilon\right)(x)\,dx = \widehat{D^\alpha f}(\xi) \]

对 $ \xi \in \mathbb{R}^n $ 成立。利用 (9.8)，这就证明了断言。

(ii) 我们令 $ h(x,\xi) := e^{-i\langle x,\xi\rangle}f(x) $，$ (x,\xi) \in \mathbb{R}^n \times \mathbb{R}^n $。则对每个 $ \xi \in \mathbb{R}^n $，$ h(\cdot,\xi) $ 属于 $ \mathcal{L}_1 $；对每个 $ x \in \mathbb{R}^n $，$ h(x,\cdot) $ 属于 $ C^\infty $。此外还有

\[ D_\xi^\alpha h(x,\xi) = (-1)^{|\alpha|}x^\alpha h(x,\xi) \qquad \text{对 } (x,\xi) \in \mathbb{R}^{2n}, \quad \alpha \in \mathbb{N}^n, \]

从而

\[ |D_\xi^\alpha h(x,\xi)| \le (1+|x|^2)^{|\alpha|/2}|h(x,\xi)| = \Lambda^{|\alpha|}(x)|f(x)| . \tag{9.9} \]

于是由含参积分求导定理可知，$ \widehat{f} $ 属于 $ C^m $，并且

\[ \begin{aligned} D^\alpha\widehat{f}(\xi) &= (2\pi)^{-n/2}\int D_\xi^\alpha h(x,\xi)\,dx = (2\pi)^{-n/2}(-1)^{|\alpha|}\int x^\alpha h(x,\xi)\,dx \\ &= (-1)^{|\alpha|}\widehat{X^\alpha f}(\xi) \end{aligned} \]

对 $ \xi \in \mathbb{R}^n $ 及满足 $ |\alpha| \le m $ 的 $ \alpha \in \mathbb{N}^n $ 成立。最后，(9.9) 表明

\[ |D^\alpha\widehat{f}(\xi)| \le (2\pi)^{-n/2}\int|D_\xi^\alpha h(x,\xi)|\,dx \le (2\pi)^{-n/2}\|\Lambda^{|m|}f\|_1 < \infty \qquad \text{对 } \xi \in \mathbb{R}^n . \]

因此 $ \widehat{f} $ 属于 $ BC^m $。■

9.7 命题 傅里叶变换连续且线性地把 $ \mathcal{S} $ 映入自身。

证明 (i) 设 $ f \in \mathcal{S} $ 且 $ m \in \mathbb{N} $。则

\[ \begin{aligned} \int\Lambda^m(x)|f(x)|\,dx &= \int(1+|x|^2)^{(m+n+1)/2}|f(x)|(1+|x|^2)^{-(n+1)/2}\,dx \\ &\le q_{m+n+1,0}(f)\int(1+|x|^2)^{-(n+1)/2}\,dx < \infty . \end{aligned} \]

由命题 9.6(ii) 可知 $ \widehat{f} $ 属于 $ BC^m $，从而属于 $ BC^\infty $。

(ii) 设 $ k,m \in \mathbb{N} $ 且 $ \alpha,\beta \in \mathbb{N}^n $，满足 $ |\alpha| \le m $、$ |\beta| \le k $。又设 $ f \in \mathcal{S} $。则由注 9.2(h) 与定理 9.3 可知，$ \Lambda^m f $ 与 $ D^\beta(X^\alpha f) $ 属于 $ \mathcal{L}_1 $。因此命题 9.6 给出

\[ \xi^\beta D^\alpha\widehat{f}(\xi) = (-1)^{|\alpha|}\xi^\beta\widehat{X^\alpha f}(\xi) = (-1)^{|\alpha|}\widehat{D^\beta(X^\alpha f)}(\xi) \qquad \text{对 } \xi \in \mathbb{R}^n . \tag{9.10} \]

注 9.2(g) 表明存在 $ c > 0 $ 使得

\[ \begin{aligned} |\xi^\beta D^\alpha\widehat{f}(\xi)| &\le (2\pi)^{-n/2}\int|D^\beta(X^\alpha f)(x)|(1+|x|^2)^{(n+1)/2}(1+|x|^2)^{-(n+1)/2}\,dx \\ &\le c\, q_{m+n+1,k}(f) \end{aligned} \]

对 $ |\alpha| \le m $ 与 $ |\beta| \le k $ 成立。因此存在 $ C > 0 $ 使得

\[ q_{k,m}(\widehat{f}) \le Cq_{m+n+1,k}(f) . \tag{9.11} \]

所以 $ \widehat{f} $ 属于 $ \mathcal{S} $。傅里叶变换的连续性现在容易由 (9.11) 与注 9.2(c) 推出。这样就完成了。■

9.8 推论 对 $ f \in \mathcal{S} $ 与 $ \alpha \in \mathbb{N}^n $，有

\[ \widehat{D^\alpha f} = X^\alpha\widehat{f} \qquad \text{与} \qquad \widehat{X^\alpha f} = (-1)^{|\alpha|}D^\alpha\widehat{f} . \]

证明 这些都是 (9.10) 的特殊情形。■

命题 9.6 与推论 9.8 表明，傅里叶变换把微分变成乘以函数，反过来也一样。这一事实是其巨大效用的重要来源。

现在容易把注 9.1(a) 的陈述改进为：$ L_1 $ 在 $ \mathcal{F} $ 下的像已经落在 $ C_0 $ 中。

9.9 命题\footnote{也称为黎曼–勒贝格引理。}（黎曼–勒贝格）$ \mathcal{F} \in \mathcal{L}(L_1,C_0) $。

证明 命题 9.7 与 $ \mathcal{S} \subset C_0 $ 蕴含 $ \mathcal{F}(\mathcal{S}) \subset C_0 $。由定理 9.3 知 $ \mathcal{S} $ 是 $ L_1 $ 的稠密向量子空间，而注 9.1(a) 保证 $ \mathcal{F} $ 连续地把空间 $ L_1 $ 映入 $ BC $。断言随之成立，因为 $ C_0 $ 是 $ BC $ 的闭向量子空间。■

9.10 例 (a) 对 $ g := g_n\colon \mathbb{R}^n \to \mathbb{R} $，$ x \mapsto e^{-|x|^2/2} $，有 $ \widehat{g} = g $。

证明 (i) 指数函数的一个性质蕴含

\[ g_n(x) = g_1(x_1)\cdot\ldots\cdot g_1(x_n) \qquad \text{对 } x = (x_1,\ldots,x_n) \in \mathbb{R}^n . \]

为清楚起见，我们用 $ \mathcal{F}_n $ 表示 $ \mathbb{R}^n $ 上的傅里叶变换。则由富比尼–托内利定理可得

\[ \begin{aligned} \mathcal{F}_n(g_n)(\xi) &= (2\pi)^{-n/2}\int_{\mathbb{R}^n}e^{-i\langle x,\xi\rangle}e^{-|x|^2/2}\,dx = (2\pi)^{-n/2}\int_{\mathbb{R}^n}\prod_{j=1}^n e^{-ix_j\xi_j}e^{-x_j^2/2}\,dx \\ &= \prod_{j=1}^n(2\pi)^{-1/2}\int_{\mathbb{R}}e^{-ix_j\xi_j}e^{-x_j^2/2}\,dx_j = \prod_{j=1}^n\mathcal{F}_1(g_1)(\xi_j) . \end{aligned} \]

这表明只需处理一维情形。

(ii) 因此设 $ n = 1 $。对 $ f := \widehat{g} $，由例 8.7 得

\[ f(0) = \widehat{g}(0) = \frac{1}{\sqrt{2\pi}}\int_{-\infty}^{\infty}e^{-x^2/2}\,dx = 1 . \]

因为 $ xe^{-x^2/2} = -\partial(e^{-x^2/2}) $，即因为 $ Xg = -\partial g = -iDg $，推论 9.8 给出

\[ \partial f = \partial\widehat{g} = iD\widehat{g} = -i\widehat{Xg} = -\widehat{Dg} = -X\widehat{g} = -Xf . \]

因此 $ f $ 在 $ \mathbb{R} $ 上解线性初值问题 $ y'(t) = -ty(t) $、$ y(0) = 1 $；其唯一解是 $ g $。■

(b) 采用 (a) 与 (7.11) 的记号，有

\[ \widehat{g(\varepsilon\,\cdot)}(\xi) = g_\varepsilon(\xi) \qquad \text{对 } \xi \in \mathbb{R}^n, \quad \varepsilon > 0 . \]

证明 因为 $ g(\varepsilon\,\cdot) = \sigma_{1/\varepsilon}g $，这由 (a) 与注 9.1(d) 推出。■

(c) 设

\[ \varphi(x) := (2\pi)^{-n/2}e^{-|x|^2} \qquad \text{对 } x \in \mathbb{R}^n , \]

并令 $ \varepsilon > 0 $。则 $ \widehat{\varphi(\varepsilon\,\cdot)} = k_\varepsilon $，其中 $ k_1 = k $ 是**高斯核**。

证明 由 $ \varphi = (2\pi)^{-n/2}\sigma_{1/\sqrt{2}}g $ 与注 9.1(c) 可得

\[ \varphi(\varepsilon\,\cdot) = \sigma_{1/\varepsilon}\varphi = (2\pi)^{-n/2}\sigma_{1/\sqrt{2}\,\varepsilon}g = (2\pi)^{-n/2}g(\sqrt{2}\,\varepsilon\,\cdot) . \]

于是由 (b) 得到

\[ \widehat{\varphi(\varepsilon\,\cdot)}(x) = (2\pi)^{-n/2}g_{\sqrt{2}\,\varepsilon}(x) = \varepsilon^{-n}(4\pi)^{-n/2}e^{-|x|^2/4\varepsilon^2} = k_\varepsilon(x) \]

对 $ x \in \mathbb{R}^n $ 成立。■

##### 傅里叶积分定理

为了对 $ L_1 $ 上的傅里叶变换作更深入的研究，我们先给出以下结果。

9.11 命题 设 $ f,g \in L_1 $。则 $ \widehat{f}g $ 与 $ f\widehat{g} $ 属于 $ L_1 $，且

\[ \int\widehat{f}g\,dx = \int f\widehat{g}\,dx . \]

证明 由命题 9.9 容易推出 $ \widehat{f}g $ 与 $ f\widehat{g} $ 属于 $ L_1 $。设 $ \overset{*}{f} $ 与 $ \overset{*}{g} $ 分别是 $ f $ 与 $ g $ 的代表元。则由引理 7.2 可知

\[ h\colon \mathbb{R}^{2n} \to \mathbb{C}, \quad (x,y) \mapsto e^{-i\langle x,y\rangle}\overset{*}{f}(x)\overset{*}{g}(y) \tag{9.12} \]

是可测的。因为

\[ \iint|h(x,y)|\,dx\,dy = \|f\|_1\|g\|_1 , \tag{9.13} \]

我们可以对 $ h $ 应用富比尼–托内利定理，并得到

\[ \begin{aligned} \int\widehat{\overset{*}{f}}(y)\overset{*}{g}(y)\,dy &= \int(2\pi)^{-n/2}\int e^{-i\langle x,y\rangle}\overset{*}{f}(x)\,dx\,\overset{*}{g}(y)\,dy \\ &= \int(2\pi)^{-n/2}\int e^{-i\langle x,y\rangle}\overset{*}{g}(y)\,dy\,\overset{*}{f}(x)\,dx = \int\widehat{\overset{*}{g}}(x)\overset{*}{f}(x)\,dx . \end{aligned} \]

于是，注意到 $ \widehat{f} = \widehat{\overset{*}{f}} $ 与 $ \widehat{g} = \widehat{\overset{*}{g}} $，断言成立。■

我们现在对函数及其变换作各种假设，来证明关于傅里叶变换之逆的定理。

9.12 定理 对 $ f \in L_1 $，以下陈述成立：

(i) \[ \lim_{\varepsilon\to0}(2\pi)^{-n/2}\int e^{i\langle\cdot,\xi\rangle}\widehat{f}(\xi)e^{-\varepsilon^2|\xi|^2}\,d\xi = f \qquad \text{在 } L_1 \text{ 中} . \]

(ii)（$ L_1 $ 的傅里叶积分定理）若 $ \widehat{f} $ 属于 $ L_1 $，则 $ f = \overline{\mathcal{F}}(\widehat{f}) $，其中 $ \overline{\mathcal{F}} $ 是傅里叶余变换。

证明 (i) 我们采用例 9.10 的记号，并令

\[ \varphi^\varepsilon(\xi,y) := e^{i\langle\xi,y\rangle}\varphi(\varepsilon\xi) = (2\pi)^{-n/2}e^{i\langle y,\xi\rangle}e^{-\varepsilon^2|\xi|^2} \]

对 $ \xi,y \in \mathbb{R}^n $ 与 $ \varepsilon > 0 $ 成立。对 $ y \in \mathbb{R}^n $，我们用 $ \widehat{\varphi^\varepsilon}(\cdot,y) $ 表示 $ \xi \mapsto \varphi^\varepsilon(\xi,y) $ 的傅里叶变换。由例 9.10(c) 与注 9.1(e) 可得

\[ \widehat{\varphi^\varepsilon}(x,y) = k_\varepsilon(y-x) \qquad \text{对 } x,y \in \mathbb{R}^n . \]

因此命题 9.11 蕴含

\[ \begin{aligned} (2\pi)^{-n/2}\int\widehat{f}(\xi)e^{i\langle y,\xi\rangle}e^{-\varepsilon^2|\xi|^2}\,d\xi &= \int\widehat{f}(\xi)\varphi^\varepsilon(\xi,y)\,d\xi \\ &= \int f(x)\widehat{\varphi^\varepsilon}(x,y)\,dx = k_\varepsilon*f(y) \end{aligned} \]

对 $ y \in \mathbb{R}^n $ 成立。断言现在由定理 7.11 与例 7.12(a) 推出。

(ii) 若 $ \widehat{f} $ 属于 $ L_1 $，则由控制收敛定理可知

\[ \lim_{\varepsilon\to0}\int e^{i\langle y,\xi\rangle}\widehat{f}(\xi)e^{-\varepsilon^2|\xi|^2}\,d\xi = \int e^{i\langle y,\xi\rangle}\widehat{f}(\xi)\,d\xi = (2\pi)^{n/2}\mathcal{F}(\widehat{f})^{\sim}(y) \]

对 $ y \in \mathbb{R}^n $ 成立。于是 (i)、注 9.1(b) 与定理 2.18(i) 完成了证明。■

9.13 推论

(i)（$ \mathcal{S} $ 的傅里叶积分定理）傅里叶变换是 $ \mathcal{S} $ 的连续自同构。它的逆是傅里叶余变换。

(ii) 傅里叶变换连续且单射地把 $ L_1 $ 映入 $ C_0 $，并且像集稠密。

(iii) 对 $ f \in L_1\cap BUC $，等式\footnote{可以证明，对 $ f \in L_1\cap C $，(iii) 与 (iv) 仍然成立。}

\[ f(x) = \lim_{\varepsilon\to0}(2\pi)^{-n/2}\int e^{i\langle x,\xi\rangle}\widehat{f}(\xi)e^{-\varepsilon^2|\xi|^2}\,d\xi \]

关于 $ x \in \mathbb{R}^n $ 一致成立。

(iv) 对 $ f \in L_1\cap BUC $，设 $ \widehat{f} $ 属于 $ L_1 $。则

\[ f(x) = (2\pi)^{-n/2}\int e^{i\langle x,\xi\rangle}\widehat{f}(\xi)\,d\xi \qquad \text{对 } x \in \mathbb{R}^n . \]

证明 (i) 如同赋范向量空间的情形，我们用 $ \mathcal{L}(\mathcal{S}) $ 表示 $ \mathcal{S} $ 的全部连续自同态构成的向量空间；类似地，用 $ \mathcal{L}\mathrm{aut}(\mathcal{S}) $ 表示 $ \mathcal{S} $ 的自同构。则由注 9.2(i) 与命题 9.7 可知，$ \mathcal{F} $ 与 $ \overline{\mathcal{F}} $ 属于 $ \mathcal{L}(\mathcal{S}) $。由于 $ \mathcal{S} \subset L_1 $，定理 9.12(ii) 于是表明 $ \overline{\mathcal{F}} $ 是 $ \mathcal{F} $ 在 $ \mathcal{L}(\mathcal{S}) $ 中的左逆。又由 $ \widetilde{\widehat{u}} = \widehat{\widetilde{u}} $ 可得，对 $ f \in \mathcal{S} $ 有

\[ \mathcal{F}\overline{\mathcal{F}}f = \mathcal{F}(\mathcal{F}f)^{\sim} = \overline{\mathcal{F}}\mathcal{F}f = f . \]

因此 $ \overline{\mathcal{F}} $ 也是 $ \mathcal{F} $ 在 $ \mathcal{L}(\mathcal{S}) $ 中的右逆，从而 $ \mathcal{F} \in \mathcal{L}\mathrm{aut}(\mathcal{S}) $。

(ii) 若对 $ f \in L_1 $ 有 $ \widehat{f} = 0 $，则由定理 9.12(ii) 推出 $ f = 0 $。因此 $ \mathcal{F} $ 在 $ L_1 $ 上是单射；又由黎曼–勒贝格引理知 $ \mathcal{F} $ 属于 $ \mathcal{L}(L_1,C_0) $。由于 (i) 与 $ \mathcal{S} \subset L_1 $，我们有 $ \mathcal{S} = \mathcal{F}(\mathcal{S}) \subset \mathcal{F}(L_1) $。于是由注 9.2(f) 可知 $ \mathcal{F}(L_1) $ 在 $ C_0 $ 中稠密。

(iii) 由定理 9.12(i) 的证明与定理 7.11 推出。

(iv) 现在显然。■

9.14 注 (a) 对 $ f \in \mathcal{S} $，有 $ \widehat{\widehat{f}} = \widetilde{f} $。

(b) 可以证明，在傅里叶变换下 $ L_1 $ 在 $ C_0 $ 中没有闭像（见 [Rud83]）。因此 $ \mathcal{F} \in \mathcal{L}(L_1,C_0) $ 不是满射。■

##### 卷积与傅里叶变换

我们现在研究卷积在傅里叶变换下会变成什么。为此先引入另一个光滑函数空间；它在下一小节中将显得特别重要。

设 $ \varphi \in C^\infty $。若对每个 $ \alpha \in \mathbb{N}^n $，都存在常数 $ c_\alpha > 0 $ 与 $ k_\alpha \in \mathbb{N} $ 使得

\[ |\partial^\alpha\varphi(x)| \le c_\alpha(1+|x|^2)^{k_\alpha} \qquad \text{对 } x \in \mathbb{R}^n , \]

则称 $ \varphi $ 是**缓增的**。我们用 $ \mathcal{O}_M $ 表示具有该性质的全部函数之集，即**缓增函数空间**。

9.15 注 (a) 按向量子空间的意义，有包含关系 $ \mathcal{S} \subset \mathcal{O}_M \subset C^\infty $ 与 $ \mathbb{C}[X_1,\ldots,X_n] \subset \mathcal{O}_M $。

(b) $ (\mathcal{O}_M,+,\cdot) $ 是带单位元的交换代数。

(c) 设 $ (\varphi,f) \in \mathcal{O}_M \times \mathcal{S} $。则 $ \varphi f $ 属于 $ \mathcal{S} $，且对每个 $ m \in \mathbb{N} $，存在 $ c = c(\varphi,m) > 0 $ 与 $ k' = k'(\varphi,m) \in \mathbb{N} $ 使得对 $ k \in \mathbb{N} $ 有 $ q_{k,m}(\varphi f) \le c\, q_{k+k',m}(f) $。

证明 设 $ m \in \mathbb{N} $。则存在 $ c = c(\varphi,m) > 0 $ 与 $ k' = k'(\varphi,m) \in \mathbb{N} $ 使得

\[ |\partial^\alpha\varphi(x)| \le c(1+|x|^2)^{k'/2} \qquad \text{对 } x \in \mathbb{R}^n, \quad \alpha \in \mathbb{N}^n, \quad |\alpha| \le m . \]

由莱布尼茨法则可得

\[ \begin{aligned} q_{k,m}(\varphi f) &= \max_{|\alpha|\le m}\sup_{x\in\mathbb{R}^n}(1+|x|^2)^{k/2}\left|\sum_{\beta\le\alpha}\binom{\alpha}{\beta}\partial^\beta\varphi(x)\partial^{\alpha-\beta}f(x)\right| \\ &\le c\max_{|\alpha|\le m}\sup_{x\in\mathbb{R}^n}(1+|x|^2)^{(k+k')/2}|\partial^\alpha f(x)| = c\, q_{k+k',m}(f) \end{aligned} \]

对 $ f \in \mathcal{S} $ 与 $ k \in \mathbb{N} $ 成立。■

(d) 设 $ \varphi \in \mathcal{O}_M $。则 $ f \mapsto \varphi f $ 是 $ \mathcal{S} $ 到自身的线性连续映射。

证明 这由 (c) 与注 9.2(c) 推出。■

(e) 对每个 $ s \in \mathbb{R} $，$ \Lambda^s $ 属于 $ \mathcal{O}_M $。■

我们现在可以证明傅里叶变换的另一条重要性质。

9.16 定理（卷积定理）

(i) \[ (f*g)^{\wedge} = (2\pi)^{n/2}\widehat{f}\,\widehat{g} \qquad \text{对 } (f,g) \in \mathcal{L}_1\times\mathcal{L}_1 . \]

(ii) \[ \widehat{\varphi}*\widehat{f} = (2\pi)^{n/2}\widehat{\varphi f} \qquad \text{对 } (\varphi,f) \in \mathcal{S}\times\mathcal{L}_1 . \]

证明 (i) 由 (9.12) 与 (9.13) 可知，富比尼–托内利定理可以应用。于是由推论 7.9 得

\[ \begin{aligned} (f*g)^{\wedge}(\xi) &= (2\pi)^{-n/2}\int e^{-i\langle x,\xi\rangle}\int f(x-y)g(y)\,dy\,dx \\ &= (2\pi)^{-n/2}\int g(y)\int e^{-i\langle x,\xi\rangle}f(x-y)\,dx\,dy . \end{aligned} \]

因为

\[ \int e^{-i\langle x,\xi\rangle}f(x-y)\,dx = e^{-i\langle y,\xi\rangle}\int e^{-i\langle z,\xi\rangle}f(z)\,dz = e^{-i\langle y,\xi\rangle}(2\pi)^{n/2}\widehat{f}(\xi) , \]

我们便得到

\[ (f*g)^{\wedge}(\xi) = (2\pi)^{-n/2}\int(2\pi)^{n/2}\widehat{f}(\xi)e^{-i\langle y,\xi\rangle}g(y)\,dy = (2\pi)^{n/2}\widehat{f}(\xi)\widehat{g}(\xi) . \]

(ii) 设 $ (\varphi,f) \in \mathcal{S}\times\mathcal{L}_1 $。由定理 9.3，存在 $ \mathcal{S} $ 中的序列 $ (f_j) $，使得在 $ \mathcal{L}_1 $ 中 $ f_j \to f $。命题 9.4 与 9.7 蕴含 $ \widehat{\varphi}*\widehat{f_j} $ 属于 $ \mathcal{S} $。由注 9.15(c)，$ \varphi f_j $ 也属于 $ \mathcal{S} $，故由 (i) 与注 9.14(a) 得

\[ (\widehat{\varphi}*\widehat{f_j})^{\wedge} = (2\pi)^{n/2}\widehat{\widehat{\varphi}}\,\widehat{\widehat{f_j}} = (2\pi)^{n/2}(\varphi f_j)^{\sim} \qquad \text{对 } j \in \mathbb{N} . \]

由定理 9.12(ii)，我们便得到

\[ \widehat{\varphi}*\widehat{f_j} = (2\pi)^{n/2}\widehat{\varphi f_j} \qquad \text{对 } j \in \mathbb{N} . \tag{9.14} \]

因为 $ f_j \to f $ 在 $ L_1 $ 中成立，由注 9.1(a) 知 $ \widehat{f_j} \to \widehat{f} $ 在 $ BC $ 中成立。因此由推论 7.9，并利用 $ \widehat{\varphi} \in \mathcal{S} \subset L_1 $，可知序列 $ (\widehat{\varphi}*\widehat{f_j}) $ 在 $ BC $ 中收敛到 $ \widehat{\varphi}*\widehat{f} $。又因 $ \varphi f_j \to \varphi f $ 显然在 $ L_1 $ 中成立，由命题 9.9 推出序列 $ (\widehat{\varphi f_j}) $ 在 $ BC $ 中收敛到 $ \widehat{\varphi f} $。于是由注 9.1(a) 得到断言。■

作为卷积定理的一个应用，我们证明一条引理，它构成傅里叶变换的 $ L_2 $ 理论的基础。

9.17 引理 对 $ f \in \mathcal{L}_1\cap\mathcal{L}_2 $，$ \widehat{f} $ 属于 $ C_0\cap\mathcal{L}_2 $，且 $ \|f\|_2 = \|\widehat{f}\|_2 $。

证明 设 $ f \in \mathcal{L}_1\cap\mathcal{L}_2 $。由黎曼–勒贝格引理，$ \widehat{f} $ 属于 $ C_0 $，故只需验证 $ \|f\|_2 = \|\widehat{f}\|_2 $。于是令 $ g := f*\overline{\widetilde{f}} $。由定理 7.3(ii) 与习题 7.2 知 $ g $ 属于 $ \mathcal{L}_1\cap C_0 $，且

\[ g(0) = \int f(y)\overline{\widetilde{f}}(0-y)\,dy = \int f\overline{\widetilde{f}} = \|f\|_2^2 . \]

由推论 9.13(iii) 得

\[ \|f\|_2^2 = g(0) = \lim_{\varepsilon\to0}(2\pi)^{-n/2}\int\widehat{g}(\xi)e^{-\varepsilon^2|\xi|^2}\,d\xi . \tag{9.15} \]

现在我们注意

\[ \widehat{\overline{\widetilde{f}}} = (2\pi)^{-n/2}\int e^{-i\langle x,\xi\rangle}\overline{f}(-x)\,dx = (2\pi)^{-n/2}\overline{\int e^{-i\langle -x,\xi\rangle}f(-x)\,dx} = \overline{\widehat{f}} , \]

这由积分的欧氏不变性推出。然后定理 9.16(i) 表明

\[ \widehat{g} = (f*\overline{\widetilde{f}})^{\wedge} = (2\pi)^{n/2}\widehat{f}\,\widehat{\overline{\widetilde{f}}} = (2\pi)^{n/2}|\widehat{f}|^2 . \]

特别地，$ \widehat{g} $ 非负。因此 (9.15) 与单调收敛定理蕴含 $ \|f\|_2 = \|\widehat{f}\|_2 $。■

##### 傅里叶乘子算子

为了说明傅里叶变换的映射性质之意义，我们现在考虑常系数线性微分算子，并证明它们在“傅里叶域”中由乘子算子表示。

对 $ m \in \mathbb{N} $，我们用 $ \mathbb{C}_m[X_1,\ldots,X_n] $ 表示由次数 $ \le m $ 的全部多项式构成的向量子空间 $ \mathbb{C}[X_1,\ldots,X_n] $。对

\[ p = \sum_{|\alpha|\le m}a_\alpha X^\alpha \in \mathbb{C}_m[X_1,\ldots,X_n] , \]

我们令

\[ p(D) := \sum_{|\alpha|\le m}a_\alpha D^\alpha , \]

它是阶数 $ \le m $ 的常系数线性微分算子。这里 $ p $ 称为 $ p(D) $ 的**符号**。下面我们令

\[ \mathcal{D}\mathrm{iffop}^0 := \left\{ p(D) \,;\, p \in \mathbb{C}[X_1,\ldots,X_n] \right\} , \]

而 $ \mathcal{D}\mathrm{iffop}^0_m $ 是阶数不高于 $ m $ 的全部常系数线性微分算子构成的子集。

9.18 注 (a) $ p(D) \in \mathcal{D}\mathrm{iffop}^0 $ 是 $ \mathcal{S} $ 到自身的线性连续映射，即 $ p(D) \in \mathcal{L}(\mathcal{S}) $。

证明 这由注 9.2(c) 与 (h) 推出。■

(b) 映射

\[ \mathbb{C}[X_1,\ldots,X_n] \to \mathcal{L}(\mathcal{S}), \quad p \mapsto p(D) \tag{9.16} \]

是线性单射。
