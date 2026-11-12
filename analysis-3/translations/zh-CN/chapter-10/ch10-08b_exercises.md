4.20 注 (a) 可以证明，命题 4.19 中的映射 $ T $ 对每个 $ p \in [1,\infty) $ 都是满射；也就是说，$ L_p(X) $ 上每个连续线性泛函都可表示为适当选取的 $ f \in L_{p'}(X) $ 的 $ T_f $ 的形式，例如参见 [Rud83, Theorem 6.1.6]。从而对每个 $ p \in [1,\infty) $，$ T: L_{p'}(X) \to L'_p(X) $ 是等距同构。这个同构允许我们对 $ p \in [1,\infty) $ 把 $ L_{p'}(X) $ 与 $ L'_p(X) $ 等同起来。对偶配对 $ \langle\cdot,\cdot\rangle_{L_p}: L'_p(X) \times L_p(X) \to \mathbb{K} $ 满足

\[ \langle g,f\rangle_{L_p} = \int_X f g \, d\mu \quad \text{对 } (g,f) \in L_{p'}(X) \times L_p(X) . \]

(b) 当 $ p = \infty $ 时，映射 $ T: L_1(X) \to L'_\infty(X) $ 一般不是满射；参见 [Fol99, S. 191]。

(c) 记 $ \langle\cdot,\cdot\rangle_E: E' \times E \to \mathbb{K} $ 为 $ E $ 与 $ E' $ 之间的对偶配对。则映射

\[ \kappa: E \to [E']', \quad e \mapsto \langle\cdot,e\rangle_E \]

是线性且有界的，其范数不超过 1。

证明 显然 $ \kappa $ 是线性的。设 $ e \in E $ 满足 $ \|e\|_E \le 1 $。则

\[ |\langle\kappa(e),e'\rangle_{E'}| = |\langle e',e\rangle_E| \le \|e'\|_{E'} \quad \text{对 } e' \in E' , \]

并且得到 $ \|\kappa(e)\|_{(E')'} \le 1 $，由此即得结论。■

(d) 借助泛函分析中的工具可以证明，$ \kappa $ 是等距，从而是单射。我们称 $ \kappa $ 为 $ E $ 到 $ E $ 的**双对偶空间** $ E'' := (E')' $ 中的**典范单射**。若 $ \kappa $ 同时也是满射，从而是等距同构，则称 $ E $ 是**自反的**。此时，典范同构 $ \kappa $ 允许我们把 $ E $ 与其双对偶 $ E'' $ 等同起来。

(e) 对 $ p \in (1,\infty) $，$ L_p(X) $ 自反。

证明 这由 (a) 推出。■

(f) 空间 $ L_1(X) $ 与 $ L_\infty(X) $ 一般不是自反的；例如参见 [Ada75, Theorem 2.35]。■

##### 习题

1 设 $ S(X,\mu,E) := \{ [f] \in L_0(X,\mu,E) ; [f] \cap \mathcal{S}(X,\mu,E) \ne \varnothing \} $。证明 $ S(X,\mu,E) $ 是 $ L_p(X,\mu,E) $ 的稠密向量子空间（$ 1 \le p < \infty $）。

2 对 $ a \in \mathbb{R}^n $，我们定义 $ \tau_a: E^{(\mathbb{R}^n)} \to E^{(\mathbb{R}^n)} $，即沿 $ a $ 的**右平移**，如下：

\[ (\tau_a\varphi)(x) := \varphi(x-a) \quad \text{对 } x \in \mathbb{R}^n, \ \varphi \in E^{(\mathbb{R}^n)} . \]

令 $ \tau_a[f] := [\tau_a f] $，$ [f] \in L_p $。证明：

(i) $ (\mathbb{R}^n,+) \to (\mathcal{L}\mathrm{aut}(L_p(\mathbb{R}^n,\lambda_n,E)),\circ) $，$ a \mapsto \tau_a $ 是群同态，且对每个 $ p \in [1,\infty] $ 都有 $ \|\tau_a\|_{\mathcal{L}(L_p)} = 1 $。

(ii) 对 $ p \in [1,\infty) $ 与 $ f \in L_p(\mathbb{R}^n,\lambda_n,E) $，有 $ \lim_{a\to0}\|\tau_a f - f\|_p = 0 $。

(iii) 若 $ \lim_{a\to0}\|\tau_a f - f\|_\infty = 0 $，则存在 $ g \in BUC(\mathbb{R}^n,E) $ 使得 $ f = g $ $ \mu $-几乎处处。

3 设 $ \mu $ 是 $ \sigma $ 紧空间 $ X $ 上的完备拉东测度，$ (X_j)_{j\in\mathbb{N}} $ 是 $ X $ 的一列覆盖 $ X $ 的相对紧开子集。对 $ p \in [1,\infty] $，置

\[ q_{j,p}(f) := \|\chi_{X_j} f\|_p \quad \text{对 } j \in \mathbb{N}, \ f \in L_0(X,\mu,E) , \]

\[ L_{p,\mathrm{loc}}(X,\mu,E) := \{ f \in L_0(X,\mu,E) ; q_{j,p}(f) < \infty, \ j \in \mathbb{N} \} . \]

最后，定义

\[ d_p(f,g) := \sum_{j=0}^{\infty} \frac{2^{-j} q_{j,p}(f-g)}{1 + q_{j,p}(f-g)} \quad \text{对 } f,g \in L_{p,\mathrm{loc}}(X,\mu,E) . \]

(i) $ L_{p,\mathrm{loc}}(X,\mu,E) $ 是良定义的，即与具体的序列 $ (X_j) $ 无关。

(ii) $ (L_{p,\mathrm{loc}}(X,\mu,E),d_p) $ 是完备度量空间。

(iii) $ L_p(X,\mu,E) \xrightarrow{d} L_{p,\mathrm{loc}}(X,\mu,E) \xrightarrow{d} L_{1,\mathrm{loc}}(X,\mu,E) $。

(iv) 由 $ d_p $ 生成的拓扑与序列 $ (X_j) $ 无关。

4 设 $ p,q \in [1,\infty] $，定义

\[ L_p \cap L_q := (L_p \cap L_q)(X,\mu,E) := L_p(X,\mu,E) \cap L_q(X,\mu,E) , \]

\[ L_p + L_q := (L_p + L_q)(X,\mu,E) := L_p(X,\mu,E) + L_q(X,\mu,E) . \]

又对 $ f \in L_p \cap L_q $ 置 $ \|f\|_{L_p\cap L_q} := \|f\|_p + \|f\|_q $，并令

\[ \|f\|_{L_p+L_q} := \inf\{ \|g\|_p + \|h\|_q ; g \in L_p(X,\mu,E), \ h \in L_q(X,\mu,E), \ f = g+h \} \quad \text{对 } f \in L_p + L_q . \]

(i) 验证**插值不等式**

\[ \|f\|_r \le \|f\|_p^{1-\theta}\|f\|_q^{\theta} , \qquad \text{其中 } \frac{1}{r} := \frac{1-\theta}{p} + \frac{\theta}{q} , \]

对 $ f \in L_p \cap L_q $ 与 $ \theta \in [0,1] $ 成立。

(ii) $ (L_p\cap L_q, \|\cdot\|_{L_p\cap L_q}) $ 与 $ (L_p+L_q, \|\cdot\|_{L_p+L_q}) $ 是巴拿赫空间，且

\[ (L_p\cap L_q)(X,\mu,E) \hookrightarrow L_r(X,\mu,E) \hookrightarrow (L_p+L_q)(X,\mu,E) \hookrightarrow L_{1,\mathrm{loc}}(X,\mu,E) \]

其中 $ 1 \le p \le r \le q \le \infty $。

（提示：(i) 赫尔德不等式。(ii) 取 $ f \in L_p+L_q $ 使 $ \|f\|_{L_p+L_q} = 0 $。为证明它为零，注意对 $ r \in [1,\infty] $ 有 $ L_r \hookrightarrow L_{1,\mathrm{loc}} $（见习题 3）。为证明 $ L_p+L_q $ 的完备性，应用引理 4.5。嵌入 $ L_p\cap L_q \hookrightarrow L_r $ 由 (a) 推出。）

5 设 $ p \in [1,\infty) $ 且 $ f \in (L_p \cap L_\infty)(X,\mu,E) $。证明 $ \lim_{q\to\infty}\|f\|_q = \|f\|_\infty $。

6 证明映射

\[ L_\infty(X,\mu,\mathbb{K}) \times L_p(X,\mu,E) \to L_p(X,\mu,E) , \quad ([\varphi],[f]) \mapsto [\varphi f] \]

是双线性且连续的，其范数不超过 1。

7 设 $ \mu(X) < \infty $，并对 $ f,g \in L_0(X,\mu,E) $ 置

\[ d_0(f,g) := \int_X \frac{|f-g|}{1+|f-g|} \, d\mu . \]

(i) $ (L_0(X,\mu,E),d_0) $ 是度量空间。

(ii) $ (f_j) $ 在 $ (L_0(X,\mu,E),d_0) $ 中收敛到 0，当且仅当它依测度收敛到 0。

8 设 $ \mu $ 是 $ \sigma $ 紧空间 $ X $ 上的拉东测度，且 $ E $ 可分。证明：

(i) $ C_c(X,\mathbb{K}) $ 可分。

(ii) $ C_c(X,E) $ 可分。

(iii) 对 $ p \in [1,\infty) $，$ L_p(X,\mu,E) $ 可分。

(iv) $ L_\infty(X,\mu,E) $ 一般不可分。

(v) $ \mathcal{S}(X,\mu,E) $ 在 $ \mathcal{L}_\infty(X,\mu,E) $ 中一般不是稠密的。

（提示：(i) 推论 V.4.8 与注 1.16(e)。(ii) 取 $ A \subset C_c(X,\mathbb{K}) $，令 $ B $ 为 $ E $ 中的可数稠密集。对 $ a \in A $ 与 $ b \in B $，置 $ (a\otimes b)(x) := a(x)b $，$ x \in X $，并考虑

\[ \left\{ \sum_{j=0}^{m} a_j \otimes b_j ; m \in \mathbb{N}, \ (a_j,b_j) \in A \times B, \ j = 0,\dots,m \right\} . \]

(iii) 定理 4.14。(iv) 找出 $ L_\infty $ 的不可数子集 $ A $，使得对 $ A $ 中所有互不相同的 $ f,g $ 都有 $ \|f-g\|_\infty \ge 1 $。）

9 若 $ \mu $ 有限且 $ E $ 有限维，证明 $ \mathcal{S}(X,\mu,E) $ 在 $ \mathcal{L}_\infty(X,\mu,E) $ 中稠密。

10 证明注 4.9(c) 的陈述。

11 证明：

(i) $ \ell_p = \mathcal{L}_p(\mathbb{N},\mathcal{H}^0,\mathbb{K}) $，$ 1 \le p \le \infty $。

(ii) 若 $ 1 \le p \le q \le \infty $，则 $ \ell_p \hookrightarrow \ell_q $，且 $ \|\cdot\|_q \le \|\cdot\|_p $。

(iii) 若 $ 1 \le p \le q < \infty $，则 $ \ell_p \xrightarrow{d} \ell_q \xrightarrow{d} c_0 \hookrightarrow \ell_\infty $（见第 II.2 节）。

12 设 $ p,q \in [1,\infty] $ 且 $ 1 \le p \le q \le \infty $。证明：

(i) $ L_\infty(X,\mu,E) \subset L_1(X,\mu,E) \Rightarrow L_q(X,\mu,E) \hookrightarrow L_p(X,\mu,E) $。

(ii) $ L_1(X,\mu,E) \subset L_\infty(X,\mu,E) \Rightarrow L_p(X,\mu,E) \hookrightarrow L_q(X,\mu,E) $。

(iii) 存在完备的 $ \sigma $ 有限测度空间 $ (X,\mathcal{A},\mu) $ [或 $ (Y,\mathcal{B},\nu) $]，它实现嵌入 $ L_\infty(X,\mu,\mathbb{R}) \hookrightarrow L_1(X,\mu,\mathbb{R}) $ [或 $ L_1(Y,\nu,\mathbb{R}) \hookrightarrow L_\infty(Y,\nu,\mathbb{R}) $]。

（提示：(i) 赫尔德不等式。(ii) 证明 $ L_p \hookrightarrow L_\infty $，并应用习题 4(i)。）

13 对 $ p \in (0,1) $，证明：

(i) $ \|f+g\|_p^p \le \|f\|_p^p + \|g\|_p^p $，$ f,g \in \mathcal{L}_0(X,\mu,E) $。

(ii) $ \|f+g\|_p \le 2^{1/p-1}(\|f\|_p + \|g\|_p) $，$ f,g \in \mathcal{L}_0(X,\mu,E) $。

(iii) $ \mathcal{L}_p(X,\mu,E) $ 是 $ \mathcal{L}_0(X,\mu,E) $ 的向量子空间。

(iv) $ \mathcal{N} := \{ f \in \mathcal{L}_0(X,\mu,E) ; f = 0 \ \mu\text{-几乎处处} \} $ 是 $ \mathcal{L}_p(X,\mu,E) $ 的向量子空间，且

\[ \mathcal{N} = \{ f \in \mathcal{L}_p(X,\mu,E) ; \|f\|_p = 0 \} . \]

(v) 置 $ \rho(f,g) := \|f-g\|_p^p $，它在

\[ L_p(X,\mu,E) := \mathcal{L}_p(X,\mu,E)/\mathcal{N} \]

上诱导出一个度量。

(vi) $ (L_p(X,\mu,E),\rho) $ 是完备的。

(vii) 对 $ f,g \in \mathcal{L}_p(X,\mu,\mathbb{R}) $，若 $ f \ge 0 $ 且 $ g \ge 0 $，则 $ \|f+g\|_p \ge \|f\|_p + \|g\|_p $。

(viii) 映射

\[ L_p(X,\mu,\mathbb{R}) \to \mathbb{R}^+ , \quad [f] \mapsto \|f\|_p \]

不是范数。

（提示：(i) 对 $ a > 0 $，映射 $ [t \mapsto a^p + t^p - (a+t)^p] $ 在 $ \mathbb{R}^+ $ 上递增。(ii) 对 $ a > 0 $，考察 $ [t \mapsto (a^{1/p} + t^{1/p})/(a+t)^{1/p}] $。(vi) 仿照引理 4.5 与定理 4.6 的证明。(vii) 定理 4.2。）

14 设 $ p_j \in [1,\infty] $，$ j = 1,\dots,m $；令 $ 1/r := \sum_{j=1}^{m} 1/p_j $。对 $ f_j \in L_{p_j}(X,\mu,\mathbb{K}) $，证明 $ \prod_{j=1}^{m} f_j $ 属于 $ L_r(X,\mu,\mathbb{K}) $，且

\[ \left\| \prod_{j=1}^{m} f_j \right\|_r \le \prod_{j=1}^{m} \|f_j\|_{p_j} . \]

（提示：赫尔德不等式。）

15 设 $ X $ 是度量空间。函数 $ f \in E^X $ **在无穷远处消失**，是指对每个 $ \varepsilon > 0 $ 都存在 $ X $ 的紧子集 $ K $，使得对一切 $ x \in K^c $ 都有 $ |f(x)| < \varepsilon $。验证

\[ C_0(X,E) := \{ f \in C(X,E) ; f \text{ 在无穷远处消失} \} \]

是 $ C_c(X,E) $ 在 $ BUC(X,E) $ 中的闭包。

16 对 $ f \in \mathcal{L}_0(X,\mu,E) $，置

\[ \lambda_f(t) := \mu([|f| > t]) \quad \text{与} \quad f^*(t) := \inf\{ s \ge 0 ; \lambda_f(s) \le t \} \quad \text{对 } t \in [0,\infty) . \]

我们称 $ f^*: [0,\infty) \to [0,\infty] $ 为 $ f $ 的**递减重排**。证明：

(i) $ \lambda_f $ 与 $ f^* $ 递减、右连续且勒贝格可测。

(ii) 若对 $ g \in \mathcal{L}_0(X,\mu,E) $ 有 $ |f| \le |g| $，则 $ \lambda_f \le \lambda_g $ 且 $ f^* \le g^* $。

(iii) 若 $ (f_j) $ 是递增序列且 $ |f_j| \uparrow |f| $，则 $ \lambda_{f_j} \uparrow \lambda_f $ 且 $ f_j^* \uparrow f^* $。

(iv) 对 $ p \in (0,\infty) $，

\[ \int_X |f|^p \, d\mu = p \int_{\mathbb{R}^+} t^{p-1} \lambda_f(t) \, \lambda_1(dt) = \int_{\mathbb{R}^+} (f^*)^p \, d\lambda_1 . \]

(v) $ \|f\|_\infty = f^*(0) $。

(vi) $ \lambda_f = \lambda_{f^*} $。

（关于 (iv) 的提示：先考虑简单函数，再应用 (iii) 以及定理 1.12 与 3.4。）

17 对 $ j \in \mathbb{N} $，令 $ I_{j,k} := [k2^{-j},(k+1)2^{-j}] $，$ k = 0,\dots,2^j-1 $。又设 $ \{ J_n ; n \in \mathbb{N} \} $ 是 $ \{ I_{j,k} ; j \in \mathbb{N}, k = 0,\dots,2^j-1 \} $ 的一个重编号，并对 $ j \in \mathbb{N} $ 置 $ f_n := \chi_{J_n} $。证明 $ (f_n) $ 对每个 $ p \in [1,\infty) $ 都是 $ \mathcal{L}_p([0,1]) $ 中的零序列，尽管 $ (f_n(x)) $ 对每个 $ x \in [0,1] $ 都发散。

18 设 $ (f_k) $ 是 $ L_p(X) $ 中的序列，其中 $ 1 \le p < \infty $。若

\[ \int_X f_k\varphi \, dx \to \int_X f\varphi \, dx \quad \text{对 } \varphi \in L_{p'}(X) , \]

则称 $ (f_k) $ 在 $ L_p(X) $ 中**弱收敛**于 $ f \in L_p(X) $。此时称 $ f $ 为 $ (f_k) $ 在 $ L_p(X) $ 中的**弱极限**。

证明：

(i) $ L_p(X) $ 中的弱极限是唯一的。

(ii) $ L_p(X) $ 中每个收敛序列都在 $ L_p(X) $ 中弱收敛。

(iii) 若 $ (f_k) $ 在 $ L_p(X) $ 中弱收敛于 $ f $，且 $ \mu $-几乎处处收敛于 $ g \in L_p(X) $，则 $ f = g $。

(iv) 若 $ (f_k) $ 在 $ L_2(X) $ 中弱收敛于 $ f $，且 $ \|f_k\|_2 \to \|f\|_2 $，则 $ (f_k) $ 在 $ L_2(X) $ 中收敛于 $ f $。

(v) 令 $ \mathrm{e}_k(t) := (2\pi)^{-1/2} e^{ikt} $，$ 0 < t < 2\pi $，$ k \in \mathbb{N} $。则序列 $ (\mathrm{e}_k) $ 在 $ L_2((0,2\pi)) $ 中弱收敛于 0，尽管它在 $ L_2((0,2\pi)) $ 中发散。

（提示：(i) 对 $ f \in L_p(X) $ 考察 $ \varphi(x) := \overline{f(x)}\,|f(x)|^{p/p'-1} $。(ii) 赫尔德不等式。(iii) 证明 $ g \in L_p(X) $，从而 $ [|g| = \infty] $ 是 $ \mu $-零集。若 $ X_n := [\sup_{k\ge n}|f_k(x)| \ge n] $，则 $ \bigcap X_n $ 也是 $ \mu $-零集。现在对 $ \varphi \in L_{p'}(X) $ 考察 $ \lim\int_{X_n^c} f_n\varphi \, dx $。(iv) 应用 $ L_2(X) $ 中的平行四边形恒等式。(v) 第一个结论由贝塞尔不等式推出，第二个由 (ii) 推出。）
