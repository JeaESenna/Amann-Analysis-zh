## 9 傅里叶变换

为结束本章，我们引入最重要的积分变换，即所谓的傅里叶变换\footnote{本节的内容在本书的其余部分不会被用到}。对其基本性质的研究可以说就是对勒贝格积分理论的一次回顾：我们处处都会遇到勒贝格空间的完备性、控制收敛定理以及富比尼–托内利定理这样的基石。

尤其引人注目的是傅里叶变换与卷积、以及与 $ L_2 $ 的希尔伯特空间结构之间的相互作用。前者我们借助傅里叶乘子算子来说明，后者则借助普朗歇尔定理以及量子力学中位置算子与动量算子的应用来说明。

本节中我们只考虑定义在整个 $ \mathbb{R}^n $ 上的复值函数空间。因此，像第 7 节那样，我们在记号中省略 $ (\mathbb{R}^n,\mathbb{C}) $，例如把 $ \mathcal{L}_1(\mathbb{R}^n,\mathbb{C}) $ 写作 $ \mathcal{L}_1 $。此外，$ \int f\,dx $ 总是指 $ \int_{\mathbb{R}^n} f\,dx $，并且我们把 $ \mathbb{R}^n $ 与其对偶空间典范地等同，使得 $ \langle\cdot,\cdot\rangle $ 与欧几里得内积在形式上一致。

##### 定义与基本性质

设 $ f \in \mathcal{L}_1 $。对每个 $ \xi \in \mathbb{R}^n $，映射 $ \mathbb{R}^n \to \mathbb{C} $，$ x \mapsto e^{-i\langle x,\xi\rangle}f(x) $ 都属于 $ \mathcal{L}_1 $。由

\[ \hat{f}(\xi) := (2\pi)^{-n/2}\int_{\mathbb{R}^n} e^{-i\langle x,\xi\rangle} f(x)\,dx \quad \text{for } \xi \in \mathbb{R}^n \tag{9.1} \]

定义的映射 $ \hat{f}: \mathbb{R}^n \to \mathbb{C} $ 称为 $ f $ 的**傅里叶变换**。映射 $ \mathcal{F} := (f \mapsto \hat{f}) $ 也称为傅里叶变换（或者在需要避免混淆时称为**傅里叶变换映射**）。

刚刚给出的定义中有不同的约定介入；人们常常看到不用 (9.1)，而把傅里叶变换定义为\footnote{见第 VIII.6 节}，

\[ \xi \mapsto \int e^{-i\langle x,\xi\rangle} f(x)\,dx \quad \text{或} \quad \xi \mapsto \int e^{-2\pi i\langle x,\xi\rangle} f(x)\,dx . \]

显然，这些规范化上的差异对基本理论无关紧要；不过它们确实会使 $ 2\pi $ 的幂出现在后面的一些表达式中。阅读文献时应当留意这一点。这里选用的规范化有这样的优点：此类因子只在少数几处出现，而且普朗歇尔定理取特别简单的形式。

9.1 注 (a) 对 $ f \in \mathcal{L}_1 $，令 $ \mathcal{F}f := \hat{f} := \mathcal{F}f^{*} $，其中 $ f^{*} $ 是 $ f $ 的任意代表元。则 $ \mathcal{F}f $ 是良定义的，且 $ \mathcal{F} \in \mathcal{L}(\mathcal{L}_1, BC) $。

证明 第一个断言是显然的。因为

\[ |\hat{f}(\xi)| \le (2\pi)^{-n/2}\|f\|_1 \quad \text{for } \xi \in \mathbb{R}^n , \]

第二个断言由定理 3.17（关于含参积分的连续性）与定理 VI.2.5 即易推出。■

(b) 对 $ f \in L_1 $，有 $ \widehat{\check{f}} = \check{\hat{f}} $。由

\[ \mathbb{R}^n \to \mathbb{C} , \quad \xi \mapsto \check{f}(\xi) = (2\pi)^{-n/2}\int e^{i\langle x,\xi\rangle} f(x)\,dx \]

定义的函数称为 $ f $ 的**逆傅里叶变换**，其原因很快就会清楚；而映射

\[ \overline{\mathcal{F}} := (f \mapsto \check{f}) \]

是**逆傅里叶变换（逆傅里叶变换映射）**。由于反演 $ (f \mapsto \check{f}) $ 是 $ \mathcal{L}_1 $、$ L_1 $ 与 $ BC $ 上的连续自同构，逆傅里叶变换与傅里叶变换具有相同的连续性。

证明 这由换元法则立即推出。■

(c) 对 $ \lambda > 0 $，我们用 $ \sigma_\lambda: \mathbb{R}^n \to \mathbb{R}^n $，$ x \mapsto \lambda x $ 表示按因子 $ \lambda $ 的**伸缩**。我们在 $ \operatorname{Funct} := \operatorname{Funct}(\mathbb{R}^n,\mathbb{C}) $ 上定义群 $ ((0,\infty),\cdot) $ 的一个作用

\[ ((0,\infty),\cdot) \times \operatorname{Funct} \to \operatorname{Funct} , \quad (\lambda,f) \mapsto \sigma_\lambda f , \tag{9.2} \]

其方式为令

\[ \sigma_\lambda f := f \circ \sigma_{1/\lambda} = (\sigma_{1/\lambda})^{*}f . \]

若 $ V $ 是 $ \operatorname{Funct} $ 的向量子空间且在该作用下不变（即对 $ \lambda > 0 $ 有 $ \sigma_\lambda(V) \subset V $），则映射

\[ \sigma_\lambda: V \to V , \quad v \mapsto \sigma_\lambda v \]

是线性的，并且对 $ \lambda,\mu > 0 $ 满足 $ \sigma_\lambda\sigma_\mu = \sigma_{\lambda\mu} $ 与 $ \sigma_1 = \operatorname{id}_V $。因此 $ \sigma_\lambda $ 是 $ V $ 的向量空间自同构，且对 $ \lambda > 0 $ 有 $ (\sigma_\lambda)^{-1} = \sigma_{1/\lambda} $。这表明

\[ ((0,\infty),\cdot) \to \operatorname{Aut}(V) , \quad \lambda \mapsto \sigma_\lambda \]

是乘法群 $ ((0,\infty),\cdot) $ 在 $ V $ 上的一个线性表示。特别地，$ \{\sigma_\lambda ; \lambda > 0\} $ 是 $ \operatorname{Aut}(V) $ 的子群，即 $ V $ 上的**伸缩群**。相应地，$ \sigma_\lambda v $ 就是 $ v $ 按因子 $ \lambda $ 的**伸缩**。与平移群的情形一样，若 $ V $ 在 (9.2) 下不变，我们就说 $ ((0,\infty),\cdot) $ 在 $ V $ 上**线性可表示**。

设 $ 1 \le p \le \infty $。则 $ ((0,\infty),\cdot) $ 在 $ L_p $ 上线性可表示，且

\[ \|\sigma_\lambda f\|_p = \lambda^{n/p}\|f\|_p . \]

证明 这由换元法则推出。■

(d) 对 $ \lambda > 0 $，$ \mathcal{F}\sigma_\lambda = \lambda^n\sigma_{1/\lambda}\mathcal{F} $。

证明 设 $ f \in \mathcal{L}_1 $ 且 $ \lambda > 0 $。则

\[ \mathcal{F}\sigma_\lambda f(\xi) = (2\pi)^{-n/2}\int e^{-i\langle x,\xi\rangle} f(x/\lambda)\,dx = \lambda^n(2\pi)^{-n/2}\int e^{-\langle x/\lambda,\lambda\xi\rangle} f(x/\lambda)\lambda^{-n}\,dx \]

对 $ \xi \in \mathbb{R}^n $。但换元法则表明最后一个表达式等于 $ \lambda^n\hat{f}(\lambda\xi) $。■

(e) 设 $ a \in \mathbb{R}^n $。则 $ (e^{i\langle a,\cdot\rangle}f)^{\wedge} = \tau_a\hat{f} $，$ f \in \mathcal{L}_1 $。■

##### 速降函数空间

现在我们引入 $ \mathcal{L}_1 $ 的一个向量子空间，在它上面傅里叶变换特别容易处理。随后利用稠密性论证，我们就能把结果推广到更大的函数空间。

若对每个 $ (k,m) \in \mathbb{N}^2 $ 都存在 $ c_{k,m} > 0 $ 使得

\[ (1+|x|^2)^k|\partial^{\alpha}f(x)| \le c_{k,m} \quad \text{for } x \in \mathbb{R}^n, \alpha \in \mathbb{N}^n, \text{ and } |\alpha| \le m , \]

则称 $ f \in C^{\infty} $ 是**速降的**。

换言之，$ f \in C^{\infty} $ 速降是指：当 $ |x| \to \infty $ 时，每个导数 $ \partial^{\alpha}f $ 都趋于零的速度快于 $ 1/|x| $ 的任何幂。

现在令

\[ q_{k,m}(f) := \max_{|\alpha| \le m}\sup_{x \in \mathbb{R}^n}(1+|x|^2)^{k/2}|\partial^{\alpha}f(x)| \quad \text{for } f \in C^{\infty} \text{ and } k,m \in \mathbb{N} . \]

空间

\[ \mathcal{S} := \{ f \in C^{\infty} ; q_{k,m}(f) < \infty \text{ for } k,m \in \mathbb{N} \} \]

称为**施瓦茨空间**或**速降函数空间**。

9.2 注 (a) $ \mathcal{S} $ 是 $ BUC^{\infty} $ 的向量子空间。每个 $ q_{k,m} $ 都是 $ \mathcal{S} $ 上的范数。

证明 设 $ m \in \mathbb{N} $。由于 $ q_{0,m} $ 是 $ BC^m $ 上的范数，$ \mathcal{S} $ 是 $ BC^m $ 的向量子空间。设 $ \alpha \in \mathbb{N}^n $ 且 $ |\alpha| \le m $。则由中值定理易得 $ \partial^{\alpha}f $ 一致连续。这证明了第一个断言。第二个断言是显然的。■

(b) 对 $ (f,g) \in \mathcal{S}\times\mathcal{S} $，令

\[ d(f,g) := \sum_{k,m=0}^{\infty} 2^{-(k+m)}\frac{q_{k,m}(f-g)}{1+q_{k,m}(f-g)} . \]

则 $ (\mathcal{S},d) $ 是度量空间。

证明 (i) 显然，对每个 $ f \in \mathcal{S} $，二重级数 $ \sum 2^{-(k+m)}q_{k,m}(f)/(1+q_{k,m}(f)) $ 收敛。因此 $ d: \mathcal{S}\times\mathcal{S} \to \mathbb{R}^+ $ 是良定义的。此外 $ d $ 是对称的，且在 $ \mathcal{S}\times\mathcal{S} $ 的对角线上恒为零。

(ii) 因为 $ t \mapsto t/(1+t) $ 在 $ \mathbb{R}^+ $ 上递增，故对 $ r,s,t \in \mathbb{R}^+ $ 且 $ r \le s+t $ 有

\[ \frac{r}{1+r} \le \frac{s+t}{1+s+t} = \frac{s}{1+s+t} + \frac{t}{1+s+t} \le \frac{s}{1+s} + \frac{t}{1+t} . \]

由此易得 $ d $ 满足三角不等式。■

(c) 对 $ f \in \mathcal{S} $ 及 $ \mathcal{S} $ 中的序列 $ (f_j) $，下列条件等价：

(i) 在 $ (\mathcal{S},d) $ 中 $ \lim f_j = f $；

(ii) 在 $ (\mathcal{S},d) $ 中 $ \lim(f-f_j) = 0 $；

(iii) 对 $ k,m \in \mathbb{N} $，$ \lim_j q_{k,m}(f-f_j) = 0 $。

于是，序列 $ (f_j) $ 在 $ \mathcal{S} $ 中收敛于 $ f $ 当且仅当 $ (f_j - f) $ 关于每个半范数 $ q_{k,m} $ 收敛于零。

证明 “(i)⇒(ii)” 这一蕴含是显然的。

“(ii)⇒(iii)” 取 $ \varepsilon \in (0,1] $ 及 $ k,m \in \mathbb{N} $。存在 $ N \in \mathbb{N} $ 使得不等式 $ d(f,f_j) < \varepsilon/2^{k+m+1} $ 对 $ j \ge N $ 成立。于是

\[ \frac{2^{-(k+m)}q_{k,m}(f-f_j)}{1+q_{k,m}(f-f_j)} < \frac{\varepsilon}{2^{k+m+1}} , \]

故当 $ j \ge N $ 时 $ q_{k,m}(f-f_j) < \varepsilon $。

“(iii)⇒(i)” 取 $ \varepsilon > 0 $。存在 $ N \in \mathbb{N} $ 使得

\[ \sum_{k+m=N+1}^{\infty}\frac{2^{-(k+m)}q_{k,m}(f-f_j)}{1+q_{k,m}(f-f_j)} \le \sum_{\ell=N+1}^{\infty} 2^{-\ell} < \frac{\varepsilon}{2} . \]

依假设，存在 $ M \in \mathbb{N} $ 使得对 $ j \ge M $ 及 $ k+m \le N $ 有 $ q_{k,m}(f-f_j) \le \varepsilon/4 $。因此

\[ d(f,f_j) \le \sum_{k,m=0}^{N}\frac{2^{-(k+m)}q_{k,m}(f-f_j)}{1+q_{k,m}(f-f_j)} + \frac{\varepsilon}{2} \le \varepsilon \quad \text{for } j \ge M . \]

(d) $ \mathcal{D} $ 是 $ \mathcal{S} $ 的稠密向量子空间。函数 $ \mathbb{R}^n \to \mathbb{R} $，$ x \mapsto e^{-|x|^2} $ 属于 $ \mathcal{S} $ 但不属于 $ \mathcal{D} $。

证明 显然 $ \mathcal{D} $ 是 $ \mathcal{S} $ 的向量子空间。设 $ f \in \mathcal{S} $。选取 $ \varphi \in \mathcal{D} $ 使 $ \varphi | \overline{\mathbb{B}}^n = 1 $，并令

\[ f_j(x) := f(x)\varphi(x/j) \quad \text{for } x \in \mathbb{R}^n , \quad j \in \mathbb{N}^{\times} . \]

则 $ f_j $ 属于 $ \mathcal{D} $，且

\[ f(x) - f_j(x) = f(x)(1-\varphi(x/j)) \quad \text{for } x \in \mathbb{R}^n . \]

因此对 $ x \in j\overline{\mathbb{B}}^n $ 及 $ \alpha \in \mathbb{N}^n $ 有 $ \partial^{\alpha}(f-f_j)(x) = 0 $。现在莱布尼茨法则表明存在 $ c = c(\varphi,m) > 0 $ 使得

\[ \begin{aligned} |\partial^{\alpha}(f-f_j)(x)| &= \left|\sum_{\beta \le \alpha}\binom{\alpha}{\beta}\partial^{\beta}f(x)\partial^{\alpha-\beta}(1-\varphi)(x/j)j^{-|\alpha-\beta|}\right| \le c\max_{\beta \le \alpha}|\partial^{\beta}f(x)| \\ &\le c\,q_{k+1,m}(f)(1+|x|^2)^{-(k+1)/2} \end{aligned} \]

对 $ x \in \mathbb{R}^n $，$ j \in \mathbb{N}^{\times} $，$ k \in \mathbb{N} $ 及 $ |\alpha| \le m $。令 $ C := c\,q_{k+1,m}(f) $，得

\[ \begin{aligned} q_{k,m}(f-f_j) &= \max_{|\alpha| \le m}\sup_{|x| \ge j}(1+|x|^2)^{k/2}|\partial^{\alpha}(f-f_j)(x)| \\ &\le c\,q_{k+1,m}(f)\sup_{|x| \ge j}(1+|x|^2)^{-1/2} \le C/j , \end{aligned} \]

且当 $ j \to \infty $ 时，第一个断言由 (c) 推出。第二个断言是显然的。■

(e) 对 $ m \in \mathbb{N} $，有 $ \mathcal{S} \hookrightarrow BUC^m $。

证明 这由 (a) 与 (c) 推出。■

(f) $ \mathcal{S} $ 是 $ C_0 $ 的稠密向量子空间。

证明 设 $ f \in \mathcal{S} $。由 (a) 以及 $ |f(x)| \le q_{1,0}(f)(1+|x|^2)^{-1/2} $（$ x \in \mathbb{R}^n $）可知 $ f $ 属于 $ C_0 $。因此 $ \mathcal{S} $ 是 $ C_0 $ 的向量子空间。定理 7.13 表明 $ \mathcal{D} $ 是 $ C_0 $ 的稠密向量子空间，于是由包含关系 $ \mathcal{D} \subset \mathcal{S} \subset C_0 $ 即得结论。■

(g) 对 $ k,m \in \mathbb{N} $，存在正常数 $ c $ 与 $ C $ 使得

\[ c\max_{|\alpha| \le m,\,|\beta| \le k}\sup_{x \in \mathbb{R}^n}|\partial^{\alpha}(x^{\beta}f(x))| \le q_{k,m}(f) \le C\max_{|\alpha| \le m,\,|\beta| \le k}\sup_{x \in \mathbb{R}^n}|x^{\beta}\partial^{\alpha}f(x)| \quad \text{for } f \in \mathcal{S} . \]

证明 这易由莱布尼茨法则推出。■

(h) 设 $ f \in \mathcal{S} $ 且 $ \alpha,\beta \in \mathbb{N}^n $。则 $ x \mapsto x^{\alpha}\partial^{\beta}f(x) $ 属于 $ \mathcal{S} $。

证明 这是 (g) 的推论。■

(i) 反演 $ f \mapsto \check{f} $ 是 $ \mathcal{S} $ 的连续自同构。

证明 这是显然的。■

9.3 定理 设 $ p \in [1,\infty) $。则 $ \mathcal{S} $ 是 $ L_p $ 的稠密向量子空间，且存在 $ c = c(n,p) > 0 $ 使得

\[ \|f\|_p \le c\,q_{n+1,0}(f) \quad \text{for } f \in \mathcal{S} . \tag{9.3} \]

证明 对 $ f \in \mathcal{S} $，有

\[ \begin{aligned} \int |f|^p\,dx &= \int |f(x)|^p(1+|x|^2)^{(n+1)p/2}(1+|x|^2)^{-(n+1)p/2}\,dx \\ &\le (q_{n+1,0}(f))^p\int (1+|x|^2)^{-(n+1)p/2}\,dx . \end{aligned} \tag{9.4} \]

进一步，由定理 8.11(i) 及 $ (n+1)p > n $，有

\[ \int_{[|x| \ge 1]}|x|^{-(n+1)p}\,dx = n\omega_n\int_1^{\infty} r^{-((n+1)p-n+1)}\,dr < \infty . \]

因此 $ \int(1+|x|^2)^{-(n+1)p/2}\,dx $ 也有限，且 (9.3) 由 (9.4) 推出。特别地，$ f $ 属于 $ L_p $，从而我们看到 $ \mathcal{S} $ 是 $ L_p $ 的向量子空间。由定理 7.13，$ \mathcal{D} $ 是 $ L_p $ 的稠密向量子空间，而由注 9.2(d)，它包含于 $ \mathcal{S} $。结论成立。■

##### 卷积代数 $ \mathcal{S} $

由注 9.2(a) 与定理 9.3，$ \mathcal{S}\times\mathcal{S} $ 包含于 $ BUC^{\infty}\times L_1 $。因此卷积在 $ \mathcal{S}\times\mathcal{S} $ 上有定义，且由推论 7.9 有

\[ *: \mathcal{S}\times\mathcal{S} \to BUC^{\infty} . \tag{9.5} \]

下一个结果表明，对 $ (f,g) \in \mathcal{S}\times\mathcal{S} $，$ f*g $ 实际上是速降的。

9.4 命题 卷积 $ \mathcal{S}\times\mathcal{S} $ 是映入 $ \mathcal{S} $ 的连续双线性映射。

证明 (i) 下面验证卷积 $ \mathcal{S}\times\mathcal{S} $ 映入 $ \mathcal{S} $。设 $ (f,g) \in \mathcal{S}\times\mathcal{S} $ 且 $ k,m \in \mathbb{N} $。由 (9.5)，只需检验 $ q_{k,m}(f*g) $ 有限。因为

\[ |x|^k \le (|x-y|+|y|)^k = \sum_{j=0}^{k}\binom{k}{j}|x-y|^j|y|^{k-j} \quad \text{for } x,y \in \mathbb{R}^n , \]

存在 $ c_k > 0 $ 使得

\[ \begin{aligned} |x|^k|f*g(x)| &\le \int\sum_{j=0}^{k}\binom{k}{j}|x-y|^j|f(x-y)||y|^{k-j}|g(y)|\,dy \\ &\le c_k q_{k,0}(f)\int(1+|y|^2)^{k/2}|g(y)|\,dy . \end{aligned} \]

注意到 $ \widetilde{c}_n := \int(1+|y|^2)^{-(n+1)/2}\,dy $ 有限，我们得到

\[ |x|^k|f*g(x)| \le c_k\widetilde{c}_n q_{k,0}(f)q_{k+n+1,0}(g) . \]

于是由注 9.2(g)，存在 $ c = c(k,n) \ge 1 $ 使得

\[ q_{k,0}(f*g) \le c\,q_{k,0}(f)q_{k+n+1,0}(g) . \tag{9.6} \]

最后，由定理 7.8(iv)，有

\[ q_{k,m}(f*g) = \max_{|\alpha| \le m}q_{k,0}(\partial^{\alpha}(f*g)) = \max_{|\alpha| \le m}q_{k,0}((\partial^{\alpha}f)*g) , \]

而 (9.6) 蕴含

\[ q_{k,m}(f*g) \le c\max_{|\alpha| \le m}q_{k,0}(\partial^{\alpha}f)q_{k+n+1,0}(g) = c\,q_{k,m}(f)q_{k+n+1,0}(g) . \tag{9.7} \]

(ii) 显然卷积是双线性的。设 $ (f,g) \in \mathcal{S}\times\mathcal{S} $，$ ((f_j,g_j))_{j \in \mathbb{N}} $ 是 $ \mathcal{S}\times\mathcal{S} $ 中的序列，使得当 $ j \to \infty $ 时 $ (f_j,g_j) \to (f,g) $ 于 $ \mathcal{S}\times\mathcal{S} $。

又令

\[ \alpha := c(q_{k,m}(f) + q_{k+n+1,0}(g) + 1) \]

其中 $ c $ 是 (9.7) 中的常数。设 $ \varepsilon \in (0,1] $。由注 9.2(c)，存在 $ N \in \mathbb{N} $ 使得

\[ q_{k,m}(f-f_j) < \varepsilon/\alpha , \quad q_{k+n+1,0}(g-g_j) < \varepsilon/\alpha \quad \text{for } j \ge N . \]

因为

\[ f*g - f_j*g_j = (f-f_j)*g + (f_j-f)*(g-g_j) + f*(g-g_j) , \]

由 (9.7) 推得

\[ \begin{aligned} q_{k,m}(f*g-f_j*g_j) &\le c\big(q_{k,m}(f-f_j)q_{k+n+1,0}(g) + q_{k,m}(f-f_j)q_{k+n+1,0}(g-g_j) \\ &\qquad + q_{k,m}(f)q_{k+n+1,0}(g-g_j)\big) < \varepsilon \end{aligned} \]

对 $ j \ge N $。于是证毕。■

9.5 推论 $ (\mathcal{S},+,*) $ 是可交换代数 $ (L_1,+,*) $ 的子代数。

证明 这由命题 9.4 与定理 9.3 推出。■

##### 傅里叶变换的计算

现在导出关于导数的傅里叶变换以及傅里叶变换的导数的一些法则。为使这些公式的表述简化，令 $ \Lambda(x) := (1+|x|^2)^{1/2} $（$ x \in \mathbb{R}^n $），并令

\[ D_j := -i\partial_j , \quad j \in \{1,\ldots,n\} \quad \text{for } D^{\alpha} := D_1^{\alpha_1}\cdots D_n^{\alpha_n} , \quad \alpha \in \mathbb{N}^n , \]

其中 $ i $ 是虚数单位。照例，由多项式 $ p \in \mathbb{C}[X_1,\ldots,X_n] $ 诱导的多项式函数也用 $ p $ 表示。

9.6 命题 设 $ f \in \mathcal{L}_1 $。

(i) 对 $ \alpha \in \mathbb{N}^n $，设 $ D^{\alpha}f $ 存在且属于 $ \mathcal{L}_1 $。则 $ X^{\alpha}\hat{f} = \widehat{D^{\alpha}f} $。

(ii) 对 $ m \in \mathbb{N} $，设 $ \Lambda^m f $ 属于 $ \mathcal{L}_1 $。则 $ \hat{f} $ 属于 $ BC^m $，且

\[ D^{\alpha}\hat{f} = (-1)^{|\alpha|}\widehat{X^{\alpha}f} \quad \text{for } \alpha \in \mathbb{N}^n , \quad |\alpha| \le m . \]

证明 (i) 设 $ \{\varphi_{\varepsilon} ; \varepsilon > 0\} $ 是光滑核。由分部积分（见习题 7.10）推得

\[ \begin{aligned} \int \xi^{\alpha}e^{-i\langle x,\xi\rangle}(f*\varphi_{\varepsilon})(x)\,dx &= (-1)^{|\alpha|}\int D_x^{\alpha}(e^{-i\langle x,\xi\rangle})(f*\varphi_{\varepsilon})(x)\,dx \\ &= \int e^{-i\langle x,\xi\rangle}((D^{\alpha}f)*\varphi_{\varepsilon})(x)\,dx . \end{aligned} \tag{9.8} \]
