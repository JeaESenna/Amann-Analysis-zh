## 1 可测空间

在第 VI 章中，我们利用柯西–黎曼的积分概念，为一个充分正则的函数的图像与其横轴之间的区域指定了面积。现在的目标是确定 $ \mathbb{R}^{n} $ 中尽可能大的一类区域，使它们可以有意义地被赋予“广义面积”，即**容度**。也就是说，我们要找出 $ \mathfrak{P}(\mathbb{R}^{n}) $ 的一个子集 $ \mathcal{A} $ 以及一个映射 $ \mu: \mathcal{A} \to [0, \infty) $，使得对 $ A \in \mathcal{A} $，数 $ \mu(A) $ 可以解释为 $ A $ 的容度。这个函数 $ \mu $ 当然必须满足某些规则——根据平面区域面积的情形可以预料到的那些规则。例如，两个不交区域的并的容度应当等于它们各自容度之和。此外，一个区域的容度应当与它在空间中的整体位置无关。容度的概念将逐步明确；我们将在第 5 节证明，不可能（非平凡地）为 $ \mathbb{R}^{n} $ 的所有子集赋予容度，即“测度”：$ \mathcal{A} = \mathfrak{P}(\mathbb{R}^{n}) $ 不可能成立。

本节中

• $ X $、$ X_{1} $ 与 $ X_{2} $ 是非空集合。

##### σ-代数

我们首先以公理方式引入那些集合族，后面将在它们之上定义“测度”：$ \mathfrak{P}(X) $ 的子集 $ \mathcal{A} $ 称为 **$ X $ 上的 $ \sigma $-代数**，若它满足以下性质

(i) $ X \in \mathcal{A} $；

(ii) $ A \in \mathcal{A} \implies A^{c} \in \mathcal{A} $；

(iii) $ (A_{j}) \in \mathcal{A}^{\mathbb{N}} \implies \bigcup_{j \in \mathbb{N}} A_{j} \in \mathcal{A} $。


若 $ \mathcal{A} $ 是 $ X $ 上的 $ \sigma $-代数，则称 $ (X, \mathcal{A}) $ 为一个**可测空间**，并称每个 $ A \in \mathcal{A} $ 是 **$ \mathcal{A} $-可测的**。

1.1 注 设 $ \mathcal{A} $ 是一个 $ \sigma $-代数，$ (A_{j}) \in \mathcal{A}^{\mathbb{N}} $，且 $ m \in \mathbb{N} $。则下列每个集合

\[ \varnothing , \quad A_{0} \setminus A_{1} , \quad \bigcup_{j=0}^{m} A_{j} , \quad \bigcap_{j=0}^{m} A_{j} , \quad \bigcap_{j \in \mathbb{N}} A_{j} \]

也都属于 $ \mathcal{A} $。

证明 令

\[ B_{k} := \begin{cases} A_{k} , & k \le m , \\ A_{m} , & k > m , \end{cases} \]

于是 $ (B_{k}) \in \mathcal{A}^{\mathbb{N}} $，从而

\[ \bigcup_{k \in \mathbb{N}} B_{k} = \bigcup_{j=0}^{m} A_{j} \in \mathcal{A} . \]

其余结论由德摩根律推出——参见命题 I.2.7(iii)。■

我们称集合族 $ \mathcal{S} \subset \mathfrak{P}(X) $ 对**有限集合运算封闭**，若

\[ A \in \mathcal{S} \implies A^{c} \in \mathcal{S} \tag{1.1} \]

并且若对每个有限族 $ A_{0}, \ldots, A_{m} $，其并 $ \bigcup_{j=0}^{m} A_{j} $ 也属于 $ \mathcal{S} $。若 $ \mathcal{S} $ 满足 (1.1)，且对 $ \mathcal{S} $ 中的每个序列 $ (A_{j}) $，$ \bigcup_{j=0}^{\infty} A_{j} $ 都属于 $ \mathcal{S} $，则称 $ \mathcal{S} $ 对**可数集合运算封闭**。这些定义是合理的，因为由德摩根律，$ \mathcal{S} $ 也包含 $ \bigcap_{j=0}^{m} A_{j} $（有限情形）与 $ \bigcap_{j=0}^{\infty} A_{j} $（可数情形）。

我们称 $ \mathcal{S} $ 是 **$ X $ 上的代数**，若它满足以下性质：

(i) $ X \in \mathcal{S} $；

(ii) $ A \in \mathcal{S} \implies A^{c} \in \mathcal{S} $；

(iii) $ A, B \in \mathcal{S} \implies A \cup B \in \mathcal{S} $。

1.2 注 设 $ \mathcal{S} \subset \mathfrak{P}(X) $ 包含 $ X $。

(a) $ \mathcal{S} $ 是代数当且仅当 $ \mathcal{S} $ 对有限集合运算封闭。

(b) $ \mathcal{S} $ 是 $ \sigma $-代数当且仅当 $ \mathcal{S} $ 对可数集合运算封闭。此时 $ \mathcal{S} $ 也是代数。

(c) 设 $ \mathcal{S} $ 是代数，并且对每个不交序列\footnote{我们约定如下简化说法。序列 $ (A_{j}) \in \mathcal{S}^{\mathbb{N}} $ 称为不交的，若对所有满足 $ j \ne k $ 的 $ j, k \in \mathbb{N} $ 都有 $ A_{j} \cap A_{k} = \varnothing $。} $ (B_{j}) \in \mathcal{S}^{\mathbb{N}} $ 都有 $ \bigcup_{j \in \mathbb{N}} B_{j} \in \mathcal{S} $。则 $ \mathcal{S} $ 是 $ \sigma $-代数。

证明 设 $ (A_{k}) \in \mathcal{S}^{\mathbb{N}} $。我们递归地令

\[ B_{0} := A_{0} \quad \text{且} \quad B_{j+1} := A_{j+1} \setminus \bigcup_{k=0}^{j} A_{k} \text{ 对 } j \in \mathbb{N} . \]

则 $ (B_{j}) $ 是不交序列，且 $ \bigcup_{k} A_{k} = \bigcup_{j} B_{j} $。按假设，并集 $ \bigcup_{j} B_{j} $ 属于 $ \mathcal{S} $，结论得证。■

1.3 例 (a) $ \{\varnothing, X\} $ 与 $ \mathfrak{P}(X) $ 都是 $ \sigma $-代数。

(b) $ \{\, A \subset X ;\ A \text{ 或 } A^{c} \text{ 是可数的} \,\} $ 是 $ \sigma $-代数。

(c) $ \{\, A \subset X ;\ A \text{ 或 } A^{c} \text{ 是有限的} \,\} $ 是代数，并且它是 $ \sigma $-代数当且仅当 $ X $ 是有限的。

(d) 设 $ \mathsf{A} $ 是非空集合，且对每个 $ \alpha \in \mathsf{A} $，$ \mathcal{A}_{\alpha} $ 都是 $ X $ 上的 $ \sigma $-代数。则 $ \bigcap_{\alpha \in \mathsf{A}} \mathcal{A}_{\alpha} $ 是 $ X $ 上的 $ \sigma $-代数。

(e) 设 $ Y $ 是非空集合，$ f \in Y^{X} $。又设 $ \mathcal{A} $ 与 $ \mathcal{B} $ 分别是 $ X $ 与 $ Y $ 上的 $ \sigma $-代数。则

\[ f^{-1}(\mathcal{B}) := \{\, f^{-1}(B) ;\ B \in \mathcal{B} \,\} \quad \text{与} \quad f_{*}(\mathcal{A}) := \{\, B \subset Y ;\ f^{-1}(B) \in \mathcal{A} \,\} \]

分别是 $ X $ 与 $ Y $ 上的 $ \sigma $-代数。称 $ f^{-1}(\mathcal{B}) $ 为 $ \mathcal{B} $ 在 $ f $ 下的**原像**，称 $ f_{*}(\mathcal{A}) $ 为 $ \mathcal{A} $ 在 $ f $ 下的**像**（或**前推**）。

证明 我们只验证 (e) 部分，其余留给读者。

显然 $ Y $ 属于 $ f_{*}(\mathcal{A}) $。对 $ B \in f_{*}(\mathcal{A}) $，集合 $ f^{-1}(B) $ 属于 $ \mathcal{A} $。由命题 I.3.8 (ii′) 与 (iv′)，有

\[ f^{-1}(B^{c}) = [f^{-1}(B)]^{c} \quad \text{与} \quad f^{-1}\left(\bigcup_{j} B_{j}\right) = \bigcup_{j} f^{-1}(B_{j}) . \]

因此，若 $ B $ 属于 $ f_{*}(\mathcal{A}) $，则 $ B^{c} $ 亦然；同样地，若对 $ j \in \mathbb{N} $ 有 $ B_{j} \in f_{*}(\mathcal{A}) $，则 $ \bigcup_{j \in \mathbb{N}} B_{j} \in f_{*}(\mathcal{A}) $。■

##### 博雷尔 σ-代数

设 $ \mathcal{S} $ 是 $ \mathfrak{P}(X) $ 的非空子集。则

\[ \mathcal{A}_{\sigma}(\mathcal{S}) := \bigcap \{\, \mathcal{A} \subset \mathfrak{P}(X) ;\ \mathcal{A} \supset \mathcal{S},\ \mathcal{A} \text{ 是 } X \text{ 上的 } \sigma\text{-代数} \,\} \]

是**由 $ \mathcal{S} $ 生成的 $ \sigma $-代数**，而 $ \mathcal{S} $ 是 $ \mathcal{A}_{\sigma}(\mathcal{S}) $ 的一个**生成集**。

1.4 注 (a) $ \mathcal{A}_{\sigma}(\mathcal{S}) $ 是良定义的，并且是包含 $ \mathcal{S} $ 的最小 $ \sigma $-代数。

证明 这由例 1.3(a) 与 (d) 推出。■

(b) 若 $ \mathcal{S} $ 是 $ \sigma $-代数，则 $ \mathcal{A}_{\sigma}(\mathcal{S}) = \mathcal{S} $。

(c) 由 $ \mathcal{S} \subset \mathcal{T} $ 可得 $ \mathcal{A}(\mathcal{S}) \subset \mathcal{A}(\mathcal{T}) $。

(d) 对 $ \mathcal{S} = \{A\} $，有 $ \mathcal{A}_{\sigma}(\mathcal{S}) = \{\varnothing, A, A^{c}, X\} $。■

设 $ X := (X, \mathcal{T}) $ 是拓扑空间。由于 $ \mathcal{T} $ 非空，它生成一个良定义的 $ \sigma $-代数，称为 $ X $ 的**博雷尔 $ \sigma $-代数**，记作 $ \mathcal{B}(X) $。$ \mathcal{B}(X) $ 的元素称为 $ X $ 的**博雷尔子集**。作为简写，我们记 $ \mathcal{B}^{n} := \mathcal{B}(\mathbb{R}^{n}) $。

$ X $ 的子集 $ A $ 称为一个 $ G_{\delta} $（或 $ G_{\delta} $ 集），若存在开集 $ O_{j} $ 使得 $ A = \bigcap_{j \in \mathbb{N}} O_{j} $，也就是说，若 $ A $ 是 $ X $ 中可数多个开集的交。集合 $ A $ 称为一个 $ F_{\sigma} $（或 $ F_{\sigma} $ 集），若它是 $ X $ 的闭子集的可数并。因此 $ A $ 是 $ F_{\sigma} $ 集当且仅当 $ A^{c} $ 是 $ G_{\delta} $ 集。\footnote{符号 $ F_{\sigma} $ 与 $ G_{\delta} $ 的解释如下：$ F $ 代表 fermé（法语，意为闭），$ \sigma $ 代表 somme（集合的和，是集合的并的另一种说法）；$ G $ 代表 Gebiet（德语，意为区域，是对开集的一种旧称），$ \delta $ 代表 Durchschnitt（交）。}

1.5 例 (a) 对 $ \mathcal{F} := \{\, A \subset X ;\ A \text{ 是闭的} \,\} $，有 $ \mathcal{B}(X) = \mathcal{A}_{\sigma}(\mathcal{F}) $。

(b) 每个 $ G_{\delta} $ 集与每个 $ F_{\sigma} $ 集都是博雷尔集。

(c) 每个闭区间 $ I $ 既是 $ F_{\sigma} $ 集又是 $ G_{\delta} $ 集。

证明 设 $ I = [a, b] $，其中 $ -\infty < a \le b < \infty $。显然 $ I $ 是 $ F_{\sigma} $ 集。由于 $ [a, b] = \bigcap_{k \in \mathbb{N}^{\times}} (a - 1/k, b + 1/k) $，可见 $ I $ 也是 $ G_{\delta} $ 集。$ I = [a, \infty) $ 与 $ I = (-\infty, a] $（其中 $ a \in \mathbb{R} $）的情形可类似处理。$ I = \mathbb{R} $ 的情形是显然的。■

(d) 设 $ Y \subset X $，$ Y \ne \varnothing $ 且 $ Y \ne X $。又设 $ \mathcal{T} := \{\varnothing, X\} $ 是 $ X $ 上的**平凡拓扑**。则 $ Y $ 在 $ (X, \mathcal{T}) $ 中既不是 $ F_{\sigma} $ 集也不是 $ G_{\delta} $ 集。

(e) $ \mathbb{Q} $ 在 $ \mathbb{R} $ 中是 $ F_{\sigma} $ 集，但不是 $ G_{\delta} $ 集。

证明 由于 $ \mathbb{Q} $ 可数，它显然是 $ F_{\sigma} $ 集（见推论 III.2.18）。为证第二个断言，假设 $ \mathbb{Q} $ 是 $ G_{\delta} $ 集，并选取开集 $ Q_{j} $（$ j \in \mathbb{N} $），使得 $ \mathbb{Q} = \bigcap_{j} Q_{j} $。由于对 $ j \in \mathbb{N} $ 有 $ \mathbb{Q} \subset Q_{j} $，并考虑到命题 I.10.8，每个 $ Q_{j} $ 在 $ \mathbb{R} $ 中都是开集且稠密。于是由习题 V.4.4 推出 $ \mathbb{Q} $ 不可数，而这是错误的。■

##### 第二可数公理

设 $ (X, \mathcal{T}) $ 是拓扑空间。我们称 $ \mathcal{M} \subset \mathcal{T} $ 是 $ \mathcal{T} $ 的一个**基**，若对每个 $ O \in \mathcal{T} $ 都存在 $ \mathcal{M}' \subset \mathcal{M} $，使得 $ O = \bigcup \{ M \subset X ;\ M \in \mathcal{M}' \} $，也就是说，若每个开集都能表示成 $ \mathcal{M} $ 中集合的并。拓扑空间 $ (X, \mathcal{T}) $ 称为**第二可数的**（或称满足**第二可数公理**），若 $ \mathcal{T} $ 有可数基。最后，若 $ X $ 的每个开覆盖都有可数子覆盖，则称 $ (X, \mathcal{T}) $ 为**林德勒夫空间**。显然每个紧致空间都是林德勒夫空间。

1.6 注 (a) $ \mathcal{M} \subset \mathcal{T} $ 是 $ \mathcal{T} $ 的基当且仅当对每个点 $ x \in X $ 及 $ x $ 的每个邻域 $ U $，都存在 $ M \in \mathcal{M} $，使得 $ x \in M \subset U $。

证明 先证“$ \implies $”。设 $ \mathcal{M} $ 是 $ \mathcal{T} $ 的基，取 $ x \in X $ 与 $ U \in \mathcal{U}(x) $。按假设，存在 $ O \in \mathcal{T} $，使得 $ x \in O \subset U $。此外，存在 $ \mathcal{M}' \subset \mathcal{M} $，使得 $ O = \bigcup \{ M \subset X ;\ M \in \mathcal{M}' \} $。于是我们找到 $ M \in \mathcal{M}' \subset \mathcal{M} $，使得 $ x \in M \subset O \subset U $。

反之，证“$ \impliedby $”。设 $ O \in \mathcal{T} $。对每个 $ x \in O $，$ O $ 是 $ x $ 的邻域。因此按假设，存在 $ M_{x} \in \mathcal{M} $，使得 $ x \in M_{x} \subset O $，并且我们发现

\[ O = \bigcup_{x \in O} \{x\} \subset \bigcup_{x \in O} M_{x} \subset O , \]

即 $ O = \bigcup_{x \in O} M_{x} $。■

(b) 任何满足第二可数公理的拓扑空间也满足第一可数公理（见注 III.2.29(c)）。

证明 这由 (a) 立即推出。■

(c) (b) 的逆命题不成立。

证明 设 $ X $ 不可数。则 $ (X, \mathfrak{P}(X)) $ 满足第一可数公理，因为任何 $ x \in X $ 都以 $ \{\{x\}\} $ 作为邻域基。但 $ (X, \mathfrak{P}(X)) $ 不可能是第二可数的，因为 $ \mathfrak{P}(X) $ 的任何基都必须包含集合 $ \{\, \{x\} ;\ x \in X \,\} $，从而是不可数的。■

1.7 引理 设 $ X $ 是度量空间，$ A \subset X $ 在 $ X $ 中稠密。又设 $ \mathcal{M} := \{\, \mathbb{B}(a, r) ;\ a \in A,\ r \in \mathbb{Q}^{+} \,\} $。则 $ X $ 中每个开集都能写成 $ \mathcal{M} $ 中集合的并。

证明 设 $ O $ 是 $ X $ 中的开集，$ x \in O $。则存在 $ \varepsilon > 0 $，使得 $ \mathbb{B}(x, \varepsilon_{x}) \subset O $。由于 $ A $ 在 $ X $ 中稠密且 $ \mathbb{Q} $ 在 $ \mathbb{R} $ 中稠密，存在 $ a_{x} \in A $，使得 $ d(x, a_{x}) < \varepsilon_{x}/4 $，还存在 $ r_{x} \in \mathbb{Q}^{+} $，使得 $ r_{x} \in (\varepsilon_{x}/4, \varepsilon_{x}/2) $。于是由三角不等式得到

\[ x \in \mathbb{B}(a_{x}, r_{x}) \subset \mathbb{B}(x, \varepsilon_{x}) \subset O , \]

由此可得 $ O = \bigcup_{x \in O} \mathbb{B}(a_{x}, r_{x}) $。■

1.8 命题 设 $ X $ 是度量空间。以下陈述等价：

(i) $ X $ 满足第二可数公理。

(ii) $ X $ 是林德勒夫空间。

(iii) $ X $ 是可分的。

证明 “(i)$ \implies $(ii)” 设 $ \mathcal{M} $ 是可数基，且 $ \{\, O_{\alpha} ;\ \alpha \in \mathsf{A} \,\} $ 是 $ X $ 的开覆盖。按假设，对每个 $ \alpha \in \mathsf{A} $，存在 $ \mathcal{M} $ 中的序列 $ (U_{\alpha,j})_{j \in \mathbb{N}} $，使得 $ O_{\alpha} = \bigcup_{j \in \mathbb{N}} U_{\alpha,j} $。现在，族 $ \mathcal{M}' := \{\, U_{\alpha,j} ;\ \alpha \in \mathsf{A},\ j \in \mathbb{N} \,\} $ 覆盖 $ X $，而且可数（由于 $ \mathcal{M}' \subset \mathcal{M} $），所以我们可以把它排成 $ \mathcal{M}' = \{\, M_{j} ;\ j \in \mathbb{N} \,\} $ 的形式。按构造，对每个 $ j \in \mathbb{N} $ 都存在 $ \alpha_{j} \in \mathsf{A} $，使得 $ M_{j} \subset O_{\alpha_{j}} $。因此 $ \{\, O_{\alpha_{j}} ;\ j \in \mathbb{N} \,\} $ 是 $ \{\, O_{\alpha} ;\ \alpha \in \mathsf{A} \,\} $ 的可数子覆盖。

“(ii)$ \implies $(iii)” 对每个 $ n \in \mathbb{N}^{\times} $，我们知道 $ \mathcal{U}_{n} := \{\, \mathbb{B}(x, 1/n) ;\ x \in X \,\} $ 是 $ X $ 的开覆盖。按假设，对每个 $ n \in \mathbb{N}^{\times} $，存在点 $ x_{n,k} \in X $（$ k \in \mathbb{N} $），使得 $ \mathcal{V}_{n} := \{\, \mathbb{B}(x_{n,k}, 1/n) ;\ k \in \mathbb{N} \,\} $ 是 $ \mathcal{U}_{n} $ 的子覆盖。根据命题 I.6.8，$ D := \{\, x_{n,k} ;\ n \in \mathbb{N}^{\times},\ k \in \mathbb{N} \,\} $ 是可数的。现在取 $ x \in X $、$ \varepsilon > 0 $、$ n > 1/\varepsilon $。由于 $ \mathcal{V}_{n} $ 覆盖 $ X $，存在 $ x_{n,k} \in D $，使得 $ x \in \mathbb{B}(x_{n,k}, 1/n) $。因此 $ D $ 在 $ X $ 中稠密。

“(iii)$ \implies $(i)” 由引理 1.7，可分集合是第二可数的。■

1.9 推论 (i) 设 $ X $ 是可分度量空间，$ A $ 在 $ X $ 中可数且稠密。则

\[ \mathcal{B}(X) = \mathcal{A}_{\sigma}\left(\{\, \mathbb{B}(a, r) ;\ a \in A,\ r \in \mathbb{Q}^{+} \,\}\right) . \]

(ii) 设 $ X \subset \mathbb{R}^{n} $ 非空。则度量空间 $ X $ 有可数基。

证明 (i) 令 $ \mathcal{S} := \{\, \mathbb{B}(a, r) ;\ a \in A,\ r \in \mathbb{Q}^{+} \,\} $，并记 $ \mathcal{T} $ 为 $ X $ 的拓扑。引理 1.7 蕴含 $ \mathcal{T} \subset \mathcal{A}_{\sigma}(\mathcal{S}) $，于是由注 1.4(b) 与 (c) 得到

\[ \mathcal{B}(X) = \mathcal{A}_{\sigma}(\mathcal{T}) \subset \mathcal{A}_{\sigma}(\mathcal{A}_{\sigma}(\mathcal{S})) = \mathcal{A}_{\sigma}(\mathcal{S}) . \]

包含关系 $ \mathcal{A}_{\sigma}(\mathcal{S}) \subset \mathcal{B}(X) $ 由 $ \mathcal{S} \subset \mathcal{T} $ 与注 1.4(a) 推出。

(ii) 这由习题 V.4.13 与命题 1.8 推出。■

对一般的拓扑空间，我们有如下结果。

1.10 推论 设 $ X $ 是具有可数基的拓扑空间。则 $ X $ 是可分的且是林德勒夫的。

证明 (i) 设 $ \{\, B_{j} ;\ j \in \mathbb{N} \,\} $ 是 $ X $ 的基。对每个 $ j \in \mathbb{N} $，我们选取 $ b_{j} \in B_{j} $，并令 $ D := \{\, b_{j} ;\ j \in \mathbb{N} \,\} $。显然 $ D $ 可数。现在设 $ x \in X $，$ U $ 是 $ x $ 的开邻域。则存在 $ I \subset \mathbb{N} $，使得 $ U = \bigcup_{i \in I} B_{i} $。因此 $ U \cap D \ne \varnothing $，即 $ D $ 在 $ X $ 中稠密。

(ii) 命题 1.8 中证明 “(i)$ \implies $(ii)” 的论证蕴含 $ X $ 是林德勒夫的。■

##### 用区间生成博雷尔 σ-代数

我们给 $ \mathbb{R}^{n} $ 赋予**自然（乘积）序**，也就是说，对 $ a, b \in \mathbb{R}^{n} $，关系 $ a \le b $ 成立当且仅当对 $ 1 \le k \le n $ 有 $ a_{k} \le b_{k} $。

$ \mathbb{R}^{n} $ 的子集 $ J $ 称为 $ \mathbb{R}^{n} $ 中的**区间**，若存在（通常的）区间 $ J_{k} \subset \mathbb{R} $（$ 1 \le k \le n $），使得 $ J = \prod_{k=1}^{n} J_{k} $。对满足 $ a \le b $ 的 $ a, b \in \mathbb{R}^{n} $，我们使用记号

\[ (a, b) := \prod_{k=1}^{n} (a_{k}, b_{k}) , \quad [a, b] := \prod_{k=1}^{n} [a_{k}, b_{k}] , \]

\[ (a, b] := \prod_{k=1}^{n} (a_{k}, b_{k}] , \quad [a, b) := \prod_{k=1}^{n} [a_{k}, b_{k}) . \]

若 $ a \le b $ 不成立，则令

\[ (a, b) := [a, b] := (a, b] := [a, b) := \varnothing . \]

与一维情形类似，我们称 $ (a, b) $ 为 $ \mathbb{R}^{n} $ 中的**开区间**，称 $ [a, b] $ 为 $ \mathbb{R}^{n} $ 中的**闭区间**。显然 $ \mathbb{R}^{n} $ 中的开区间与闭区间分别是 $ \mathbb{R}^{n} $ 的开子集与闭子集。我们用 $ \mathbb{J}(n) $ 记 $ \mathbb{R}^{n} $ 中开区间之集。

设 $ Y $ 是集合，$ E $ 是对 $ y \in Y $ 或真或假的性质。当上下文清楚表明 $ Y $ 是什么时，我们使用记号

\[ [E] := [E(y)] := \{\, y \in Y ;\ E(y) \text{ 为真} \,\} . \]

例如，集合 $ [x_{k} \ge \alpha] $（其中 $ k \in \{1, \ldots, n\} $，$ \alpha \in \mathbb{R} $）是 $ \mathbb{R}^{n} $ 中的闭半空间：

\[ H_{k}(\alpha) := \{\, x \in \mathbb{R}^{n} ;\ x_{k} \ge \alpha \,\} \]

若 $ f \in Y^{X} $，则令

\[ [E(f)] := \{\, x \in X ;\ E(f(x)) \text{ 为真} \,\} . \]

于是，对 $ f \in \mathbb{R}^{X} $，例如有 $ [f > 0] = \{\, x \in X ;\ f(x) > 0 \,\} $。

下面的定理表明，$ \mathbb{R}^{n} $ 上的博雷尔 $ \sigma $-代数仅仅由坐标取有理数的那些半空间之集生成。

1.11 定理 令

\[ \mathcal{A}_{\mathbb{Q}} := \mathcal{A}_{\sigma}\left(\{\, (a, b) ;\ a, b \in \mathbb{Q}^{n} \,\}\right) , \]

\[ \mathcal{A}_{0} := \mathcal{A}_{\sigma}\left(\{\, H_{k}(\alpha) ;\ 1 \le k \le n,\ \alpha \in \mathbb{Q} \,\}\right) , \]

\[ \mathcal{A}_{1} := \mathcal{A}_{\sigma}\left(\{\, H_{k}(\alpha) ;\ 1 \le k \le n,\ \alpha \in \mathbb{R} \,\}\right) . \]

则

\[ \mathcal{B}^{n} = \mathcal{A}_{\sigma}(\mathbb{J}(n)) = \mathcal{A}_{\mathbb{Q}} = \mathcal{A}_{0} = \mathcal{A}_{1} . \]

证明 由于每个闭半空间都属于 $ \mathcal{B}^{n} $，可得

\[ \mathcal{A}_{0} \subset \mathcal{A}_{1} \subset \mathcal{B}^{n} . \tag{1.2} \]

现在取 $ a, b \in \mathbb{R}^{n} $，$ a \le b $。对 $ k \in \{1, \ldots, n\} $，有

\[ [x_{k} < b_{k}] = [x_{k} \ge b_{k}]^{c} = H_{k}(b_{k})^{c} \in \mathcal{A}_{1} \]

以及

\[ [x_{k} > a_{k}] = \bigcup_{j=1}^{\infty} [x_{k} \ge a_{k} + 1/j] \in \mathcal{A}_{1} , \]

因为 $ \mathcal{A}_{1} $ 是 $ \sigma $-代数。这蕴含

\[ (a, b) = \prod_{k=1}^{n} (a_{k}, b_{k}) = \bigcap_{k=1}^{n} \left([x_{k} < b_{k}] \cap [x_{k} > a_{k}]\right) \in \mathcal{A}_{1} . \]

对 $ a, b \in \mathbb{Q}^{n} $，这表明 $ (a, b) $ 属于 $ \mathcal{A}_{0} $。考虑到 (1.2) 以及包含关系 $ \{\, (a, b) ;\ a, b \in \mathbb{Q}^{n} \,\} \subset \mathbb{J}(n) $，可得

\[ \mathcal{A}_{\mathbb{Q}} \subset \mathcal{A}_{\sigma}(\mathbb{J}(n)) \subset \mathcal{A}_{1} \subset \mathcal{B}^{n} \quad \text{且} \quad \mathcal{A}_{\mathbb{Q}} \subset \mathcal{A}_{0} \subset \mathcal{B}^{n} . \tag{1.3} \]

最后，对每个 $ c \in \mathbb{Q}^{n} $ 与 $ r \in \mathbb{Q}^{+} $，$ \mathbb{B}_{\infty}^{n}(c, r) = \prod_{k=1}^{n} (c_{k} - r, c_{k} + r) $ 都属于 $ \mathcal{A}_{\mathbb{Q}} $。于是由推论 1.9(i) 得到

\[ \mathcal{B}^{n} = \mathcal{A}_{\sigma}\left(\{\, \mathbb{B}_{\infty}^{n}(c, r) ;\ c \in \mathbb{Q}^{n},\ r \in \mathbb{Q}^{+} \,\}\right) \subset \mathcal{A}_{\mathbb{Q}} , \]

结合 (1.3)，便得到结论。■

##### 拓扑空间的基

一个集合 $ X $ 的拓扑由指定一个基而唯一确定。容易看出，并非每个非平凡的集合族 $ \mathcal{M} \subset \mathfrak{P}(X) $ 都能成为某个拓扑的基。下一个定理刻画了其中哪些可以。
