证明 线性性是显然的。设 $ p = \sum_{|\alpha| \le m} a_\alpha X^\alpha \in \mathbb{C}[X_1,\ldots,X_n] $，且对一切 $ f \in \mathcal{S} $ 都有 $ p(D)f = 0 $。我们选取 $ \varphi \in \mathcal{D} $ 使得 $ \varphi | \mathbb{B}^n = 1 $。对 $ \beta \in \mathbb{N}^n $，由莱布尼茨法则可得

\[ D^\alpha(\varphi X^\beta) = \varphi D^\alpha X^\beta + \sum_{\gamma < \alpha} \binom{\alpha}{\gamma} D^{\alpha-\gamma}\varphi\, D^\gamma X^\beta . \]

由于当 $ |x| < 1 $ 时 $ \varphi(x) = 1 $，我们由此得到

\[ D^\alpha(\varphi X^\beta)(0) = D^\alpha X^\beta(0) = \begin{cases} \beta! & \text{若 } \alpha = \beta , \\ 0 & \text{其他情形} \end{cases} \]

对 $ \alpha \in \mathbb{N}^n $。因为 $ \varphi X^\beta \in \mathcal{D} \subset \mathcal{S} $，我们于是得到 $ 0 = p(D)(\varphi X^\beta) = \beta!\, a_\beta $，对 $ \beta \in \mathbb{N}^n $ 且 $ |\beta| \le m $；因此 $ p = 0 $。这就证明了所述的单射性。 ■

(c) $ p(D) $ 是形式自伴的当且仅当 $ p $ 有实系数。

证明 令

\[ \mathcal{A}(\partial) := p(D) = \sum_{|\alpha| \le m} a_\alpha (-i)^{|\alpha|} \partial^\alpha \]

则由命题 7.24 可得

\[ \mathcal{A}^{\sharp}(\partial) = \sum_{|\alpha| \le m} (-1)^{|\alpha|} \overline{a_\alpha (-i)^{|\alpha|}}\, \partial^\alpha = \sum_{|\alpha| \le m} (-i)^{|\alpha|} \overline{a_\alpha}\, \partial^\alpha , \]

这就完成了证明。 ■

由注 9.18(b)，我们可以把 $ \mathcal{D}\mathrm{iffop}^0 $ [或 $ \mathcal{D}\mathrm{iffop}^0_m $] 与 $ \mathbb{C}[X_1,\ldots,X_n] $ [或 $ \mathbb{C}_m[X_1,\ldots,X_n] $] 在映射 (9.16) 下的像等同起来。换言之，作为向量子空间，我们有

\[ \mathcal{D}\mathrm{iffop}^0_m \subset \mathcal{D}\mathrm{iffop}^0 \subset \mathcal{L}(\mathcal{S}) \quad \text{对 } m \in \mathbb{N} . \]

对 $ a \in \mathcal{O}_M $ 与 $ f \in \mathcal{S} $，由推论 9.13(i) 与注 9.15(d) 可得 $ (f \mapsto a\hat{f}) \in \mathcal{L}(\mathcal{S}) $。再由推论 9.13(i) 可得

\[ a(D) := \mathcal{F}^{-1}a\mathcal{F}: \mathcal{S} \to \mathcal{S} , \quad f \mapsto \mathcal{F}^{-1}(a\hat{f}) \]

是 $ \mathcal{L}(\mathcal{S}) $ 的一个定义良好的元素，即一个以 $ a $ 为**符号**的**傅里叶乘子算子**。我们置

\[ \mathrm{Op} := \{ a(D) \in \mathcal{L}(\mathcal{S}) ;\ a \in \mathcal{O}_M \} . \]

9.19 命题 $ \mathrm{Op} $ 是 $ \mathcal{L}(\mathcal{S}) $ 的一个带单位的交换代数，且映射

\[ ev: (\mathcal{O}_M, +, \cdot) \to \mathrm{Op} , \quad a \mapsto a(D) \]

是代数同构。

证明 显然 $ \mathcal{O}_M := (\mathcal{O}_M, +, \cdot) $ 是代数 $ \mathbb{C}^{(\mathbb{R}^n)} $ 的带单位的交换子代数。也容易验证 $ ev $ 把向量空间 $ \mathcal{O}_M $ 线性地映入 $ \mathcal{L}(\mathcal{S}) $。

对 $ a, b \in \mathcal{O}_M $ 与 $ f \in \mathcal{S} $，我们有

\[ (ab)(D)f = \mathcal{F}^{-1}(ab\hat{f}) = \mathcal{F}^{-1}(a\mathcal{F}\mathcal{F}^{-1}(b\hat{f})) = \mathcal{F}^{-1}(a\widehat{b(D)f}) = a(D) \circ b(D)f . \]

因此 $ ev $ 是满的代数同态。

最后设 $ a, b \in \mathcal{O}_M $ 且 $ a(D) = b(D) $。取 $ \xi \in \mathbb{R}^n $，并记 $ \varphi \in \mathcal{D} $ 为 $ \mathbb{B}^n(\xi,1) $ 的截断函数。则 $ f := \mathcal{F}^{-1}\varphi $ 属于 $ \mathcal{S} $，且 $ \hat{f}(\xi) = 1 $，并由推论 9.13(i) 可得

\[ a(\xi) = (a\hat{f})(\xi) = \mathcal{F}(a(D)f)(\xi) = \mathcal{F}(b(D)f)(\xi) = (b\hat{f})(\xi) = b(\xi) . \]

由于这对每个 $ \xi \in \mathbb{R}^n $ 都成立，我们有 $ a = b $。因此 $ ev $ 是单射。 ■

9.20 推论

(i) 对 $ a, b \in \mathcal{O}_M $，我们有 $ ab(D) = a(D)b(D) = b(D)a(D) $。

(ii) $ \mathbf{1}(D) = 1_{\mathcal{L}(\mathcal{S})} $。

(iii) $ \mathcal{D}\mathrm{iffop}^0 $ 是 $ \mathbb{C}[X_1,\ldots,X_n] $ 在 $ ev $ 下的像。特别地，$ \mathcal{D}\mathrm{iffop}^0 $ 是 $ \mathrm{Op} $ 的带单位的交换子代数。

证明 (i) 与 (ii) 是命题 9.19 的特殊情形。

(iii) 对 $ p \in \mathbb{C}[X_1,\ldots,X_n] \subset \mathcal{O}_M $ 且 $ p = \sum_{|\alpha| \le m} a_\alpha X^\alpha $，由命题 9.6(i) 得到

\[ \begin{aligned} ev(p)f &= \mathcal{F}^{-1}p\mathcal{F}f = \mathcal{F}^{-1}(p\hat{f}) = \sum_{|\alpha| \le m} a_\alpha \mathcal{F}^{-1}(X^\alpha \hat{f}) \\ &= \sum_{|\alpha| \le m} a_\alpha \mathcal{F}^{-1}(\widehat{D^\alpha f}) = \sum_{|\alpha| \le m} a_\alpha D^\alpha f \end{aligned} \]

对 $ f \in \mathcal{S} $。因此 $ ev(p) = \sum_{|\alpha| \le m} a_\alpha D^\alpha $，由此即得结论。 ■

这个推论表明，傅里叶变换可以用来求解常系数线性微分方程，办法是把它们化为简单的代数方程。这一事实是傅里叶变换的根本意义的一部分。下面的例子初步展示这些方法。

9.21 例 (a) 设多项式 $ p \in \mathbb{C}[X_1,\ldots,X_n] $ 没有实零点。则 $ p(D) \in \mathcal{L}(\mathcal{S}) $ 是 $ \mathcal{S} $ 的自同构，且 $ [p(D)]^{-1} = (1/p)(D) $。

证明 容易看出 $ 1/p $ 属于 $ \mathcal{O}_M $。现在由推论 9.20 推出

\[ 1_{\mathcal{L}(\mathcal{S})} = \mathbf{1}(D) = (p \cdot 1/p)(D) = p(D)(1/p)(D) = (1/p)(D)p(D) . \]

因为 $ a \in \mathcal{O}_M $ 时 $ a(D) \in \mathcal{L}(\mathcal{S}) $，这就证明了结论。 ■

(b) $ 1 - \Delta \in \mathcal{L}\mathrm{aut}(\mathcal{S}) $，且 $ (1 - \Delta)^{-1} = \Lambda^{-2}(D) $。

证明 因为 $ 1 - \Delta = \Lambda^2(D) $，这由 (a) 推出。 ■

例 9.21(b) 说明，偏微分方程

\[ -\Delta u + u = f \tag{9.17} \]

对每个 $ f \in \mathcal{S} $ 都有唯一解 $ u \in \mathcal{S} $，且 $ u $ 在 $ \mathcal{S} $ 的拓扑下连续依赖于 $ f $。此外，我们也可以先对该方程作“傅里叶变换”来得到 (9.17) 的解 $ u \in \mathcal{S} $。按命题 9.6，这给出方程 $ (|\xi|^2 + 1)\hat{u}(\xi) = \Lambda^2(\xi)\hat{u}(\xi) = \hat{f}(\xi) $，$ \xi \in \mathbb{R}^n $。然后可以解出 $ \hat{u} $，得 $ \hat{u} = \Lambda^{-2}\hat{f} $，再作“傅里叶逆变换”，得 $ u = \mathcal{F}^{-1}(\Lambda^{-2}\hat{f}) = \Lambda^{-2}(D)f $。这种“傅里叶变换方法”在偏微分方程理论中起着突出作用。注意 $ \Lambda^{-2}(D) $，或更一般地 $ (1/p)(D) $，不是微分算子。

##### 普朗歇尔定理

为结束本章，我们说明傅里叶变换也可以定义在 $ L_2 $ 上，并解释这一事实的几个推论。

设 $ H $ 是希尔伯特空间。若 $ T $ 是等距同构，则称 $ T: H \to H $ 是**酉的**。

9.22 注 设 $ H $ 是（实或复）希尔伯特空间，$ T: H \to H $ 是线性的。

(a) 若 $ T $ 是酉的，则 $ T $ 属于 $ \mathcal{L}\mathrm{aut}(H) $，且

\[ (Tx\,|\,Ty) = (x\,|\,y) \quad \text{对 } x, y \in H . \]

证明 第一个断言是显然的。因为 $ T $ 是等距，我们有

\[ 4\operatorname{Re}(Tx\,|\,Ty) = \|T(x+y)\|^2 - \|T(x-y)\|^2 = \|x+y\|^2 - \|x-y\|^2 = 4\operatorname{Re}(x\,|\,y) , \]

因此对 $ x, y \in H $ 有 $ \operatorname{Re}(Tx\,|\,Ty) = \operatorname{Re}(x\,|\,y) $。把此恒等式中的 $ y $ 换成 $ iy $，我们得到

\[ \operatorname{Im}(Tx\,|\,Ty) = \operatorname{Re}(Tx\,|\,Tiy) = \operatorname{Re}(x\,|\,iy) = \operatorname{Im}(x\,|\,y) , \]

于是对 $ x, y \in H $ 有 $ (Tx\,|\,Ty) = (x\,|\,y) $。 ■

(b) 若 $ H $ 是有限维的，则下列断言等价：

(i) $ T $ 是酉的。

(ii) 对 $ x, y \in H $ 有 $ (Tx\,|\,Ty) = (x\,|\,y) $。

(iii) $ T^*T = \operatorname{id}_H $。

证明 “(i) $ \Rightarrow $ (ii)” 是 (a) 的推论。

“(ii) $ \Rightarrow $ (iii)” 设 $ \{b_1,\ldots,b_m\} $ 是 $ H $ 的规范正交基。则每个 $ y \in H $ 都可展开为 $ y = \sum_{j=1}^{m} (y\,|\,b_j)b_j $（见习题 II.3.12 与定理 VI.7.14）。由习题 VII.1.5 与 (ii) 可得

\[ T^*Tx = \sum_{j=1}^{m} (T^*Tx\,|\,b_j)b_j = \sum_{j=1}^{m} (Tx\,|\,Tb_j)b_j = \sum_{j=1}^{m} (x\,|\,b_j)b_j = x \]

对每个 $ x \in H $。

“(iii) $ \Rightarrow $ (i)” 因为 $ T^*T = \operatorname{id}_H $，我们知道 $ T $ 是单射，因而由线性代数中的秩公式也是满射。对 $ x \in H $，我们还有

\[ \|Tx\|^2 = (Tx\,|\,Tx) = (T^*Tx\,|\,x) = (x\,|\,x) = \|x\|^2 . \]

因此 $ T $ 是等距。 ■

9.23 定理（普朗歇尔） 傅里叶变换从 $ L_1 \cap L_2 $ 延拓为 $ L_2 $ 上的酉算子，这样的延拓是唯一的。

证明 记 $ X_2 $ 为希尔伯特空间 $ L_2 $ 的向量子空间 $ L_1 \cap L_2 $。则由引理 9.17 可得 $ \mathcal{F} $ 属于 $ \mathcal{L}(X_2, L_2) $ 且是等距。因为 $ X_2 $ 包含空间 $ \mathcal{S} $，定理 9.3 与 VI.2.6 蕴涵存在唯一的等距延拓 $ \mathfrak{F} \in \mathcal{L}(L_2) $。作为等距，$ \mathfrak{F} $ 的像集是闭的，而由推论 9.13(i) 它包含空间 $ \mathcal{S} $。因此命题 V.4.4 蕴涵 $ \mathfrak{F} $ 是满射，从而是酉的。 ■

按照惯例，我们仍用符号 $ \mathcal{F} $ 表示 $ \mathfrak{F} $ 的唯一连续延拓，并同样称它为**傅里叶变换**。\footnote{在 $ L_2 $ 上，傅里叶变换有时也称为傅里叶–普朗歇尔变换，或普朗歇尔变换。}

下一个命题描述任意 $ f \in L_2 $ 的傅里叶变换 $ \mathcal{F}f $。

9.24 命题 对 $ f \in L_2 $，我们有

\[ \mathcal{F}f = \lim_{R \to \infty} \mathcal{F}(\chi_{R\mathbb{B}^n}f) = \lim_{R \to \infty} (2\pi)^{-n/2} \int_{[|x| \le R]} e^{-i\langle x,\cdot\rangle} f(x)\,dx \quad \text{于 } L_2 . \]

证明 对 $ R > 0 $，元素 $ f_R := \chi_{R\mathbb{B}^n}f $ 属于 $ L_1 \cap L_2 $，且控制收敛定理蕴涵

\[ \int |f - f_R|^2 dx = \int |f|^2 (1 - \chi_{R\mathbb{B}^n})^2 dx \to 0 \quad (R \to \infty) . \]

因此在 $ L_2 $ 中 $ \lim_{R \to \infty} f_R = f $。于是由普朗歇尔定理，$ \mathcal{F}f_R $ 在 $ L_2 $ 中收敛到 $ \mathcal{F}f $。因为

\[ \mathcal{F}(f_R)(\xi) = (2\pi)^{-n/2} \int_{[|x| \le R]} e^{-i\langle x,\xi\rangle} f(x)\,dx \quad \text{对 } \xi \in \mathbb{R}^n , \]

结论得证。 ■

9.25 例 设 $ n = 1 $ 且 $ a > 0 $。又设 $ f := \chi_{[-a,a]} \in \mathcal{L}_1(\mathbb{R}) $。则

\[ \hat{f}(\xi) = \frac{1}{\sqrt{2\pi}} \int_{-a}^{a} e^{-ix\xi} dx = \frac{-1}{\sqrt{2\pi}\, i\xi}\left(e^{-i\xi a} - e^{i\xi a}\right) = \sqrt{\frac{2}{\pi}}\, a\, \frac{\sin(a\xi)}{a\xi} \]

对 $ \xi \in \mathbb{R} $。由于 $ \int |f|^2 dx = 2a $，普朗歇尔定理给出

\[ \int_{-\infty}^{\infty} \left[\frac{\sin(ax)}{ax}\right]^2 dx = \frac{\pi}{a} \quad \text{对 } a > 0 . \]

注意 $ x \mapsto \sin(x)/x $ 不属于 $ \mathcal{L}_1(\mathbb{R}) $。 ■

##### 对称算子

设 $ E $ 是 $ \mathbb{K} $ 上的巴拿赫空间。所谓 $ E $ 中的**线性算子** $ A $，是指映射 $ A: \operatorname{dom}(A) \subset E \to E $，其中 $ \operatorname{dom}(A) $ 是 $ E $ 的向量子空间且 $ A $ 是线性的。对线性算子 $ A_j: \operatorname{dom}(A_j) \subset E \to E $ 与 $ \lambda \in \mathbb{K}^{\times} $，我们通过

\[ \operatorname{dom}(A_0 + \lambda A_1) := \operatorname{dom}(A_0) \cap \operatorname{dom}(A_1) , \quad (A_0 + \lambda A_1)x := A_0 x + \lambda A_1 x . \]

来定义 $ A_0 + \lambda A_1 $。

**乘积** $ A_0A_1 $ 由

\[ \operatorname{dom}(A_0A_1) := \{ x \in \operatorname{dom}(A_1) ;\ A_1x \in \operatorname{dom}(A_0) \} , \quad (A_0A_1)x := A_0(A_1x) . \]

定义。

最后，由

\[ \operatorname{dom}([A_0,A_1]) := \operatorname{dom}(A_0A_1 - A_1A_0) , \quad [A_0,A_1]x := (A_0A_1 - A_1A_0)x \]

定义的算子称为 $ A_0 $ 与 $ A_1 $ 的**交换子**。显然 $ A_0 + \lambda A_1 $、$ A_0A_1 $ 与 $ [A_0,A_1] $ 都是 $ E $ 中的线性算子，并且

\[ A_0 + \lambda A_1 = \lambda A_1 + A_0 , \quad \lambda A_0 = A_0(\lambda \operatorname{id}_E) , \quad [A_0,A_1] = -[A_1,A_0] . \]

设 $ H $ 是希尔伯特空间，$ A: \operatorname{dom}(A) \subset H \to H $ 是 $ H $ 上的线性算子。若

\[ (Au\,|\,v) = (u\,|\,Av) \quad \text{对 } u, v \in \operatorname{dom}(A) , \]

则称 $ A $ 是**对称的**。

9.26 注 (a) 设 $ H $ 是复希尔伯特空间，$ A $ 是 $ H $ 上的线性算子。则下列断言等价：

(i) $ A $ 是对称的。

(ii) 对 $ u \in \operatorname{dom}(A) $ 有 $ (Au\,|\,u) \in \mathbb{R} $。

证明 “(i) $ \Rightarrow $ (ii)” 因为 $ A $ 是对称的，可得

\[ (Au\,|\,u) = (u\,|\,Au) = \overline{(Au\,|\,u)} \quad \text{对 } u \in \operatorname{dom}(A) , \]

因此 $ \operatorname{Im}(Au\,|\,u) = 0 $。

“(ii) $ \Rightarrow $ (i)” 对 $ u, v \in \operatorname{dom}(A) $，我们有

\[ (A(u+v)\,|\,u+v) = (Au\,|\,u) + (Av\,|\,u) + (Au\,|\,v) + (Av\,|\,v) . \tag{9.18} \]

由 (ii) 可得 $ \operatorname{Im}(Au\,|\,v) = -\operatorname{Im}(Av\,|\,u) $，因此

\[ \operatorname{Im}(Au\,|\,v) = -\operatorname{Im}(Av\,|\,u) = -\operatorname{Im}\overline{(u\,|\,Av)} = \operatorname{Im}(u\,|\,Av) . \]

在 (9.18) 中把 $ u $ 换成 $ iu $，我们得到

\[ \operatorname{Re}(Au\,|\,v) = \operatorname{Im}(A(iu)\,|\,v) = \operatorname{Im}(iu\,|\,Av) = \operatorname{Re}(u\,|\,Av) . \]

因此 $ (Au\,|\,v) = (v\,|\,Au) $。 ■

(b) 设 $ p \in \mathbb{C}[X_1,\ldots,X_n] $，$ P $ 是 $ L_2 $ 上的线性算子，使得 $ \operatorname{dom}(P) = \mathcal{S} $ 且对 $ u \in \mathcal{S} $ 有 $ Pu := p(D)u $。则下列断言等价：

(i) $ P $ 是对称的。

(ii) $ p(D) $ 是形式自伴的。

(iii) $ p $ 有实系数。

证明 “(i) $ \Rightarrow $ (ii)” $ P $ 的对称性蕴涵

\[ (p(D)u\,|\,v) = (Pu\,|\,v) = (u\,|\,Pv) = (u\,|\,p(D)v) \quad \text{对 } u, v \in \mathcal{D} , \]

而这又由形式伴随算子的唯一性蕴涵 (ii)。

“(ii) $ \Rightarrow $ (iii)” 注 9.18(c)。

“(iii) $ \Rightarrow $ (i)” 设 $ p = \sum_{|\alpha| \le m} a_\alpha X^\alpha $。则推论 9.20(iii) 与普朗歇尔定理蕴涵

\[ (Pu\,|\,u) = (p(D)u\,|\,u) = (p\hat{u}\,|\,\hat{u}) = \sum_{|\alpha| \le m} a_\alpha \int \xi^\alpha |\hat{u}(\xi)|^2 d\xi \quad \text{对 } u \in \mathcal{S} . \]

因此 $ (Pu\,|\,u) $ 是实的，而结论由 (a) 推出。 ■

(c) 以 $ \mathcal{S} $ 为定义域时，拉普拉斯算子、波算子与薛定谔算子都是 $ L_2 $ 中的对称算子。

证明 这由 (b) 与例 7.25(a) 和 (e) 推出。 ■

##### 海森堡不确定性关系

作为普朗歇尔定理的又一应用，我们以讨论量子力学中位置算子与动量算子的若干重要性质来结束本节。于是固定 $ j \in \{1,\ldots,n\} $ 并置

\[ \operatorname{dom}(A_j) := \{ u \in L_2 ;\ X_j\hat{u} \in L_2 \} , \quad \operatorname{dom}(B_j) := \{ u \in L_2 ;\ X_j u \in L_2 \} . \]

然后，我们定义 $ L_2 $ 中的线性算子，即**动量算子** $ A_j $ 与**位置算子** $ B_j $（对第 $ j $ 个坐标），分别为

\[ A_j u := \mathcal{F}^{-1}(X_j\hat{u}) \quad \text{与} \quad B_j v := X_j v \quad \text{对 } u \in \operatorname{dom}(A_j) , \ v \in \operatorname{dom}(B_j) . \]

9.27 注 (a) 我们有 $ \mathcal{S} \subset \operatorname{dom}(A_j) $，且

\[ A_j u = X_j(D)u = D_j u = -i\partial_j u \quad \text{对 } u \in \mathcal{S} . \]

证明 这由命题 9.7 与推论 9.8 推出。 ■

(b) 我们有 $ \mathcal{F}(\operatorname{dom}(A_j)) = \operatorname{dom}(B_j) $ 以及一个交换图：

\[ \begin{array}{ccc} \operatorname{dom}(A_j) & \xrightarrow{\ A_j\ } & L_2 \\ \downarrow \mathcal{F} & & \downarrow \mathcal{F} \\ \operatorname{dom}(B_j) & \xrightarrow{\ B_j\ } & L_2 \end{array} \]

特别地，

\[ A_j u = \mathcal{F}^{-1}B_j\mathcal{F}u , \quad u \in \operatorname{dom}(A_j) \quad \text{与} \quad B_j u = \mathcal{F}A_j\mathcal{F}^{-1}u , \quad u \in \operatorname{dom}(B_j) . \]

证明 这些都是普朗歇尔定理的推论。 ■

(c) 量子力学中的位置算子与动量算子是对称的。

证明 设 $ u \in \operatorname{dom}(A_j) $。则 (b) 与普朗歇尔定理蕴涵

\[ (A_j u\,|\,u) = (\mathcal{F}^{-1}B_j\mathcal{F}u\,|\,u) = (B_j\hat{u}\,|\,\hat{u}) = \int \xi_j |\hat{u}(\xi)|^2 d\xi , \]

于是结论由注 9.26(a) 推出。 ■

(d) 对 $ u \in \operatorname{dom}([A_j,B_j]) $，我们有 $ ([A_j,B_j]u\,|\,u) = 2i\operatorname{Im}(A_jB_j u\,|\,u) $。

证明 由 (b)、(c) 与普朗歇尔定理，对 $ u \in \operatorname{dom}([A_j,B_j]) $ 得到

\[ \begin{aligned} ([A_j,B_j]u\,|\,u) &= (A_jB_j u - B_jA_j u\,|\,u) \\ &= (\mathcal{F}^{-1}B_j\mathcal{F}B_j u - B_j\mathcal{F}^{-1}B_j\mathcal{F}u\,|\,u) \\ &= (\mathcal{F}B_j u\,|\,B_j\mathcal{F}u) - (B_j\mathcal{F}u\,|\,\mathcal{F}B_j u) \\ &= 2i\operatorname{Im}(\mathcal{F}B_j u\,|\,B_j\mathcal{F}u) = 2i\operatorname{Im}(\mathcal{F}^{-1}B_j\mathcal{F}B_j u\,|\,u) \\ &= 2i\operatorname{Im}(A_jB_j u\,|\,u) . \qquad \blacksquare \end{aligned} \]

(e) 算子 $ i[A_j,B_j] $ 在 $ L_2 $ 中是对称的。

证明 这由 (d) 推出。 ■

(f) 我们有 $ \mathcal{S} \subset \operatorname{dom}([A_j,B_j]) $，且对 $ u \in \mathcal{S} $ 有 $ [A_j,B_j]u = -iu $。

证明 第一个断言容易由命题 9.7 与注 9.2(h) 推出。此外 (a) 表明

\[ [A_j,B_j]u = D_j(X_j u) - X_j D_j u = (D_j X_j)u = -iu \]

对 $ u \in \mathcal{S} $。 ■

(g)（$ \mathcal{S} $ 上的海森堡不确定性关系）对 $ j \in \{1,\ldots,n\} $，我们有

\[ \|u\|_2^2 \le 2\|\partial_j u\|_2 \|X_j u\|_2 \quad \text{对 } u \in \mathcal{S} . \]

证明 设 $ u \in \mathcal{S} $。由 (d) 与 (f) 有

\[ -i\|u\|_2^2 = -i(u\,|\,u) = ([A_j,B_j]u\,|\,u) = 2i\operatorname{Im}(A_jB_j u\,|\,u) . \]

柯西–施瓦茨不等式于是给出

\[ \|u\|_2^2 = 2\left|\operatorname{Im}(A_jB_j u\,|\,u)\right| \le 2\left|(A_jB_j u\,|\,u)\right| = 2\left|(B_j u\,|\,A_j u)\right| \le 2\|A_j u\|_2 \|B_j u\|_2 , \]

于是由 (a) 即得结论。 ■

我们以把 $ \mathcal{S} $ 上的海森堡不确定性关系的适用范围推广到 $ \operatorname{dom}(A_j) \cap \operatorname{dom}(B_j) $ 来结束本节。为此先需要一个引理。

9.28 引理 对每个 $ u \in \operatorname{dom}(A_j) \cap \operatorname{dom}(B_j) $，存在 $ \mathcal{S} $ 中的序列 $ (u_m) $ 使得

\[ \lim_{m \to \infty} (u_m, A_j u_m, B_j u_m) = (u, A_j u, B_j u) \quad \text{于 } L_2^3 . \]

证明 (i) 设 $ u \in \operatorname{dom}(A_j) \cap \operatorname{dom}(B_j) $，并设 $ \{k_\varepsilon ;\ \varepsilon > 0\} $ 是高斯逼近核。我们置 $ u^\varepsilon := k_\varepsilon * u $。由习题 8(iv)，$ u^\varepsilon $ 属于 $ \mathcal{S} $，且定理 7.11 表明在 $ L_2 $ 中 $ \lim_{\varepsilon \to 0} u^\varepsilon = u $。

(ii) 因为 $ \check{k} = k $，由例 9.10(c) 可得

\[ \widehat{k_\varepsilon}(\xi) := \widehat{\check{k}_\varepsilon}(\xi) = \mathcal{F}^{-1}k_\varepsilon(\xi) = \varphi(\varepsilon\xi) = (2\pi)^{-n/2} e^{-\varepsilon^2|\xi|^2} \quad \text{对 } \xi \in \mathbb{R}^n . \]

按定理 9.3，我们可以找到 $ \mathcal{S} $ 中的序列 $ (v_m) $ 使得在 $ L_2 $ 中 $ \lim_m v_m = u $。卷积定理于是表明

\[ \widehat{(k_\varepsilon * v_m)}(\xi) = (2\pi)^{n/2}\widehat{k_\varepsilon}(\xi)\widehat{v_m}(\xi) = e^{-\varepsilon^2|\xi|^2}\widehat{v_m}(\xi) \quad \text{对 } \xi \in \mathbb{R}^n . \]

令 $ m \to \infty $ 则给出 $ \widehat{u^\varepsilon} = e^{-\varepsilon^2|\cdot|^2}\widehat{u} $（见推论 7.9 与定理 9.23）。因为

\[ \|A_j u - A_j u^\varepsilon\|_2^2 = \|X_j\hat{u} - X_j\widehat{u^\varepsilon}\|_2^2 = \int |\xi_j\hat{u}(\xi)|^2\left(1 - e^{-\varepsilon^2|\xi|^2}\right)^2 d\xi , \]

由控制收敛定理可得在 $ L_2 $ 中 $ \lim_{\varepsilon \to 0} A_j u^\varepsilon = A_j u $。

(iii) 设 $ \ddot{u} $ 是 $ u $ 的一个代表。我们置

\[ d_\varepsilon(x,z) := x_j\left(\ddot{u}(x) - \ddot{u}(x - \varepsilon z)\right) , \quad g_\varepsilon(x,z) := d_\varepsilon(x,z)k(z) \]

对 $ \varepsilon > 0 $ 与 $ (x,z) \in \mathbb{R}^n \times \mathbb{R}^n $。则如 (7.7) 中那样（或由积分的闵可夫斯基不等式）可得

\[ \|X_j u - X_j u^\varepsilon\|_2 \le \left(\int\left[\int |g_\varepsilon(x,z)|\,dz\right]^2 dx\right)^{1/2} \le \int \|d_\varepsilon(\cdot,z)\|_2 k(z)\,dz , \tag{9.19} \]

其中对最后一个不等式我们用了 $ g_\varepsilon = (d_\varepsilon\sqrt{k})\sqrt{k} $ 与 $ \int k\,dx = 1 $ 以及柯西–施瓦茨不等式。进一步注意到

\[ d_\varepsilon(\cdot,z) = X_j\ddot{u} - \tau_{\varepsilon z}(X_j\ddot{u}) - \varepsilon z_j \tau_{\varepsilon z}\ddot{u} , \]

由平移群在 $ L_2 $ 上的强连续性与积分的平移不变性可得

\[ \lim_{\varepsilon \to 0} \|d_\varepsilon(\cdot,z)\|_2 k(z) = 0 \quad \text{对 } z \in \mathbb{R}^n , \]

以及

\[ \|d_\varepsilon(\cdot,z)\|_2 k(z) \le 2\max\{\|X_j u\|_2, \|u\|_2\}(1 + |z_j|)k(z) \quad \text{对 } \varepsilon \in (0,2] , \ z \in \mathbb{R}^n . \]

因为 $ z \mapsto (1 + |z_j|)k(z) $ 属于 $ \mathcal{L}_1 $，结论由 (9.19) 与控制收敛定理推出。 ■

9.29 推论（海森堡不确定性关系） 对 $ 1 \le j \le n $，我们有

\[ \|u\|_2^2 \le 2\|A_j u\|_2 \|B_j u\|_2 \quad \text{对 } u \in \operatorname{dom}(A_j) \cap \operatorname{dom}(B_j) . \]

证明 这由注 9.27(a) 和 (g) 以及引理 9.28 推出。 ■

由注 9.27(a) 与引理 9.28 容易推出（如同定理 7.27 的证明中那样），对 $ u \in \operatorname{dom}(A_j) $，分布意义下的导数 $ \partial_j u $ 属于 $ L_2 $，因此是一个弱 $ L_2 $-导数。又 $ A_j u = -i\partial_j u $。从而，对 $ u \in \operatorname{dom}(A_j) \cap \operatorname{dom}(B_j) $，我们也可以把海森堡不确定性关系写成

\[ \left(\frac{1}{2}\int |u|^2 dx\right)^2 \le \int |\partial_j u|^2 dx \int |X_j u|^2 dx \]

的形式，只要把 $ \partial_j u $ 理解为弱意义下的导数。对算子 $ A_j $ 与 $ B_j $ 的这种拓宽了的解释的重要性，在泛函分析所发展的希尔伯特空间上无界自伴算子理论中得到了阐明。由位置算子与动量算子构成的自伴算子，特别是薛定谔算子，被用于量子
