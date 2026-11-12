##### 变换法则

在下文中，设 $ X $ 是 $ \mathbb{R}^{n} $ 中的开集，$ Y $ 是 $ \mathbb{R}^{m} $ 中的开集。在特殊情形 $ n = 1 $ 或 $ m = 1 $ 下，我们也允许 $ X $ 或 $ Y $（视情况而定）是完全区间。又设 $ \varphi \in C^{q}(X,Y) $，其中 $ q \in \mathbb{N}^{\times} \cup \{\infty\} $。

利用 $ \varphi $，我们定义映射

\[ \varphi^{*} : \mathbb{R}^{Y} \to \mathbb{R}^{X} , \]

即**拉回**，其定义为

\[ \varphi^{*}f := f\circ\varphi \quad \text{对 } f \in \mathbb{R}^{Y} . \]

更确切地说，$ \varphi^{*} $ 是**函数的拉回**。\footnote{这个定义显然对 $ f \in Z^{Y} $ 以及任意集合 $ X $、$ Y $、$ Z $ 都有意义。}

对普法夫形式，我们通过 $ \varphi $ 定义**拉回**为

\[ \varphi^{*} : \Omega_{(q-1)}(Y) \to \Omega_{(q-1)}(X) , \quad \boldsymbol{\alpha} \mapsto \varphi^{*}\boldsymbol{\alpha} \]

其中

\[ \varphi^{*}\boldsymbol{\alpha}(p) := (T_{p}\varphi)^{\top}\boldsymbol{\alpha}(\varphi(p)) . \]

由其对象出发，总可明显地看出 $ \varphi^{*} $ 指的是函数的拉回还是 1-形式的拉回。拉回把“生活”在 $ Y $ 上的函数（或 1-形式）映到 $ X $ 上的函数（或 1-形式），而原来的 $ \varphi $ 方向相反。

3.11 注 (a) $ f \in C^{q}(Y) $ 与 $ \boldsymbol{\alpha} \in \Omega_{(q-1)}(Y) $ 的拉回由下面交换图的交换性来定义：

\[ \begin{array}{ccc} X & \xrightarrow{\varphi} & Y \\ \varphi^{*}f \searrow & & \swarrow f \\ & \mathbb{R} & \end{array} \qquad \begin{array}{ccc} TX & \xrightarrow{T\varphi} & TY \\ \varphi^{*}\boldsymbol{\alpha} \searrow & & \swarrow \boldsymbol{\alpha} \\ & \mathbb{R} & \end{array} \]

其中对 $ \boldsymbol{v} \in TX $，$ (T\varphi)\boldsymbol{v} \in TY $ 由下式确定：

\[ ((T\varphi)\boldsymbol{v})(\varphi(p)) := (T_{p}\varphi)\boldsymbol{v}(p) \quad \text{对 } p \in X . \]

(b) 对 $ \boldsymbol{\alpha} \in \Omega_{(q-1)}(Y) $，

\[ \varphi^{*}\boldsymbol{\alpha}(p) = (T_{p}\varphi)^{\top}\boldsymbol{\alpha}(\varphi(p)) = \left( p,(\partial\varphi(p))^{\top}\boldsymbol{\alpha}(\varphi(p)) \right) \in T_{p}^{*}X \quad \text{对 } p \in X . \]

证明 由 $ \varphi^{*}\boldsymbol{\alpha} $ 的定义，我们有

\[ \begin{aligned} \langle\varphi^{*}\boldsymbol{\alpha}(p),\boldsymbol{v}(p)\rangle_{p} &= \langle\boldsymbol{\alpha}(\varphi(p)),(T_{p}\varphi)\boldsymbol{v}(p)\rangle_{\varphi(p)} \\ &= \langle\boldsymbol{\alpha}(\varphi(p)),\partial\varphi(p)\boldsymbol{v}(p)\rangle = \langle(\partial\varphi(p))^{\top}\boldsymbol{\alpha}(\varphi(p)),\boldsymbol{v}(p)\rangle \end{aligned} \]

对 $ p \in X $ 与 $ \boldsymbol{v} \in \mathcal{V}^{q}(X) $ 成立，于是断言得证。■

(c) 映射

\[ \varphi^{*} : C^{q}(Y) \to C^{q}(X) \tag{3.7} \]

与

\[ \varphi^{*} : \Omega_{(q-1)}(Y) \to \Omega_{(q-1)}(X) \tag{3.8} \]

是良定义的且为 $ \mathbb{R} $-线性的。应特别指出，在 (3.8) 中所考虑的普法夫形式的“正则性的阶”是 $ q - 1 $ 而不是 $ q $，而在 (3.7) 中 $ q $ 才是正则性的正确阶数。由于定义涉及切映射，正则性被“损失”了一阶。

证明 关于映射 (3.7) 的断言直接由链式法则得出。(3.8) 的性质同样由链式法则与 (b) 推出。■

在下一个定理中，我们汇总拉回的法则。

3.12 命题 设 $ Z $ 是 $ \mathbb{R}^{\ell} $ 中的开集，或（在 $ \ell = 1 $ 的情形）是完全区间。则

(i) 对 $ \mathcal{F}(X) := C^{q}(X) $ 或 $ \mathcal{F}(X) := \Omega_{(q-1)}(X) $，有 $ (\operatorname{id}_{X})^{*} = \operatorname{id}_{\mathcal{F}(X)} $；且对 $ \varphi \in C^{q}(X,Y) $ 与 $ \psi \in C^{q}(Y,Z) $，有 $ (\psi\circ\varphi)^{*} = \varphi^{*}\psi^{*} $；

(ii) 对 $ f,g \in C^{q}(Y) $，有 $ \varphi^{*}(fg) = (\varphi^{*}f)(\varphi^{*}g) $；且对 $ h \in C^{(q-1)}(Y) $ 与 $ \boldsymbol{\alpha} \in \Omega_{(q-1)}(Y) $，有 $ \varphi^{*}(h\boldsymbol{\alpha}) = (\varphi^{*}h)\varphi^{*}\boldsymbol{\alpha} $；

(iii) 对 $ f \in C^{q}(Y) $，有 $ \varphi^{*}(df) = d(\varphi^{*}f) $，也就是说，下图

\[ \begin{array}{ccc} C^{q}(Y) & \xrightarrow{d} & \Omega_{(q-1)}(Y) \\ \varphi^{*}\downarrow & & \downarrow\varphi^{*} \\ C^{q}(X) & \xrightarrow{d} & \Omega_{(q-1)}(X) \end{array} \]

交换。

证明 (i) 第一个断言是显然的。为证第二个公式，我们需证明

\[ (\psi\circ\varphi)^{*}f = (\varphi^{*}\circ\psi^{*})f \quad \text{对 } f \in C^{q}(Z) , \]

以及

\[ (\psi\circ\varphi)^{*}\boldsymbol{\alpha} = (\varphi^{*}\circ\psi^{*})\boldsymbol{\alpha} \quad \text{对 } \boldsymbol{\alpha} \in \Omega_{(q-1)}(Z) . \]

对 $ f \in C^{q}(Z) $，我们有

\[ (\psi\circ\varphi)^{*}f = f\circ(\psi\circ\varphi) = (f\circ\psi)\circ\varphi = (\psi^{*}f)\circ\varphi = (\varphi^{*}\circ\psi^{*})f . \]

对 $ \boldsymbol{\alpha} \in \Omega_{(q-1)}(Y) $，由注 VII.10.2(b) 的链式法则与注 3.10(c) 可得，对 $ p \in X $，

\[ \begin{aligned} (\psi\circ\varphi)^{*}\boldsymbol{\alpha}(p) &= (T_{p}(\psi\circ\varphi))^{\top}\boldsymbol{\alpha}(\psi\circ\varphi(p)) = ((T_{\varphi(p)}\psi)\circ T_{p}\varphi)^{\top}\boldsymbol{\alpha}(\psi(\varphi(p))) \\ &= (T_{p}\varphi)^{\top}(T_{\varphi(p)}\psi)^{\top}\boldsymbol{\alpha}(\psi(\varphi(p))) = (T_{p}\varphi)^{\top}\psi^{*}\boldsymbol{\alpha}(\varphi(p)) \\ &= \varphi^{*}\psi^{*}\boldsymbol{\alpha}(p) . \end{aligned} \]

(ii) 第一个陈述是显然的。对 $ p \in X $，第二个陈述由下式得出：

\[ \begin{aligned} \varphi^{*}(h\boldsymbol{\alpha})(p) &= (T_{p}\varphi)^{\top}(h\boldsymbol{\alpha})(\varphi(p)) = (T_{p}\varphi)^{\top}h(\varphi(p))\boldsymbol{\alpha}(\varphi(p)) \\ &= h(\varphi(p))(T_{p}\varphi)^{\top}\boldsymbol{\alpha}(\varphi(p)) = ((\varphi^{*}h)\varphi^{*}\boldsymbol{\alpha})(p) . \end{aligned} \]

(iii) 由切映射的链式法则与微分的定义，我们得到

\[ \begin{aligned} \varphi^{*}(df)(p) &= (T_{p}\varphi)^{\top}df(\varphi(p)) = df(\varphi(p))\circ T_{p}\varphi \\ &= \mathrm{pr}_{2}\circ T_{\varphi(p)}f\circ T_{p}\varphi = \mathrm{pr}_{2}\circ T_{p}(f\circ\varphi) = d(\varphi^{*}f)(p) , \end{aligned} \]

因此断言成立。■

3.13 推论 对 $ \varphi \in \operatorname{Diff}^{q}(X,Y) $，映射

\[ \varphi^{*} : C^{q}(Y) \to C^{q}(X) \]

与

\[ \varphi^{*} : \Omega_{(q-1)}(Y) \to \Omega_{(q-1)}(X) \]

是双射，且 $ (\varphi^{*})^{-1} = (\varphi^{-1})^{*} $。

证明 这由命题 3.12(i) 推出。■

3.14 例 (a) 分别以 $ x = (x^{1},\ldots,x^{n}) \in X $ 与 $ y = (y^{1},\ldots,y^{m}) \in Y $ 记 $ X $ 与 $ Y $ 中的点。则

\[ \varphi^{*}dy^{j} = d\varphi^{j} = \sum_{k=1}^{n}\partial_{k}\varphi^{j}\,dx^{k} \quad \text{对 } 1 \le j \le m . \]

证明 由命题 3.12(iii)，我们有

\[ \varphi^{*}dy^{j} = \varphi^{*}d(\mathrm{pr}_{j}) = d(\varphi^{*}\mathrm{pr}_{j}) = d\varphi^{j} = \sum_{k=1}^{n}\partial_{k}\varphi^{j}\,dx^{k} , \]

其中最后一个等式由注 3.3(e) 给出。■

(b) 对 $ \alpha = \sum_{j=1}^{m}a_{j}\,dy^{j} \in \Omega_{(0)}(Y) $，我们有

\[ \varphi^{*}\alpha = \sum_{j=1}^{m}\sum_{k=1}^{n}(a_{j}\circ\varphi)\partial_{k}\varphi^{j}\,dx^{k} . \]

证明 由命题 3.12(ii) 与 $ \varphi^{*} $ 的线性性可得

\[ \varphi^{*}\left( \sum_{j=1}^{m}a_{j}\,dy^{j} \right) = \sum_{j=1}^{m}\varphi^{*}(a_{j}\,dy^{j}) = \sum_{j=1}^{m}(\varphi^{*}a_{j})(\varphi^{*}dy^{j}) . \]

于是断言由 (a) 推出。■

(c) 设 $ X $ 是 $ \mathbb{R} $ 中的开集且 $ \alpha \in \Omega_{(0)}(Y) $。则

\[ \varphi^{*}\alpha(t) = \langle\alpha(\varphi(t)),\dot{\varphi}(t)\rangle\,dt \quad \text{对 } t \in X . \]

证明 这是 (b) 的特殊情形。■

(d) 设 $ Y \subset \mathbb{R} $ 是紧致区间，$ f \in C(Y) $，且 $ \alpha := f\,dy \in \Omega_{(0)}(Y) $。再定义 $ X := [a,b] $，并设 $ \varphi \in C^{1}(X,Y) $。则由 (b)，

\[ \varphi^{*}\alpha = \varphi^{*}(f\,dy) = (f\circ\varphi)\,d\varphi = (f\circ\varphi)\varphi'\,dx . \]

于是，积分的换元法则（定理 VI.5.1）

\[ \int_{a}^{b}(f\circ\varphi)\varphi'\,dx = \int_{\varphi(a)}^{\varphi(b)}f\,dy \]

可借助普法夫形式 $ \alpha = f\,dy $ 与 $ \varphi^{*}\alpha $ 形式地写成

\[ \int_{X}\varphi^{*}\alpha = \int_{\varphi(X)}\alpha . \tag{3.9} \]

因为 $ \Omega_{(0)}(X) $ 是一维的 $ C(X) $-模，$ X $ 上的每个连续 1-形式 $ \beta $ 都可唯一地表示成 $ \beta = b\,dx $ 的形式，其中 $ b \in C(X) $。受 (3.9) 的启发，我们如下定义 $ \beta = b\,dx \in \Omega_{(0)}(X) $ 在 $ X $ 上的**积分**：

\[ \int_{X}\beta := \int_{X}b , \tag{3.10} \]

其中右边理解为柯西–黎曼积分。于是，我们把先前在注 VI.5.2 中给出的关于“微分”的形式定义替换成了数学上精确的定义（至少对实值函数的情形如此）。■

##### 模

为完整起见，我们在此汇集模论中最相关的事实。在第 III 卷中，我们将通过一些例子进一步研究模 $ \mathcal{V}^{q}(X) $ 与 $ \Omega_{(q)}(X) $。

设 $ R = (R,+,\cdot) $ 是含单位元的交换环。**环 $ R $ 上的模**，即 **$ R $-模**，是一个三元组 $ (M,+,\cdot) $，它由一个非空集合 $ M $ 和两种运算构成：一种“内”运算 $ + $，称为**加法**，和一种“外”运算 $ \cdot $，称为**乘法**（用 $ R $ 的元素去乘）。它们必须满足

$ (\mathrm{M}_{1}) $ $ (M,+) $ 是阿贝尔群；

$ (\mathrm{M}_{2}) $ 分配性质，即

\[ \lambda\cdot(v+w) = \lambda\cdot v + \lambda\cdot w , \quad (\lambda+\mu)\cdot v = \lambda\cdot v + \mu\cdot v \quad \text{对 } \lambda,\mu \in R \text{ 且 } v,w \in M ; \]

$ (\mathrm{M}_{3}) $ $ \lambda\cdot(\mu\cdot v) = (\lambda\cdot\mu)\cdot v , \quad 1\cdot v = v \quad \text{对 } \lambda,\mu \in R \text{ 且 } v \in M $。

3.15 注 设 $ M = (M,+,\cdot) $ 是 $ R $-模。

(a) 与向量空间的情形一样，我们规定乘法优先于加法结合，并通常用 $ \lambda v $ 记 $ \lambda\cdot v $。

(b) 公理 $ (\mathrm{M}_{3}) $ 表明环 $ R $ 从左作用于集合 $ M $（见习题 I.7.6）。

(c) $ R $ 与 $ M $ 中的加法运算都记作 $ + $。类似地，$ R $ 中的环乘法与 $ R $ 在 $ M $ 上的乘法都用同一个 $ \cdot $ 表示。最后，我们用 0 表示 $ (R,+) $ 与 $ (M,+) $ 的零元。经验表明，这种简化的记号不会引起误解。

(d) 若 $ R $ 是域，则 $ M $ 是 $ R $ 上的向量空间。■

3.16 例 (a) 每个含单位元的交换环 $ R $ 都是 $ R $-模。

(b) 设 $ G = (G,+) $ 是阿贝尔群。对 $ (z,g) \in \mathbb{Z}\times G $，令\footnote{见例 I.5.12。}

\[ z\cdot g := \begin{cases} \sum_{k=1}^{z}g , & z > 0 , \\ 0 , & z = 0 , \\ -\sum_{k=1}^{-z}g , & z < 0 . \end{cases} \]

则 $ G = (G,+,\cdot) $ 是 $ \mathbb{Z} $-模。

(c) 设 $ G $ 是阿贝尔群，$ R $ 是 $ G $ 的自同态环的交换子环。则 $ G $ 连同运算

\[ R\times G \to G , \quad (T,g) \mapsto Tg , \]

是 $ R $-模。

(d) 设 $ M $ 是 $ R $-模。$ M $ 的非空子集 $ U $ 是 $ M $ 的**子模**，如果

$ (\mathrm{UM}_{1}) $ $ U $ 是 $ M $ 的子群，

$ (\mathrm{UM}_{2}) $ $ R\cdot U \subseteq U $。

不难验证，$ M $ 的非空子集 $ U $ 是 $ M $ 的子模当且仅当 $ U $ 关于由 $ M $ 诱导的运算构成模。

若 $ \{U_{\alpha} ; \ \alpha \in A\} $ 是 $ M $ 的子模族，则 $ \bigcap_{\alpha\in A}U_{\alpha} $ 也是 $ M $ 的子模。■

设 $ M $ 与 $ N $ 是 $ R $ 上的模。映射 $ T : M \to N $ 是**模同态**，如果

\[ T(\lambda v + \mu w) = \lambda T(v) + \mu T(w) \quad \text{对 } \lambda,\mu \in R \text{ 且 } v,w \in M . \]

双射的模同态称为**模同构**。此时逆映射 $ T^{-1} : N \to M $ 也是模同态。当存在从 $ M $ 到 $ N $ 的模同构时，我们说 $ M $ 与 $ N $ 同构，并记作 $ M \cong N $。

设 $ M $ 是 $ R $-模且 $ A \subset M $。则

\[ \operatorname{span}(A) := \bigcap\{U ; \ U \text{ 是 } M \text{ 的子模，且 } U \supseteq A\} \]

称为 $ A $ 在 $ M $ 中的**张成**。显然 $ \operatorname{span}(A) $ 是 $ M $ 中包含 $ A $ 的最小子模。当 $ \operatorname{span}(A) $ 等于 $ M $ 时，我们称 $ A $ 是 $ M $ 的**生成系**。

元素 $ v_{0},\ldots,v_{k} \in M $ 称为在 $ R $ 上**线性无关**的，如果 $ \lambda_{j} \in R $ 与 $ \sum_{j=0}^{k}\lambda_{j}v_{j} = 0 $ 蕴含 $ \lambda_{0} = \cdots = \lambda_{k} = 0 $。$ M $ 的子集 $ B $ 称为在 $ R $ 上**自由**的，如果 $ B $ 的每个有限子集都线性无关。若对 $ R $ 上的某个子集 $ B $ 有 $ \operatorname{span}(B) = M $，则 $ B $ 构成 $ M $ 的一个**基**。具有基的 $ R $-模称为**自由 $ R $-模**。

3.17 注 (a) 以下陈述等价：

(i) $ M $ 是以 $ B $ 为基的自由 $ R $-模。

(ii) 每个 $ v \in M $ 都具有 $ v = \sum_{j=0}^{k}\lambda_{j}v_{j} $ 的形式，其中 $ \lambda_{j} \in R^{\times} $ 与 $ v_{j} \in B $ 是唯一的。

证明 参见代数教材（例如 [SS88, §§ 19 与 22]）。■

(b) 设 $ M $ 与 $ N $ 是 $ R $ 上的模，且 $ M $ 是以 $ B $ 为基的自由模。再设 $ S $ 与 $ T $ 是从 $ M $ 到 $ N $ 的模同态，且 $ S|B = T|B $。则 $ S = T $，也就是说，自由模上的同态由它对其基的作用唯一确定。

(c) 设 $ B $ 与 $ B' $ 是自由 $ R $-模 $ M $ 的两个基。则可以证明，若 $ R $ 不是零环，则 $ \operatorname{Num}(B) = \operatorname{Num}(B') $（例如 [Art93, § XII.2]）。于是 $ M $ 的**维数**定义为 $ \dim(M) := \operatorname{Num}(B) $。

(d) $ \mathbb{Z}_{2} $ 不是自由 $ \mathbb{Z} $-模。

证明 由习题 I.9.2 知 $ \mathbb{Z}_{2} $ 是环。因此 $ (\mathbb{Z}_{2},+) $ 是阿贝尔群，例 3.16(b) 表明 $ \mathbb{Z}_{2} $ 是 $ \mathbb{Z} $-模。设 $ B $ 是 $ \mathbb{Z}_{2} $ 在 $ \mathbb{Z} $ 上的基。则陪集 $ [1] $ 属于 $ B $。另一方面，$ [0] = 2\cdot[1] $ 表明 $ [1] $ 在 $ \mathbb{Z} $ 上不是线性无关的，即 $ [1] \notin B $。■

(e) 设 $ M $ 是 $ R $-模，且对 $ B \subset M $ 有 $ M = \operatorname{span}(B) $。则\footnote{设 $ V $ 是 $ K $ 向量空间且 $ V = \operatorname{span}(B) $。则在线性代数中已证明 $ B $ 包含 $ V $ 的一个基。} $ B $（一般地）不包含 $ M $ 的基。

证明 我们在 $ \mathbb{Z} $-模\footnote{注意 $ \mathbb{Z} $ 是自由 $ \mathbb{Z} $-模。} $ \mathbb{Z} $ 中考虑集合 $ B = \{2,3\} $。由 $ \mathbb{Z} = \mathbb{Z}(3-2) $ 得 $ \operatorname{span}(B) = \mathbb{Z} $。此外，由

\[ 3\cdot 2 - 2\cdot 3 = 0 \quad \text{且} \quad z\cdot 2 \ne 5 \ne z\cdot 3 \quad \text{对 } z \in \mathbb{Z} \]

可知 $ \{2,3\} $、$ \{2\} $、$ \{3\} $ 都不是 $ \mathbb{Z} $ 的基。■

(f) 设 $ M $ 是自由 $ R $-模，$ U $ 是 $ M $ 的以 $ B' $ 为基的自由子模。则 $ B' $（一般地）不生成 $ M $ 的基。

证明 $ \mathbb{Z} $ 是 $ \mathbb{Z} $ 上的自由模。偶数 $ 2\mathbb{Z} $ 构成 $ \mathbb{Z} $ 的自由子模。然而，$ \{2\} $ 与 $ \{-2\} $ 都不生成 $ \mathbb{Z} $ 的基。并且 $ \dim(\mathbb{Z}) = \dim(2\mathbb{Z}) = 1 $。■

(g) 若 $ R $ 是域，则上述“张成”、“线性无关”、“基”与“维数”等概念与第 I.12 节中的概念一致。■
