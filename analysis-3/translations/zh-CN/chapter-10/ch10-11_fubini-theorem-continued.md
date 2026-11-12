（ii）若 $ \operatorname{pr}_{\mathbb{R}^m}(A) $ 可测\footnote{正如注 IX.5.14(b) 所示，情形一般并非如此。}且 $ f $ 可积，则
\[ \int_A f\,d(x,y) = \int_{\operatorname{pr}_{\mathbb{R}^m}(A)}\left[\int_{A_{[x]}} f(x,y)\,dy\right]dx . \]

证明 因为 $ \widetilde{f} $ 属于 $ \mathcal{L}_0(\mathbb{R}^{m+n}) $，第一个结论由托内利定理立即得到。再由定理 3.9，$ \widetilde{f} $ 可积，从而 $ f $ 也可积。结论至此显然。■

6.12 注 (a) 通过选取前 $ m $ 个坐标，我们没有损失一般性，因为由推论 6.10，这种次序总可以通过一个置换达到。

(b) 通常我们省略 $ \int_{\mathbb{R}^n}\left[\int_{\mathbb{R}^m} f(x,y)\,dx\right]dy $ 中的括号，而写成比如说
\[ \int_{\mathbb{R}^n}\int_{\mathbb{R}^m} f(x,y)\,dx\,dy . \tag{6.9} \]
在这种记法下，约定积分按从内到外的次序计算。\footnote{也就是说，积分 $ \int_{\mathbb{R}^m} f(x,y)\,dx $ 是对固定的 $ y $ 计算的，然后把结果在 $ \mathbb{R}^n $ 上对 $ y $ 积分。} **累次积分** (6.9) 要与 $ (m+n) $ 维积分
\[ \int_{\mathbb{R}^{m+n}} f\,d(x,y) = \int_{\mathbb{R}^{m+n}} f\,d\lambda_{m+n} . \]
区分开来。

(c) 存在 $ f \in \mathcal{L}_0(\mathbb{R}^2)\setminus\mathcal{L}_1(\mathbb{R}^2) $，使得
\[ \int_{\mathbb{R}}\int_{\mathbb{R}} f(x,y)\,dx\,dy = \int_{\mathbb{R}}\int_{\mathbb{R}} f(x,y)\,dy\,dx = 0 . \]
因此，累次积分的存在与相等并不蕴含 $ f $ 可积。

证明 定义 $ f : \mathbb{R}^2 \to \mathbb{R} $ 为
\[ f(x,y) := \begin{cases} \frac{xy}{(x^2+y^2)^2} & \text{若 } (x,y) \ne (0,0) , \\ 0 & \text{若 } (x,y) = (0,0) . \end{cases} \tag{6.10} \]

于是 $ f $ 是 $ \lambda_2 $-可测的。对每个 $ y \in \mathbb{R} $，广义黎曼积分 $ \int_{\mathbb{R}} f(x,y)\,dx $ 绝对收敛。又 $ f(\cdot,y) $ 为奇函数。故 $ \int_{\mathbb{R}} f(x,y)\,dx = 0 $ 对每个\footnote{情形 $ y = 0 $ 已包含在所给论证之中，尽管它可由 $ f(\cdot,0) = 0 $ 更简单地推出。} $ y \in \mathbb{R} $ 成立，因此，由于 $ f(x,y) = f(y,x) $，我们有
\[ \int_{\mathbb{R}}\int_{\mathbb{R}} f(x,y)\,dx\,dy = \int_{\mathbb{R}}\int_{\mathbb{R}} f(x,y)\,dy\,dx = 0 . \]

现在假设 $ f $ 可积。那么由富比尼定理，$ x \mapsto \int_{\mathbb{R}}|f(x,y)|\,dy $ 也将可积，而这由于
\[ \int_{\mathbb{R}} \frac{|xy|}{(x^2+y^2)^2}\,dy = \frac{1}{|x|} \quad \text{对 } x \ne 0 , \]
不可能成立。■

(d) 存在 $ g \in \mathcal{L}_0(\mathbb{R}^2)\setminus\mathcal{L}_1(\mathbb{R}^2) $，使得
\[ 0 < \left|\int_{\mathbb{R}}\int_{\mathbb{R}} g(x,y)\,dx\,dy\right| = \left|\int_{\mathbb{R}}\int_{\mathbb{R}} g(x,y)\,dy\,dx\right| < \infty . \]

证明 取 $ f $ 为 (6.10) 中的函数，并取 $ h \in \mathcal{L}_1(\mathbb{R}^2) $ 使 $ \int h\,d(x,y) > 0 $。则 $ g := f + h $ 具有所述性质。■

6.13 例 (a)（多维高斯积分）对 $ n \in \mathbb{N}^\times $，有
\[ \int_{\mathbb{R}^n} e^{-|x|^2} dx = \pi^{n/2} . \]

证明 利用 $ |x|^2 = x_1^2 + \cdots + x_n^2 $ 以及指数函数的性质，由托内利定理可得
\[ \int_{\mathbb{R}^n} e^{-|x|^2} dx = \int_{\mathbb{R}} \cdots \int_{\mathbb{R}} e^{-x_1^2} e^{-x_2^2} \cdot \cdots \cdot e^{-x_n^2} \, dx_1 \cdots dx_n = \prod_{j=1}^{n}\int_{\mathbb{R}} e^{-x_j^2} dx_j = \left(\int_{\mathbb{R}} e^{-t^2} dt\right)^n . \]

现在结论由应用 VI.9.7 得到。■

(b)（贝塔函数\footnote{比较注 VI.9.12(a)。}的一个表示）对 $ v,w \in [\operatorname{Re} z > 0] $，
\[ \mathrm{B}(v,w) = \frac{\Gamma(v)\Gamma(w)}{\Gamma(v+w)} . \]

证明 令 $ A := \{(s,t)\in\mathbb{R}^2 ; 0 < t < s\} $，并定义 $ \gamma_{v,w} : A \to \mathbb{C} $ 为 $ \gamma_{v,w}(s,t) := t^{v-1}(s-t)^{w-1}e^{-s} $，其中 $ v,w \in [\operatorname{Re} z > 0] $。再令 $ \gamma_v(t) := t^{v-1}e^{-t} $（$ t > 0 $），由托内利定理可得
\[ \int_A |\gamma_{v,w}(s,t)|\,d(s,t) = \int_0^\infty\int_t^\infty |\gamma_{v,w}(s,t)|\,ds\,dt = \left(\int_0^\infty \gamma_{\operatorname{Re} v}(t)\,dt\right)\left(\int_0^\infty \gamma_{\operatorname{Re} w}(s)\,ds\right) = \Gamma(\operatorname{Re} v)\Gamma(\operatorname{Re} w) < \infty . \]

因此 $ \gamma_{v,w} $ 可积，而富比尼定理类似地给出
\[ \int_A \gamma_{v,w}(s,t)\,d(s,t) = \int_0^\infty\int_t^\infty \gamma_{v,w}(s,t)\,ds\,dt = \Gamma(v)\Gamma(w) . \tag{6.11} \]

由于 $ \operatorname{pr}_1(A) = \mathbb{R}^+ $ 且 $ A_{[s]} = [0,s] $ 对 $ s > 0 $ 成立，由 (6.11) 与定理 6.11(ii) 我们得到
\[ \Gamma(v)\Gamma(w) = \int_0^\infty\left(\int_0^s t^{v-1}(s-t)^{w-1} dt\right) e^{-s} ds . \]

在内层积分中作代换 $ r = t/s $，并利用贝塔函数的定义，得到
\[ \Gamma(v)\Gamma(w) = \int_0^\infty\left(\int_0^1 r^{v-1}(1-r)^{w-1} dr\right) s^{v+w-1} e^{-s} ds = \mathrm{B}(v,w)\Gamma(v+w) , \tag{6.12} \]
这就完成了证明。■

例 (b) 表明，只要巧妙地选择积分次序，复杂的积分就可以被简化。

##### 向量值函数的富比尼定理

我们现在要说明富比尼定理对 $ E $ 值函数同样成立\footnote{本节初读时可以跳过。}，并给出一些应用。几条预备注记将会有用。

假设 $ A \in \mathcal{L}(m+n) $ 具有有限测度。由命题 6.2 与推论 6.3，存在一个 $ \lambda_m $-零集 $ M $，使得 $ A_{[x]} \in \mathcal{L}(n) $ 且 $ \lambda_n(A_{[x]}) < \infty $ 对 $ x \in M^c $ 成立。我们固定 $ q \in [1,\infty) $。因为 $ |\chi_{A_{[x]}}|^q = \chi_{A_{[x]}} $，我们有
\[ \int_{\mathbb{R}^n}|\chi_{A_{[x]}}(y)|^q dy = \int_{\mathbb{R}^n}\chi_{A_{[x]}}(y)\,dy = \lambda_n(A_{[x]}) < \infty . \]

若按 §4 中约定的那样，把 $ \chi_{A_{[x]}} $ 与所有在 $ \lambda_n $-几乎处处 意义下与 $ y \mapsto \chi_{A_{[x]}}(y) $ 相重合的函数构成的等价类等同起来，我们便得到映射
\[ M^c \to F := L_q(\mathbb{R}^n) , \quad x \mapsto \chi_{A_{[x]}} . \]

因为 $ F $ 是巴拿赫空间，我们可以研究它的可测性与可积性。

6.14 引理 假设 $ A \in \mathcal{L}(m+n) $ 具有有限测度。则在 $ \lambda_m $-几乎处处 意义下有定义的 $ F $ 值映射 $ x \mapsto \chi_{A_{[x]}} $ 是 $ \lambda_m $-可测的。

证明 我们把 $ x \mapsto \chi_{A_{[x]}} $ 的平凡延拓记为 $ \psi_A : \mathbb{R}^m \to F $。

（i）假设 $ A $ 是 $ \lambda_{m+n} $-零集。由注 6.1(h)，存在 $ \lambda_m $-零集 $ M $，使得对 $ x \in M^c $，$ A_{[x]} $ 是 $ \lambda_n $-零集。因此对 $ x \in M^c $，在 $ F $ 中 $ \psi_A(x) = 0 $。结论成立。

（ii）现在假设 $ A $ 是形如 $ [a,b) $ 的区间，其中 $ a,b \in \mathbb{R}^{m+n} $。令 $ J_1 := \prod_{j=1}^{m}[a_j,b_j) $、$ J_2 := \prod_{j=m+1}^{m+n}[a_j,b_j) $。因为 $ A = J_1 \times J_2 $，我们有
\[ \chi_{A_{[x]}} = \chi_{J_1}(x)\chi_{J_2} \quad \text{对 } x \in \mathbb{R}^m , \]
于是可见在这种情形下 $ \psi_A $ 属于 $ \mathcal{S}(\mathbb{R}^m,F) $。

（iii）假设 $ A \subset \mathbb{R}^{m+n} $ 是开集，且 $ (I_j) $ 是形如 $ [a,b) $ 的互不相交区间序列，满足 $ A = \bigcup_j I_j $（见命题 IX.5.6）。我们令
\[ f_k := \sum_{j=0}^{k}\psi_{I_j} \quad \text{对 } k \in \mathbb{N} . \]

由 (ii) 与注 1.2(a)，$ (f_k) $ 是 $ \mathcal{S}(\mathbb{R}^m,F) $ 中的一个序列。此外，存在一个勒贝格测度为零的集合 $ M $，使得
\[ \|\psi_A(x) - f_k(x)\|_F^q = \int_{\mathbb{R}^n}\left|\chi_{A_{[x]}}(y) - \left(\sum_{j=0}^{k}\chi_{(I_j)_{[x]}}(y)\right)\right|^q dy = \lambda_n\left(\bigcup_{j=k+1}^{\infty}(I_j)_{[x]}\right) = \sum_{j=k+1}^{\infty}\lambda_n((I_j)_{[x]}) \]
对 $ x \in M^c $ 成立。此外，由推论 6.3，$ A_{[x]} $ 具有有限测度，且 $ \lambda_n(A_{[x]}) = \sum_{j=0}^{\infty}\lambda_n((I_j)_{[x]}) $ 对 $ x \in M^c $ 成立。因此 $ (f_k) $ 在 $ F $ 中 $ \lambda_m $-几乎处处 收敛于 $ \psi_A $，于是可见 $ \psi_A $ 属于 $ \mathcal{L}_0(\mathbb{R}^m,F) $。

（iv）假设 $ A $ 是 $ G_\delta $ 集。推论 IX.5.5 的证明表明，存在开集序列 $ (O_j) $，使得 $ \lambda_{m+n}(O_j) < \infty $ 且 $ A = \bigcap O_j $。令
\[ f_k := \psi_{\bigcap_{j=0}^{k}O_j} , \quad R_k := \bigcap_{j=0}^{k}O_j\setminus A \quad \text{对 } k \in \mathbb{N} . \]

则 $ (f_k) $ 由 (iii) 是 $ \mathcal{L}_0(\mathbb{R}^m,F) $ 中的一个序列，而 $ (R_k) $ 是递减序列，满足 $ \bigcap_{k=0}^{\infty} R_k = \varnothing $ 且 $ \lambda_{m+n}(R_0) < \infty $。又我们有
\[ \|f_k(x) - \psi_A(x)\|_F^q = \int_{\mathbb{R}^n}\left|\chi_{(\bigcap_{j=0}^{k}O_j)_{[x]}}(y) - \chi_{A_{[x]}}(y)\right|^q dy = \lambda_n((R_k)_{[x]}) \]
对 $ \lambda_m $-几乎每个 $ x \in \mathbb{R}^m $ 成立。因此 $ \lambda_n $ 的从上连续性蕴含 $ (f_k) $ 在 $ \lambda_m $-几乎处处 意义下收敛于 $ \psi_A $。由定理 1.14 即得 $ \psi_A $ 属于 $ \mathcal{L}_0(\mathbb{R}^m,F) $。

（v）最后，考虑 $ A \in \mathcal{L}(m+n) $ 使 $ \lambda_{m+n}(A) $ 有限。由推论 IX.5.5，存在 $ G_\delta $ 集 $ G $ 包含 $ A $ 且与 $ A $ 具有相同的测度。由命题 IX.2.3(ii)，$ N := G\setminus A $ 是 $ \lambda_{m+n} $-零集，且 $ \psi_A = \psi_G - \psi_N $ 在 $ \lambda_m $-几乎处处 意义下成立。现在结论由 (i) 与 (iv) 得到。■

6.15 推论 设 $ p,q \in [1,\infty) $，并设 $ \varphi \in \mathcal{S}(\mathbb{R}^{m+n},E) $ 具有紧支集。则 $ L_q(\mathbb{R}^n,E) $ 值函数 $ x \mapsto [\varphi(x,\cdot)] $ 是 $ \lambda_m $-几乎处处 有定义的，且是 $ L_p $-可积的，即
\[ \int_{\mathbb{R}^m}\|\varphi(x,\cdot)\|_{L_q(\mathbb{R}^n,E)}^p dx < \infty . \]
若 $ p = q $，则对每个 $ \varphi \in \mathcal{S}(\mathbb{R}^{m+n},E) $ 此结论都成立。

证明 由闵可夫斯基不等式，只需对 $ \varphi := e\chi_A $ 证明本结论，其中 $ e \in E $、$ A \in \mathcal{L}(m+n) $，并且当 $ p = q $ 时 $ A $ 具有有限测度，当 $ p \ne q $ 时 $ A $ 有界。

由引理 6.14，存在 $ \lambda_m $-零集 $ M $，使得函数
\[ M^c \to L_q(\mathbb{R}^n) , \quad x \mapsto \chi_{A_{[x]}} \]
是 $ \lambda_m $-可测的。因为 $ \varphi(x,\cdot) = e\chi_{A_{[x]}} $，故 $ (x \mapsto \varphi(x,\cdot)) \in \mathcal{L}_0(M^c, L_q(\mathbb{R}^n,E)) $。由
\[ \|\varphi(x,\cdot)\|_{L_q(\mathbb{R}^n,E)} = \left(\int_{\mathbb{R}^n}|e|^q\chi_{A_{[x]}}(y)\,dy\right)^{1/q} = |e|\,[\lambda_n(A_{[x]})]^{1/q} \quad \text{对 } x \in M^c , \]
我们得到
\[ \int_{\mathbb{R}^m}\|\varphi(x,\cdot)\|_{L_q(\mathbb{R}^n,E)}^p dx = |e|^p\int_{\mathbb{R}^m}\lambda_n(A_{[x]})^{p/q} dx . \]
在 $ p = q $ 的情形，命题 6.2 蕴含
\[ \int_{\mathbb{R}^n}\lambda_n(A_{[x]})\,dx = \lambda_{m+n}(A) < \infty . \]

因此假设 $ p \ne q $。因为 $ \varphi $ 具有紧支集，存在紧子集 $ K \subset \mathbb{R}^m $ 与 $ L \subset \mathbb{R}^n $，使得 $ A \subset K \times L $。于是 $ A_{[x]} \subset L $，这蕴含 $ \lambda_n(A_{[x]}) \le \lambda_n(L) $ 对 $ \lambda_m $-几乎每个 $ x \in \mathbb{R}^m $ 成立。由此我们推出
\[ \int_{\mathbb{R}^m}\lambda_n(A_{[x]})^{p/q} dx = \int_K \lambda_n(A_{[x]})^{p/q} dx \le \lambda_n(L)^{p/q}\lambda_m(K) < \infty . \quad \blacksquare \]

这些准备工作比我们当前目的所需更为一般，但对进一步的应用会有用。我们现在准备证明 $ E $ 值情形的富比尼定理。

6.16 定理（富比尼）对 $ f \in \mathcal{L}_1(\mathbb{R}^{m+n},E) $，
（i）$ f(x,\cdot) \in \mathcal{L}_1(\mathbb{R}^n,E) $ 对 $ \lambda_m $-几乎所有 $ x \in \mathbb{R}^m $ 成立；$ f(\cdot,y) \in \mathcal{L}_1(\mathbb{R}^m,E) $ 对 $ \lambda_n $-几乎所有 $ y \in \mathbb{R}^n $ 成立；
（ii）$ x \mapsto \int_{\mathbb{R}^n} f(x,y)\,dy $ 是 $ \lambda_m $-可积的；$ y \mapsto \int_{\mathbb{R}^m} f(x,y)\,dx $ 是 $ \lambda_n $-可积的；
（iii）$ \int_{\mathbb{R}^{m+n}} f\,d(x,y) = \int_{\mathbb{R}^m}\left[\int_{\mathbb{R}^n} f(x,y)\,dy\right]dx = \int_{\mathbb{R}^n}\left[\int_{\mathbb{R}^m} f(x,y)\,dx\right]dy $。

证明 (a) 设 $ f \in \mathcal{L}_1(\mathbb{R}^{m+n},E) $。则存在 $ \mathcal{S}(\mathbb{R}^{m+n},E) $ 中的 $ L_1 $-柯西序列 $ (f_j) $ 与一个 $ \lambda_{m+n} $-零集 $ L $，使得 $ f_j(x,y) \to f(x,y) $ 对 $ (x,y) \in L^c $ 成立。由注 6.1(h)，存在测度为零的集合 $ M_1 $，使得
\[ f_j(x,\cdot) \to f(x,\cdot) \quad \lambda_n\text{-a.e.} , \tag{6.13} \]
对 $ x \in M_1^c $ 成立。我们令 $ F := L_1(\mathbb{R}^n,E) $，并把 $ x \mapsto f_j(x,\cdot) $ 的平凡延拓记为 $ \varphi_j $。根据推论 6.15，$ (\varphi_j) $ 是 $ \mathcal{L}_1(\mathbb{R}^m,F) $ 中的一个序列，满足
\[ \|\varphi_j - \varphi_k\|_1 = \int_{\mathbb{R}^m}\|\varphi_j(x) - \varphi_k(x)\|_F\,dx = \int_{\mathbb{R}^m}\int_{\mathbb{R}^n}|f_j(x,y) - f_k(x,y)|\,dy\,dx . \]

进一步，引理 6.4 表明
\[ \int_{\mathbb{R}^m}\int_{\mathbb{R}^n}|f_j(x,y) - f_k(x,y)|\,dy\,dx = \int_{\mathbb{R}^{m+n}}|f_j - f_k|\,d(x,y) = \|f_j - f_k\|_1 , \]
于是可见 $ (\varphi_j) $ 是 $ \mathcal{L}_1(\mathbb{R}^m,F) $ 中的柯西序列。由定理 2.10 与 2.18，存在 $ \widehat{g} \in \mathcal{L}_1(\mathbb{R}^m,F) $、$ \lambda_m $-零集 $ M_2 $ 以及 $ (\varphi_j) $ 的一个子序列（为简单起见，我们仍记为 $ (\varphi_j) $），使得
\[ \lim_{j\to\infty}\varphi_j(x) = \widehat{g}(x) \quad \text{对 } x \in M_2^c \tag{6.14} \]
在 $ F $ 中成立，且 $ \varphi_j \to \widehat{g} $ 在 $ \mathcal{L}_1(\mathbb{R}^m,F) $ 中成立。对 $ x \in M_2^c $，取 $ \widehat{g}(x) $ 的代表元 $ g(x) \in \mathcal{L}_1(\mathbb{R}^n,E) $。则存在勒贝格测度为零的集合 $ N(x) $ 以及 $ (\varphi_j(x)) $ 的一个子序列（我们也写作 $ (\varphi_j(x)) $），使得在 $ E $ 中
\[ \lim_{j\to\infty} f_j(x,y) = \lim_{j\to\infty}\varphi_j(x)(y) = g(x)(y) \quad \text{对 } x \in M_2^c \text{ 与 } y \in (N(x))^c . \]

因此 (6.13) 蕴含：对每个 $ x \in M_1^c \cap M_2^c $，映射 $ f(x,\cdot), g(x) : \mathbb{R}^n \to E $ 在 $ \lambda_n $-几乎处处 意义下相等。引理 2.15 现在表明 $ f(x,\cdot) $ 属于 $ \mathcal{L}_1(\mathbb{R}^n,E) $，且
\[ \int_{\mathbb{R}^n} g(x)(y)\,dy = \int_{\mathbb{R}^n} f(x,y)\,dy \quad \text{对 } x \in M_1^c \cap M_2^c . \tag{6.15} \]
此外，由 (6.13)、(6.14) 与定理 2.18(ii) 可得
\[ \int_{\mathbb{R}^n} f_j(x,y)\,dy = \int_{\mathbb{R}^n}\varphi_j(x)(y)\,dy \to \int_{\mathbb{R}^n} g(x)(y)\,dy = \int_{\mathbb{R}^n} f(x,y)\,dy \tag{6.16} \]
对 $ x \in M_1^c \cap M_2^c $ 成立。

(b) 对 $ \varphi \in F = L_1(\mathbb{R}^n,E) $，令 $ A\varphi := \int_{\mathbb{R}^n}\varphi\,dy $。由定理 2.11(i)，$ A $ 属于 $ \mathcal{L}(F,E) $。定理 2.11(iii) 蕴含 $ g_j := A\varphi_j $ 定义了 $ \mathcal{L}_1(\mathbb{R}^m,E) $ 中的一个序列。

因为
\[ g_j(x) = \int_{\mathbb{R}^n}\varphi_j(x)(y)\,dy = \int_{\mathbb{R}^n} f_j(x,y)\,dy , \tag{6.17} \]
由定理 2.11(i) 我们知道
\[ |g_j(x) - g_k(x)| = \left|\int_{\mathbb{R}^n}\left(f_j(x,y) - f_k(x,y)\right)dy\right| \le \int_{\mathbb{R}^n}|f_j(x,y) - f_k(x,y)|\,dy . \]

因此定理 2.11(ii) 给出
\[ \int_{\mathbb{R}^m}|g_j - g_k|\,dx \le \int_{\mathbb{R}^m}\int_{\mathbb{R}^n}|(f_j(x,y) - f_k(x,y))|\,dy\,dx = \|f_j - f_k\|_1 , \]
其中最后一个等式由托内利定理得到。因此 $ (g_j) $ 是 $ \mathcal{L}_1(\mathbb{R}^m,E) $ 中的柯西序列，由完备性存在 $ h \in \mathcal{L}_1(\mathbb{R}^m,E) $，使得 $ g_j \to h $ 在 $ \mathcal{L}_1(\mathbb{R}^m,E) $ 中成立。于是我们可以找到 $ \lambda_m $-零集 $ M_3 $ 以及 $ (g_j) $ 的一个子序列（我们也记为 $ (g_j) $），使得 $ g_j(x) \to h(x) $ 对 $ x \in M_3^c $ 且 $ j \to \infty $ 成立。鉴于 (6.17)，由 (6.16) 可得
\[ h(x) = \int_{\mathbb{R}^n} f(x,y)\,dy \quad \text{对 } x \in M_1^c \cap M_2^c \cap M_3^c , \tag{6.18} \]
这就证明了 (ii) 的第一个结论。

(c) 由于 $ g_j \to h $ 在 $ \mathcal{L}_1(\mathbb{R}^m,E) $ 中成立，并且由 (6.17) 与 (6.18)，定理 2.18(ii) 蕴含
\[ \int_{\mathbb{R}^m}\int_{\mathbb{R}^n} f_j(x,y)\,dy\,dx \to \int_{\mathbb{R}^m}\int_{\mathbb{R}^n} f(x,y)\,dy\,dx . \]

最后，由引理 6.4 可得
\[ \int_{\mathbb{R}^m}\int_{\mathbb{R}^n} f_j(x,y)\,dy\,dx = \int_{\mathbb{R}^{m+n}} f_j\,d(x,y) , \]
而由 $ \int_{\mathbb{R}^{m+n}} f\,d(x,y) = \lim_j \int_{\mathbb{R}^{m+n}} f_j\,d(x,y) $，我们有
\[ \int_{\mathbb{R}^m}\int_{\mathbb{R}^n} f(x,y)\,dy\,dx = \int_{\mathbb{R}^{m+n}} f\,d(x,y) . \]

我们已经证明了 (i) 与 (ii) 各自的第一部分，以及 (iii) 中的第一个等式。其余的结论通过交换 $ x $ 与 $ y $ 的角色得到。■

6.17 注 富比尼–托内利定理与推论 6.10 的类似结论显然在 $ E $ 值情形也成立。■

##### 积分的闵可夫斯基不等式

作为应用，我们现在证明闵可夫斯基不等式的一个连续版本。

固定 $ p,q \in [1,\infty) $。对 $ f \in \mathcal{L}_0(\mathbb{R}^{m+n},E) $，定理 1.7(i) 表明 $ |f|^q $ 属于 $ \mathcal{L}_0(\mathbb{R}^{m+n},\mathbb{R}^+) $。因此托内利定理蕴含：对 $ \lambda_m $-几乎所有 $ x \in \mathbb{R}^m $，$ |f(x,\cdot)|^q $ 落在 $ \mathcal{L}_0(\mathbb{R}^n,\mathbb{R}^+) $ 中，并且函数
\[ x \mapsto \int_{\mathbb{R}^n}|f(x,y)|^q dy \]
在 $ \lambda_m $-几乎处处 意义下有定义、取值于 $ \overline{\mathbb{R}}^+ $，且是 $ \lambda_m $-可测的。因此
\[ \|f\|_{(p,q)} := \left(\int_{\mathbb{R}^m}\left[\int_{\mathbb{R}^n}|f(x,y)|^q dy\right]^{p/q} dx\right)^{1/p} \]
在 $ \overline{\mathbb{R}}^+ $ 中有定义。我们容易验证
\[ \mathcal{L}_{(p,q)}(\mathbb{R}^{m+n},E) := \left\{ f \in \mathcal{L}_0(\mathbb{R}^{m+n},E) ; \|f\|_{(p,q)} < \infty \right\} \]
