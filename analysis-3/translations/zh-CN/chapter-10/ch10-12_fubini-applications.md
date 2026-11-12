是 $ \mathcal{L}_{0}(\mathbb{R}^{m+n},E) $ 的向量子空间，且 $ \|\cdot\|_{(p,q)} $ 在 $ \mathcal{L}_{(p,q)}(\mathbb{R}^{m+n},E) $ 上定义一个半范数。最后，我们置
\[ \mathcal{S}_{c}(\mathbb{R}^{m+n},E) := \left\{\, f \in \mathcal{S}(\mathbb{R}^{m+n},E) ;\ \operatorname{supp}(f) \text{ 是紧的} \,\right\} . \]

6.18 引理 $ \mathcal{S}_{c}(\mathbb{R}^{m+n},E) $ 是 $ \mathcal{L}_{(p,q)}(\mathbb{R}^{m+n},E) $ 的稠密向量子空间。

证明 (i) 取 $ f \in \mathcal{L}_{(p,q)}(\mathbb{R}^{m+n},E) $，并设 $ (g_{k}) $ 是 $ \mathcal{S}(\mathbb{R}^{m+n},E) $ 中的序列，使得 $ g_{k} \to f $ 几乎处处。置 $ A_{k} := [|g_{k}| \le 2|f|] \cap k\mathbb{B}^{m+n} $ 以及 $ f_{k} := \chi_{A_{k}}g_{k} $。则 $ (f_{k}) $ 是 $ \mathcal{S}_{c}(\mathbb{R}^{m+n},E) $ 中的序列，且存在 $ \lambda_{m+n} $-零集 $ L $，使得
\[ f_{k}(x,y) \to f(x,y) \quad \text{对 } (x,y) \in L^{c} . \tag{6.19} \]
此外
\[ |f_{k}-f| \le |f_{k}|+|f| \le 3|f| \quad \text{对 } k \in \mathbb{N} . \tag{6.20} \]
(ii) 由 (6.20)，从托内利定理与定理 3.9 可得，存在 $ \lambda_{m} $-零集 $ M_{0} $，使得
\[ |f(x,\cdot)-f_{k}(x,\cdot)|^{q},\ |f(x,\cdot)|^{q} \in \mathcal{L}_{1}(\mathbb{R}^{n}) \quad \text{对 } x \in M_{0}^{c} \text{ 与 } k \in \mathbb{N} . \tag{6.21} \]
注 6.1(h) 说明，存在 $ \lambda_{m} $-零集 $ M_{1} $，使得对每个 $ x \in M_{1}^{c} $，$ L_{[x]} $ 都是 $ \lambda_{n} $-零集。置 $ M := M_{0} \cup M_{1} $ 并取 $ x \in M^{c} $。由 (6.19) 可读出，对 $ y \in (L_{[x]})^{c} $ 有 $ f_{k}(x,y) \to f(x,y) $。由 (6.20) 与 (6.21)，我们可以对序列 $ \left(|f(x,\cdot)-f_{k}(x,\cdot)|^{p}\right)_{k \in \mathbb{N}} $ 应用勒贝格控制收敛定理，并得到
\[ \lim_{k\to\infty}\int_{\mathbb{R}^{n}}|f(x,y)-f_{k}(x,y)|^{q}\,dy = 0 \quad \text{对 } x \in M^{c} . \]
现在定义
\[ \varphi_{k} := \left(x \mapsto \left(\int_{\mathbb{R}^{n}}|f(x,y)-f_{k}(x,y)|^{q}\,dy\right)^{p/q}\right)^{\sim} \quad \text{对 } k \in \mathbb{N} . \]
则序列 $ (\varphi_{k}) $ 关于 $ \lambda_{m} $ 几乎处处收敛到 0。

(iii) 最后，置
\[ \varphi := \left(x \mapsto 3^{p}\left(\int_{\mathbb{R}^{n}}|f(x,y)|^{q}\,dy\right)^{p/q}\right)^{\sim} . \]
因为 $ f \in \mathcal{L}_{(p,q)}(\mathbb{R}^{m+n},E) $，我们知道 $ \varphi $ 属于 $ \mathcal{L}_{1}(\mathbb{R}^{m}) $，且 (6.20) 蕴含：对 $ k \in \mathbb{N} $，$ 0 \le \varphi_{k} \le \varphi $ 关于 $ \lambda_{m} $ 几乎处处成立。因此我们可以对 $ (\varphi_{k}) $ 应用控制收敛定理，看出 $ (\int_{\mathbb{R}^{m}}\varphi_{k})_{k \in \mathbb{N}} $ 是 $ \mathbb{R}^{+} $ 中的零序列。断言现在成立，因为
\[ \int_{\mathbb{R}^{m}}\varphi_{k} = \int_{\mathbb{R}^{m}}\left[\int_{\mathbb{R}^{n}}|f(x,y)-f_{k}(x,y)|^{q}\,dy\right]^{p/q}dx = \|f-f_{k}\|^{p}_{(p,q)} . \ \blacksquare \]

容易验证 $ \mathcal{N} := \left\{\, f \in \mathcal{L}_{0}(\mathbb{R}^{m+n},E) ;\ f = 0 \text{ 几乎处处} \,\right\} $ 是 $ \mathcal{L}_{(p,q)}(\mathbb{R}^{m+n},E) $ 的向量子空间，且 $ f $ 属于 $ \mathcal{N} $ 当且仅当 $ \|f\|_{(p,q)} = 0 $。因此
\[ L_{(p,q)}(\mathbb{R}^{m+n},E) := \mathcal{L}_{(p,q)}(\mathbb{R}^{m+n},E)/\mathcal{N} \]
是良定义的向量空间，且对应 $ [f] \mapsto \|f\|_{(p,q)} $ 在 $ L_{(p,q)}(\mathbb{R}^{m+n},E) $ 上定义一个范数，我们仍将其记为 $ \|\cdot\|_{(p,q)} $。在下文中，我们总是给空间 $ L_{(p,q)}(\mathbb{R}^{m+n},E) $ 赋予由 $ \|\cdot\|_{(p,q)} $ 诱导的拓扑。

我们置
\[ S_{c}(\mathbb{R}^{m+n},E) := \left\{\, [f] \in L_{0}(\mathbb{R}^{m+n},E) ;\ [f] \cap \mathcal{S}_{c}(\mathbb{R}^{m+n},E) \ne \varnothing \,\right\} . \]

6.19 注 (a) $ S_{c}(\mathbb{R}^{m+n},E) $ 是 $ L_{(p,q)}(\mathbb{R}^{m+n},E) $ 的稠密向量子空间。

证明 这由引理 6.18 推出。 ■

(b) 设 $ f \in \mathcal{L}_{0}(\mathbb{R}^{m+n},E) $。若对几乎每个 $ x \in \mathbb{R}^{m} $，$ f(x,\cdot) $ 属于 $ \mathcal{L}_{q}(\mathbb{R}^{n},E) $，且
\[ \left[x \mapsto \left(\int_{\mathbb{R}^{n}}|f(x,y)|^{q}dx\right)^{1/q}\right]^{\sim} \in \mathcal{L}_{p}(\mathbb{R}^{n}) , \]
则 $ [f] $ 属于 $ L_{(p,q)}(\mathbb{R}^{m+n},E) $。

(c) $ L_{(p,p)}(\mathbb{R}^{m+n},E) = L_{p}(\mathbb{R}^{m+n},E) $。

证明 这由注 4.9(b) 与富比尼–托内利定理推出。 ■

(d) $ S_{c}(\mathbb{R}^{n},E) $ 是 $ L_{p}(\mathbb{R}^{n},E) $ 的稠密向量子空间。

证明 这是 (a) 与 (c) 的推论。 ■

设 $ g \in \mathcal{S}_{c}(\mathbb{R}^{m+n},E) $。由推论 6.15，$ T_{0}g := (x \mapsto [g(x,\cdot)])^{\sim} $ 属于 $ \mathcal{L}_{p}\left(\mathbb{R}^{m},L_{q}(\mathbb{R}^{n},E)\right) $。将 $ T_{0}g $ 关于 $ \mathcal{L}_{0}(\mathbb{R}^{m},L_{q}(\mathbb{R}^{n},E)) $ 中所有 $ \lambda_{m} $-几乎处处为零的元素构成的向量子空间的等价类记为 $ [T_{0}g] $，则 $ [T_{0}g] \in L_{p}\left(\mathbb{R}^{m},L_{q}(\mathbb{R}^{n},E)\right) $。此外，由推论 6.8 可得，若 $ g,h \in \mathcal{S}_{c}(\mathbb{R}^{m+n},E) $ 在 $ \lambda_{m+n} $-几乎处处相等，则 $ [T_{0}g] = [T_{0}h] $。于是
\[ T:\ S_{c}(\mathbb{R}^{m+n},E) \to L_{p}\left(\mathbb{R}^{m},L_{q}(\mathbb{R}^{n},E)\right) ,\quad [g] \mapsto [T_{0}g] \]
是良定义的线性映射。

6.20 引理 存在 $ T $ 的唯一延拓
\[ \overline{T} \in \mathcal{L}\left(L_{(p,q)}(\mathbb{R}^{m+n},E),L_{p}\left(\mathbb{R}^{m},L_{q}(\mathbb{R}^{n},E)\right)\right) \]
且 $ \overline{T} $ 是像稠密的等距。

证明 (i) 对 $ f \in S_{c}(\mathbb{R}^{m+n},E) $，取 $ g \in f \cap \mathcal{S}_{c}(\mathbb{R}^{m+n},E) $。则
\[ \int_{\mathbb{R}^{m}}\|Tf\|^{p}_{L_{q}(\mathbb{R}^{n},E)}\,dx = \int_{\mathbb{R}^{m}}\left(\int_{\mathbb{R}^{n}}|g(x,y)|^{q}\,dy\right)^{p/q}dx = \|g\|^{p}_{(p,q)} = \|f\|^{p}_{(p,q)} . \]
因此 $ T \in \mathcal{L}\left(S_{c}(\mathbb{R}^{m+n},E),L_{p}\left(\mathbb{R}^{m},L_{q}(\mathbb{R}^{n},E)\right)\right) $ 是等距。现在由定理 VI.2.6 与注 6.19(a) 可得，存在唯一确定的 $ T $ 的等距延拓 $ \overline{T} $。

(ii) 置 $ F := L_{q}(\mathbb{R}^{n},E) $，并取 $ w \in \mathcal{L}_{p}(\mathbb{R}^{m},F) $ 与 $ \varepsilon > 0 $。由注 6.19(d) 可得，存在 $ \varphi \in \mathcal{S}_{c}(\mathbb{R}^{m},F) $，使得 $ \|w-\varphi\|_{p} < \varepsilon/2 $。设 $ \sum_{j=0}^{r}\chi_{A_{j}}\hat{f}_{j} $ 是 $ \varphi $ 的标准形。则 $ \bigcup_{j=0}^{r}A_{j} $ 在 $ \mathbb{R}^{m} $ 中有界，且 $ \alpha := \sum_{j=0}^{r}\lambda_{m}(A_{j}) $ 有限。在 $ \alpha = 0 $ 的情形，我们有
\[ \|w\|_{p} = \|w-T0\|_{p} < \varepsilon/2 . \]
在 $ \alpha > 0 $ 的情形，对每个 $ j \in \{0,\dots,r\} $，我们选取 $ \hat{f}_{j} $ 的一个代表元 $ f_{j} $ 以及 $ \psi_{j} \in \mathcal{S}_{c}(\mathbb{R}^{n},E) $，使得
\[ \|\psi_{j}-f_{j}\|_{q} < \alpha^{-1/p}(r+1)^{-1/q'}\varepsilon . \]
此外，置
\[ h(x,y) := \sum_{j=0}^{r}\chi_{A_{j}}(x)\psi_{j}(y) \quad \text{对 } (x,y) \in \mathbb{R}^{m+n} . \]
若对 $ j \in \{0,\dots,r\} $ 有 $ \psi_{j} = \sum_{k_{j}=0}^{s_{j}}\chi_{B_{k_{j}}}e_{k_{j}} $，则我们有
\[ h = \sum_{j=0}^{r}\sum_{k_{j}=0}^{s_{j}}\chi_{A_{j}}\chi_{B_{k_{j}}}e_{k_{j}} = \sum_{j=0}^{r}\sum_{k_{j}=0}^{s_{j}}\chi_{A_{j}\times B_{k_{j}}}e_{k_{j}} , \]
并且看出 $ h $ 属于 $ \mathcal{S}_{c}(\mathbb{R}^{m+n},E) $。最后，设 $ g $ 是 $ h $ 在 $ L_{0}(\mathbb{R}^{m+n},E) $ 中的等价类。则 $ g $ 属于 $ S_{c}(\mathbb{R}^{m+n},E) $，且 $ Tg = \sum_{j=0}^{r}[\chi_{A_{j}}\psi_{j}] $。由（和的）赫尔德不等式与等式 $ \chi_{A}^{2} = \chi_{A} $ 可得
\[ \begin{aligned} \int_{\mathbb{R}^{m}}\|Tg-\varphi\|^{p}_{F} &= \int_{\mathbb{R}^{m}}\left[\int_{\mathbb{R}^{n}}\left|\sum_{j=0}^{r}\chi_{A_{j}}(x)(\psi_{j}(y)-f_{j}(y))\right|^{q}dy\right]^{p/q}dx \\ &\le (r+1)^{p/q'}\int_{\mathbb{R}^{m}}\left[\int_{\mathbb{R}^{n}}\sum_{j=0}^{r}\chi_{A_{j}}(x)|\psi_{j}(y)-f_{j}(y)|^{q}dy\right]^{p/q}dx \\ &= (r+1)^{p/q'}\int_{\mathbb{R}^{m}}\left[\sum_{j=0}^{r}\chi_{A_{j}}(x)\|\psi_{j}-f_{j}\|^{q}_{F}\right]^{p/q}dx \\ &\le (r+1)^{p/q'}\sum_{j=0}^{r}\lambda_{m}(A_{j})\|\psi_{j}-f_{j}\|^{p}_{F} . \end{aligned} \]
因此，
\[ \|Tg-\varphi\|_{p} \le \alpha^{1/p}(r+1)^{1/q'}\max_{j}\|\psi_{j}-f_{j}\|_{F} < \varepsilon/2 , \]
从而 $ \|Tg-w\|_{p} < \varepsilon $。因为这对 $ w $ 与 $ \varepsilon $ 的每个选择都成立，所以我们看出 $ T $ 的像，因而 $ \overline{T} $ 的像，是稠密的。 ■

按惯例，我们通过把 $ \overline{T} $ 写作 $ T $ 来简化记号。此外，正如第 4 节所述，我们对勒贝格空间中元素的记号不区分陪集与其代表元。这意味着对 $ f \in L_{(p,q)}(\mathbb{R}^{m+n},E) $，我们可以把 $ Tf(x) $ 写作 $ f(x,\cdot) $。在这些约定下，引理 6.20 说明
\[ T:\ L_{(p,q)}(\mathbb{R}^{m+n},E) \to L_{p}\left(\mathbb{R}^{m},L_{q}(\mathbb{R}^{n},E)\right) ,\quad f \mapsto (x \mapsto f(x,\cdot)) \tag{6.22} \]
是像稠密的线性等距。

现在容易证明我们的连续型闵可夫斯基不等式。

6.21 命题（积分的闵可夫斯基不等式） 对 $ 1 \le q < \infty $，有：

(i) 对 $ f \in \mathcal{L}_{0}(\mathbb{R}^{m+n},E) $，有
\[ \left(\int_{\mathbb{R}^{n}}\left[\int_{\mathbb{R}^{m}}|f(x,y)|\,dx\right]^{q}dy\right)^{1/q} \le \int_{\mathbb{R}^{m}}\left[\int_{\mathbb{R}^{n}}|f(x,y)|^{q}dy\right]^{1/q}dx \]

(ii) 对 $ f \in \mathcal{L}_{(1,q)}(\mathbb{R}^{m+n},E) $，有
\[ \left(\int_{\mathbb{R}^{n}}\left|\int_{\mathbb{R}^{m}}f(x,y)\,dx\right|^{q}dy\right)^{1/q} \le \int_{\mathbb{R}^{m}}\left[\int_{\mathbb{R}^{n}}|f(x,y)|^{q}dy\right]^{1/q}dx < \infty \]

证明 在 (i) 的情形，我们可以不失一般性假设
\[ \int_{\mathbb{R}^{m}}\left[\int_{\mathbb{R}^{n}}|f(x,y)|^{q}dy\right]^{1/q}dx < \infty . \]
则 $ |f| $ 属于 $ \mathcal{L}_{(1,q)}(\mathbb{R}^{m+n},\mathbb{R}) $，且该断言是 (ii) 的特例，其中 $ f $ 换成 $ |f| $、$ E $ 换成 $ \mathbb{R} $。因此假设 $ f \in \mathcal{L}_{(1,q)}(\mathbb{R}^{m+n},E) $。由引理 6.20 与定理 2.11(i)（其中 $ E $ 换成 $ L_{q}(\mathbb{R}^{n},E) $）可得
\[ \int_{\mathbb{R}^{m}}Tf\,dx = \int_{\mathbb{R}^{m}}f(x,\cdot)\,dx \in L_{q}(\mathbb{R}^{n},E) \]
以及
\[ \begin{aligned} \left(\int_{\mathbb{R}^{n}}\left|\int_{\mathbb{R}^{m}}f(x,y)\,dx\right|^{q}dy\right)^{1/q} &= \left\|\int_{\mathbb{R}^{m}}Tf\,dx\right\|_{L_{q}(\mathbb{R}^{n},E)} \le \int_{\mathbb{R}^{m}}\|Tf\|_{L_{q}(\mathbb{R}^{n},E)}\,dx \\ &= \int_{\mathbb{R}^{m}}\left(\int_{\mathbb{R}^{n}}|f(x,y)|^{q}dy\right)^{1/q}dx . \end{aligned} \]
这就完成了证明。 ■

##### $ L_p(\mathbb{R}^{m+n},E) $ 的一个刻画

作为引理 6.20 的另一个推论，我们得到富比尼定理的一个常常有用的推广与精细化。

6.22 定理 对 $ 1 \le p < \infty $，
\[ L_{p}(\mathbb{R}^{m+n},E) \to L_{p}\left(\mathbb{R}^{m},L_{p}(\mathbb{R}^{n},E)\right) ,\quad f \mapsto (x \mapsto f(x,\cdot)) \]
是等距同构。

证明 设 $ v \in L_{p}\left(\mathbb{R}^{m},L_{p}(\mathbb{R}^{n},E)\right) $。由引理 6.20，存在 $ L_{p}(\mathbb{R}^{m+n},E) $ 中的序列 $ (f_{j}) $，使得在 $ L_{p}\left(\mathbb{R}^{m},L_{p}(\mathbb{R}^{n},E)\right) $ 中 $ \lim_{j}Tf_{j} = v $。因为 $ T $ 是线性等距，容易推出 $ (f_{j}) $ 是 $ L_{p}(\mathbb{R}^{m+n},E) $ 中的柯西序列。把它的极限记为 $ f \in L_{p}(\mathbb{R}^{m+n},E) $，我们有 $ Tf = v $。因此 $ T $ 是满射。这证明了断言。 ■

借助这个等距同构，我们可以把巴拿赫空间 $ L_{p}(\mathbb{R}^{m+n},E) $ 与 $ L_{p}\left(\mathbb{R}^{m},L_{p}(\mathbb{R}^{n},E)\right) $ 等同起来：
\[ L_{p}(\mathbb{R}^{m+n},E) = L_{p}\left(\mathbb{R}^{m},L_{p}(\mathbb{R}^{n},E)\right) . \]

6.23 注 (a) 定理 6.22 的陈述对 $ p = \infty $ 不成立，即
\[ L_{\infty}(\mathbb{R}^{m+n},E) \ne L_{\infty}\left(\mathbb{R}^{m},L_{\infty}(\mathbb{R}^{n},E)\right) . \]

证明 取 $ A := \left\{\, (x,y) \in \mathbb{R}^{2} ;\ 0 \le y \le x \le 1 \,\right\} $ 以及 $ f := \chi_{A} $。因为 $ A $ 是勒贝格可测的，所以 $ f $ 属于 $ L_{\infty}(\mathbb{R}^{2}) $。若我们置
\[ g(x) := f(x,\cdot) = \begin{cases} \chi_{[0,x]} & \text{若 } 0 \le x \le 1 , \\ 0 & \text{其他情形} , \end{cases} \]
则 $ g(x) $ 属于 $ L_{\infty}(\mathbb{R}) $，且对 $ x \in \mathbb{R} $ 有 $ \|g(x)\|_{\infty} \le 1 $。但 $ g $ 仍然不属于 $ L_{\infty}\left(\mathbb{R},L_{\infty}(\mathbb{R})\right) $，因为映射 $ g: \mathbb{R} \to L_{\infty}(\mathbb{R}) $ 不是 $ \lambda_{1} $-可测的。为看出这一点，由定理 1.4，只需说明 $ g $ 不是 $ \lambda_{1} $-几乎可分值的。为验证这一点，注意
\[ \|g(x)-g(r)\|_{L_{\infty}(\mathbb{R})} = 1 \quad \text{对 } r \in \mathbb{R}\setminus\{x\} \tag{6.23} \]
对 $ x \in (0,1] $ 成立。假如 $ g $ 是 $ \lambda_{1} $-几乎可分值的，则存在 $ \lambda_{1} $-零集 $ N \subset \mathbb{R} $ 以及 $ \mathbb{R} $ 中的序列 $ (r_{j}) $，使得
\[ \inf_{j \in \mathbb{N}}\|g(x)-g(r_{j})\|_{\infty} < 1/2 \quad \text{对 } x \in N^{c} . \tag{6.24} \]
因为 $ \lambda_{1}((0,1]\setminus N) = 1 $，所以集合 $ (0,1]\setminus N $ 不可数。于是由 (6.23) 可得 (6.24) 不可能成立，且 $ g $ 不是 $ \lambda_{1} $-可测的。 ■

(b) 推广定理 6.22，可以证明：对任意 $ p,q \in [1,\infty) $，映射
\[ L_{(p,q)}(\mathbb{R}^{m+n},E) \to L_{p}\left(\mathbb{R}^{m},L_{q}(\mathbb{R}^{n},E)\right) ,\quad f \mapsto (x \mapsto f(x,\cdot)) \]
是等距同构。因此 $ L_{(p,q)}(\mathbb{R}^{m+n},E) $ 是完备的。 ■

##### 一个迹定理

由例 IX.5.2 以及勒贝格测度在等距下的不变性可得，$ \mathbb{R}^{n} $ 中的每个超平面 $ \Gamma $ 都是 $ \lambda_{n} $-零集。因此对 $ u \in L_{p}(\mathbb{R}^{n}) $，限制 $ u|_{\Gamma} $，即 $ u $ 在 $ \Gamma $ 上的迹，是无定义的，因为 $ u $ 可以在 $ \Gamma $ 上被“任意改变”。作为富比尼–托内利定理的另一个应用，我们现在说明，对 $ L_{p}(\mathbb{R}^{n}) $ 的某些向量子空间的元素，仍然可以在 $ \Gamma $ 上定义这样的迹。当然，对向量子空间 $ C_{c}^{1}(\mathbb{R}^{n}) $ 来说这是平凡的情形。以下结果的意义在于：赋予这个空间的不是上确界范数，而是 $ L_{p} $ 范数，并把导数也纳入其中。在下一节中，我们将更好地理解 $ L_{p}(\mathbb{R}^{n}) $ 的这些子空间的意义。

考虑坐标超平面 $ \Gamma := \mathbb{R}^{n-1} \times \{0\} $，我们把它与 $ \mathbb{R}^{n-1} $ 等同。对 $ u \in C(\mathbb{R}^{n}) $，令 $ \gamma u := u|_{\Gamma} $ 为 $ u $ 在 $ \Gamma $ 上的**迹**：
\[ (\gamma u)(x) := u(x,0) \quad \text{对 } x \in \mathbb{R}^{n-1} . \]
则 $ \gamma: C_{c}^{1}(\mathbb{R}^{n}) \to C_{c}(\mathbb{R}^{n-1}) $，$ u \mapsto \gamma u $ 是良定义的线性映射。

现在取 $ 1 \le p < \infty $，并给 $ C_{c}^{1}(\mathbb{R}^{n}) $ 赋予范数
\[ \|u\|_{1,p} := \left(\|u\|^{p}_{p}+\sum_{j=1}^{n}\|\partial_{j}u\|^{p}_{p}\right)^{1/p} . \]
此外，置
\[ \widehat{H}^{1}_{p}(\mathbb{R}^{n}) := \left(C^{1}_{c}(\mathbb{R}^{n}),\|\cdot\|_{1,p}\right) . \]
因为 $ C_{c}(\mathbb{R}^{n-1}) $ 是 $ L_{p}(\mathbb{R}^{n-1}) $ 的向量子空间，
\[ \gamma:\ \widehat{H}^{1}_{p}(\mathbb{R}^{n}) \to L_{p}(\mathbb{R}^{n-1}) ,\quad u \mapsto \gamma u \]
是良定义的线性映射，即关于 $ \Gamma = \mathbb{R}^{n-1} $ 的**迹算子**。下面的迹定理说明 $ \gamma $ 是连续的。

6.24 命题 对 $ 1 \le p < \infty $，有 $ \gamma \in \mathcal{L}\left(\widehat{H}^{1}_{p}(\mathbb{R}^{n}),L_{p}(\mathbb{R}^{n-1})\right) $。

证明 定义 $ h \in C^{1}(\mathbb{R}) $ 为 $ h(t) := |t|^{p-1}t $。对 $ v \in C_{c}^{1}(\mathbb{R}^{n}) $，由链式法则可得 $ \partial_{n}h(v) = h'(v)\partial_{n}v $。因为 $ v $ 具有紧支集，微积分基本定理蕴含
\[ -h(v(x,0)) = \int_{0}^{\infty}\partial_{n}h(v)(x,y)\,dy = \int_{0}^{\infty}h'(v(x,y))\partial_{n}v(x,y)\,dy \quad \text{对 } x \in \mathbb{R}^{n-1} . \]
因为 $ h'(t) = p|t|^{p-1} $，我们得到
\[ \begin{aligned} |v(x,0)|^{p} = |h(v(x,0))| &\le \int_{0}^{\infty}|h'(v(x,y))|\,|\partial_{n}v(x,y)|\,dy \\ &= p\int_{0}^{\infty}|v(x,y)|^{p-1}|\partial_{n}v(x,y)|\,dy . \end{aligned} \]
