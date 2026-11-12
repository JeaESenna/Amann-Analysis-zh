## 7 群与同态

在定理 5.3 中，当 $ m \leq n $ 时，我们定义了两个自然数 m 与 n 的差 $ n - m $。当 m 是 n 的因子时，我们也定义了两个自然数 m 与 n 的商 n/m。在这两种情形中，对 m 与 n 所加的这些限制都是必需的，以保证差与商仍然是自然数。如果要定义任意自然数 m 与 n 的“差” n - m 或“商” n/m，我们就必须离开自然数的领域。在 9–11 节中，我们将构造新的数，从而把自然数集扩充为更大的数系，在这些数系中这些运算可以（几乎）不受限制地使用。

当然，这些新的数系必须这样构造，使得通常的加法与乘法法则成立。为此，撇开与某一特定数系的联系而考察这些法则本身，是极为有益的。这样的考察也为从定义与公理出发对命题作逻辑推演提供了进一步的练习。

这里以及随后各节所出现问题的深入讨论属于代数而非分析，因此我们的叙述相对简短，只证明少数最重要的定理。我们的目标是能够认出那些以各种伪装反复出现的一般代数结构。从少量公理推导出大量算术法则，将使我们能够为本来庞杂的一堆公式与结果建立秩序，并把注意力保持在本质之处。我们从公理推出的命题，只要公理成立便成立，而与它们成立的具体情境无关。已经证明过一次的东西，无需对每个特殊情形再证明一次。

在本节及随后各节中，我们只给出这些新概念的少数具体例子。我们主要着眼于提供一种语言，并希望读者在后面的各节中能认识到这种语言的用处，同时也能看到形式化背后的数学内容。

##### 群

群是由一个集合、一个运算和三条公理组成的系统。由于它们具有如此简单的代数结构，因而在数学中处处可见。

由非空集合 G 与一个运算 $ \odot $ 组成的对 $ (G,\odot) $ 称为群，如果下列条件成立：

$ (G_1) $：$ \odot $ 是结合的。

 $ (G_{2}) \odot $ 有单位元 e。

 $ (G_3) $ 每个 $ g \in G $ 都有一个 $ \mathbf{逆元} $ $ h \in G $，使得 $ g \odot h = h \odot g = e $。

若 $ \odot $ 是 $ G $ 上的交换运算，则群 $ (G, \odot) $ 称为交换群或阿贝尔群。若运算从上下文看是明确的，我们常把 $ (G, \odot) $ 简记为 $ G $。

7.1 注 设 $  G = (G, \odot)  $ 是一个群。

(a) 由命题 4.11，单位元 e 是唯一的。

(b) 每个 $ g \in G $ 都有唯一的逆元，我们（暂时）把它记为 $ g^b $。特别地 $ e^b = e $。

证明 鉴于 $(G_3)$，只需证明唯一性。设 $h$ 与 $k$ 都是 $g \in G$ 的逆元，即 $g \odot h = h \odot g = e$ 且 $g \odot k = k \odot g = e$。则

 \[ h=h\odot e=h\odot(g\odot k)=(h\odot g)\odot k=e\odot k=k, \] 

这就证明了唯一性。

由于 $ e \odot e = e $，第二个断言是显然的。■

(c) 对每一对 $a,b\in G$，存在唯一的 $x\in G$ 使 $a\odot x=b$，也存在唯一的 $y\in G$ 使 $y\odot a=b$。也就是说，“方程” $a\odot x=b$ 与 $y\odot a=b$ 有唯一解。

证明 设给定 $a, b \in G$。若令 $x := a^{\flat} \odot b$ 与 $y := b \odot a^{\flat}$，则 $a \odot x = b$ 且 $y \odot a = b$。这证明了存在性。为验证第一个方程解的唯一性，设 $x, z \in G$ 满足 $a \odot x = b$ 且 $a \odot z = b$。则

 \[ x=(a^{\flat}\odot a)\odot x=a^{\flat}\odot(a\odot x)=a^{\flat}\odot b=a^{\flat}\odot(a\odot z)=(a^{\flat}\odot a)\odot z=z. \] 

对方程 $ y\odot a=b $ 作类似的论证即完成证明。■

(d) 对每个 $ g \in G $，我们有 $ (g^{\flat})^{\flat} = g $。

证明 由逆元的定义直接得到等式

 \[ g\odot g^{\flat}=g^{\flat}\odot g=e\;, \] 

 \[ \left(g^{\flat}\right)^{\flat}\odot g^{\flat}=g^{\flat}\odot\left(g^{\flat}\right)^{\flat}=e, \] 

它们与 (c) 一起推出 $  g = (g^{\flat})^{\flat}  $。■

(e) 设 $H$ 是带有结合运算 $\circledast$ 与单位元 $e$ 的非空集合。若每个元素 $h \in H$ 都有一个 $\text{左} \text{逆} \overline{h}$ 使 $\overline{h} \circledast h = e$，则 $(H, \circledast)$ 是一个群且 $\overline{h} = h^{\flat}$。类似地，若每个元素 $h \in H$ 都有一个 $\text{右} \text{逆} \underline{h}$ 使 $h \circledast \underline{h} = e$，则 $(H, \circledast)$ 是一个群且 $\underline{h} = h^{\flat}$。

证明 设 $h$ 属于 $H$，$\overline{h}$ 是 $h$ 的左逆，且 $\overline{h}$ 是 $\overline{h}$ 的左逆。则 $\overline{\overline{h}} \circledast \overline{h} = e$，于是

 \[ h=e\circledast h=\left(\overline{\overline{h}}\circledast\overline{h}\right)\circledast h=\overline{{\overline{{h}}}}~\circledast\left(\overline{{h}}\circledast h\right)=\overline{{\overline{{h}}}}~\circledast e=\overline{{\overline{{h}}}}\;, \] 

由此可得 $ h \circledast \overline{h} = e $。因此 $ \overline{h} $ 也是 $ h $ 的右逆，从而是 $ h $ 的逆。类似地可以证明，若每个元素都有右逆，则每个右逆也是左逆。$ \blacksquare $

(f) 对任意的群元素 $ g $ 与 $ h $，$ (g \odot h)^{\flat} = h^{\flat} \odot g^{\flat} $。

证明 由于 $ (h^{\flat}\odot g^{\flat})\odot(g\odot h)=h^{\flat}\odot(g^{\flat}\odot g)\odot h=h^{\flat}\odot e\odot h=h^{\flat}\odot h=e $，该断言由 (e) 推出。■

为了说明一个公理系统是无矛盾的，只需给出某个满足这些公理的数学系统。就群公理 $ (G_{1})-(G_{3}) $ 而言，这相当容易做到，如下面的例子所示。

7.2 例 (a) 设 $G := \{e\}$ 是单元素集。则 $\{G, \odot\}$ 是交换群，即**平凡**群，其（唯一可能的）运算为 $e \odot e = e$。

(b) 设 $G := \{a, b\}$ 是带有由右表所定义运算 $\odot$ 的集合。则 $(G, \odot)$ 是交换群。

(c) 设 $X$ 是非空集合，$S_X$ 是从 $X$ 到自身的所有双射的集合。当 $\circ$ 表示函数的复合时，$S_X := (S_X, \circ)$ 是一个以 $id_X$ 为单位元的群。此外，反函数 $f^{-1}$ 就是 $f \in S_X$ 在该群中的逆。由习题 4.3，$S_X$ 一般不是交换的。当 $X$ 有限时，$S_X$ 的元素称为置换（见 6 节），$S_X$ 称为 $X$ 的置换群。



<table border=1 style='margin: auto; word-wrap: break-word;'><tr><td style='text-align: center; word-wrap: break-word;'>$ \odot $</td><td style='text-align: center; word-wrap: break-word;'>a</td><td style='text-align: center; word-wrap: break-word;'>b</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>a</td><td style='text-align: center; word-wrap: break-word;'>a</td><td style='text-align: center; word-wrap: break-word;'>b</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>b</td><td style='text-align: center; word-wrap: break-word;'>b</td><td style='text-align: center; word-wrap: break-word;'>a</td></tr></table>

(d) 设 $X$ 是非空集合，$(G, \odot)$ 是一个群。以如例 4.12 中那样的诱导运算 $\odot$，$(G^X, \odot)$ 是一个群。$f \in G^X$ 的逆是函数

 \[ f^{\flat}\colon X\to G~,\quad x\mapsto\left(f(x)\right)^{\flat}~. \] 

特别地，当 $ m \geq 2 $ 时，带有运算

 \[ (g_{1},\cdots,g_{m})\odot(h_{1},\cdots,h_{m})=(g_{1}\odot h_{1},\cdots,g_{m}\odot h_{m}) \] 

的 $ G^m $ 是一个群。

(e) 设 $ G_1, \ldots, G_m $ 是群。则带有与 (d) 类似地定义的运算的 $ G_1 \times \cdots \times G_m $ 是一个群，称为 $ G_1, \ldots, G_m $ 的直积。■

##### 子群

设 $ G = (G, \odot) $ 是一个群，$ H $ 是 $ G $ 的非空子集，且对运算 $ \odot $ 封闭，即

 $ (\mathrm{SG}_1) $ $ H \odot H \subseteq H $.

若此外还有

(SG$_2$) 对一切 $ h \in H $ 都有 $ h^{\flat} \in H $，

则 $H := (H, \odot)$ 本身也是一个群，称为 $G$ 的子群。这里我们用同一符号 $\odot$ 表示运算在 $H$ 上的限制。由于 $H$ 非空，存在某个 $h \in H$，于是由 $(SG_1)$ 与 $(SG_2)$，$e = h^b \odot h$ 也在 $H$ 中。

7.3 例 设 $  G = (G, \odot)  $ 是一个群。

(a) 平凡子群 $ \{e\} $ 与 G 本身都是 G 的子群，它们分别是关于包含关系的最小与最大子群（见例 4.4.(b)）。

(b) 若 $ H_\alpha $，$ \alpha \in \mathsf{A} $ 是 $ G $ 的子群，则 $ \bigcap_\alpha H_\alpha $ 也是 $ G $ 的子群。■

##### 陪集

设 $N$ 是 $G$ 的子群，$g \in G$。则 $g \odot N$ 是 $g \in G$ 关于 $N$ 的左陪集，$N \odot g$ 是右陪集。若我们定义

 \[ g\sim h:\Leftrightarrow g\in h\odot N, \] 

则 $\sim$ 是 $G$ 上的等价关系：事实上，由于 $e \in N$，$\sim$ 是自反的。若 $g \in h \odot N$ 且 $h \in k \odot N$，则

 \[ g\in\left(k\odot N\right)\odot N=k\odot\left(N\odot N\right)=k\odot N~, \] 

因为，当然。

 \[ N\odot N=N. \] 

因此 $\sim$ 是传递的。若 $g \in h \odot N$，则存在某个 $n \in N$ 使 $g = h \odot n$。于是由 (SG$_{2}$) 可得 $h = g \odot n^{\flat} \in g \odot N$。因此 $\sim$ 也是对称的，且 (7.1) 定义了 $G$ 上的一个等价关系。对于关于 $\sim$ 的等价类 $[ \cdot ]$，我们有

 \[ [g]=g\odot N~,\qquad g\in G~. \] 

因此，我们把 $ G/\sim $ 记为 G/N，并称 G/N 为 G 模 N 的左陪集集合。

特别重要的是满足下式的子群 N：

 \[ g\odot N=N\odot g~,\qquad g\in G~. \] 

这样的子群称为 $G$ 的**正规**子群。此时称 $g\odot N$ 为 $g$ **模** $N$ 的**陪集**，因为每个左陪集都是右陪集，反之亦然。

对于 G 的正规子群 N，由 (7.2)、(7.4) 以及运算的结合性可得

 \[ (g\odot N)\odot(h\odot N)=g\odot(N\odot h)\odot N=(g\odot h)\odot N~,\qquad g,h,\in G~. \] 

这表明在 $G/N$ 上存在一个由 $\odot$ 诱导的良定义运算，使得

 \[ (G/N)\times(G/N)\to G/N~,\quad(g\odot N,h\odot N)\mapsto(g\odot h)\odot N~. \] 

我们将用同一符号 $ \odot $ 表示这个诱导运算。

7.4 命题 设 G 是一个群，N 是 G 的正规子群。则带有诱导运算的 G/N 是一个群，称为 G 模 N 的商群。

证明 读者容易验证诱导运算是结合的。由于 $(e\odot N)\odot(g\odot N)=(e\odot g)\odot N=g\odot N$，$G/N$ 的单位元是 $N=e\odot N$。又由于

 \[ (g^{\flat}\odot N)\odot(g\odot N)=(g^{\flat}\odot g)\odot N=e\odot N=N \] 

由注 7.1(e) 可得该断言。■

7.5 注 (a) 在 (7.3) 的记号下，[e] = N 是 $G/N$ 的单位元，$[g]^{\flat}$ = $[g^{\flat}]$ 是 [g] ∈ $G/N$ 的逆元。由 (7.3) 与 (7.5) 我们有

 \[ [g]\odot[h]=[g\odot h]~,\qquad g,h\in G~. \] 

换句话说，要用运算 $ \odot $ 合并两个陪集，可以各取每个陪集的一个代表元，用 $ \odot $ 合并这些元素，然后取包含所得元素的陪集。由于 $ G/N $ 上的运算是良定义的，最终结果与代表元的具体选取无关。

(b) 阿贝尔群 $G$ 的任何子群 $N$ 都是正规的，因此 $G/N$ 是一个群。当然，$G/N$ 也是阿贝尔群。

##### 同态

在群之间的函数中，那些保持群结构的函数特别重要。

设 $ G = (G, \odot) $ 与 $ G' = (G', \circledast) $ 是群。函数 $ \varphi: G \to G' $ 称为（群）同态，如果

 \[ \varphi(g\odot h)=\varphi(g)\circledast\varphi(h)~,\qquad g,h\in G~. \] 

从 G 到自身的同态称为（群）自同态。

7.6 注 (a) 设 e 与 $ e' $ 分别是 G 与 $ G' $ 的单位元，并设 $ \varphi: G \to G' $ 是一个同态。则

 \[ \varphi(e)=e^{\prime}\quad\text{且}\quad\left(\varphi(g)\right)^{\flat}=\varphi(g^{\flat}),\qquad g\in G. \] 

证明 由 $e'\circledast\varphi(e)=\varphi(e)=\varphi(e\odot e)=\varphi(e)\circledast\varphi(e)$ 与注 7.1(c) 可得 $\varphi(e)=e^{\prime}$。设 $g\in G$。则 $e^{\prime}=\varphi(e)=\varphi(g^{\flat}\odot g)=\varphi(g^{\flat})\circledast\varphi(g)$，类似地 $e^{\prime}=\varphi(g)\circledast\varphi(g^{\flat})$。于是由注 7.1(b) 得 $\left(\varphi(g)\right)^{\flat}=\varphi(g^{\flat})$。

(b) 设 $ \varphi: G \to G' $ 是一个同态。$ \varphi $ 的核 $ \ker(\varphi) $ 定义为

 \[ \ker(\varphi):=\varphi^{-1}(e^{\prime})=\left\{g\in G\;;\;\varphi(g)=e^{\prime}\right\}\;, \] 

是 G 的正规子群。

证明 对一切 $ g, h \in \ker(\varphi) $ 我们有

 \[ \varphi(g\odot h)=\varphi(g)\circledast\varphi(h)=e^{\prime}\circledast e^{\prime}=e^{\prime}\;. \] 

因此 (SG$_1$) 满足。由于 $ \varphi(g^{\flat}) = (\varphi(g))^{\flat} = (e')^{\flat} = e' $，(SG$_2$) 也成立，所以 $ \ker(\varphi) $ 是 $ G $ 的子群。设 $ h \in g \odot \ker(\varphi) $。则存在某个 $ n \in G $ 使 $ \varphi(n) = e' $ 且 $ h = g \odot n $。对 $ m := g \odot n \odot g^{\flat} $，我们有

 \[ \varphi(m)=\varphi(g)\circledast\varphi(n)\circledast\varphi(g^{\flat})=\varphi(g)\circledast\varphi(g^{\flat})=e^{\prime}~, \] 

从而 $ m \in \ker(\varphi) $。由于 $ m \odot g = g \odot n = h $，这意味着 $ h \in \ker(\varphi) \odot g $。类似地可以证明 $ \ker(\varphi) \odot g \subseteq g \odot \ker(\varphi) $，于是 $ \ker(\varphi) $ 是 $ G $ 的正规子群。$ \blacksquare $

(c) 设 $ \varphi: G \to G' $ 是一个同态，$ N := \ker(\varphi) $。则

 \[ g\odot N=\varphi^{-1}\bigl(\varphi(g)\bigr),\qquad\quad g\in G, \] 

从而

 \[ g\sim h\Longleftrightarrow\varphi(g)=\varphi(h)~,\qquad g,h\in G~, \] 

其中 $ \sim $ 表示等价关系 (7.1)。

证明 对 $ h \in g \odot N $ 我们有

 \[ \varphi(h)\in\varphi(g\odot N)=\varphi(g)\circledast\varphi(N)=\varphi(g)\circledast\{e^{\prime}\}=\left\{\varphi(g)\right\}, \] 

从而 $ h \in \varphi^{-1}(\varphi(g)) $。反之，若 $ h \in \varphi^{-1}(\varphi(g)) $，即 $ \varphi(h) = \varphi(g) $，则

 \[ \varphi(g^{\flat}\odot h)=\varphi(g^{\flat})\circledast\varphi(h)=\left(\varphi(g)\right)^{\flat}\circledast\varphi(g)=e^{\prime}~, \] 

这意味着 $ g^{\flat} \odot h \in N $，从而 $ h \in g \odot N $。■

(d) 一个同态是单射当且仅当它的核是平凡的，即 $ \ker(\varphi) = \{e\} $。

证明 这直接由 (c) 推出。

(e) 同态 $ \varphi: G \to G' $ 的像 $ \mathrm{im}(\varphi) $ 是 $ G' $ 的子群。■

7.7 例 (a) 常值函数 $ G \to G' $，$ g \mapsto e' $ 是同态，即平凡同态。

(b) 恒等函数 $ \mathrm{id}_{G}: G \to G $ 是自同态。

(c) 同态（自同态）的复合是同态（自同态）。

(d) 设 N 是 G 的正规子群。则商函数

 \[ p\colon G\to G/N~,\quad g\mapsto g\odot N \] 

是满同态，称为商同态，且 $ \ker(p) = N $。

证明 由于 $N$ 是 $G$ 的正规子群，商群 $G/N$ 是良定义的。由 (7.1) 与命题 4.1，商函数 $p$ 是良定义的，且注 7.5(a) 表明 $p$ 是同态。由于 $N$ 是 $G/N$ 的单位元，$\ker(p)=N$。

(e) 若 $ \varphi: G \to G' $ 是双射同态，则 $ \varphi^{-1}: G' \to G $ 也是。■

##### 同构

若 $\varphi$ 是双射，则同态 $\varphi: G \to G'$ 称为从 $G$ 到 $G'$ 的（群）同构。在此情形下，我们说群 $G$ 与 $G'$ 同构，并记作 $G \cong G'$。从 $G$ 到自身的同构，即双射自同态，称为 $G$ 的（群）自同构。

7.8 例 (a) 恒等函数 $\mathrm{id}_{G}: G \to G$ 是自同构。若 $\varphi$ 与 $\psi$ 是 $G$ 的自同构，则 $\varphi \circ \psi$ 与 $\varphi^{-1}$ 也是。由此容易推出，群 $G$ 的所有自同构组成的集合以复合为运算构成一个群，称为 $G$ 的自同构群。它是置换群 $S_{G}$ 的子群。

(b) 对每个 $ a \in G $，函数 $ g \mapsto a \odot g \odot a^{\flat} $ 是 $ G $ 的自同构。

(c) 设 $ \varphi: G \to G' $ 是一个同态。则存在唯一的单射同态 $ \widetilde{\varphi}: G/\ker(\varphi) \to G' $，使得图

 \[ \begin{tikzcd}[row sep=2.6em, column sep=3.6em]
G \arrow[r, "\varphi"] \arrow[d, "p"'] & G' \\
G/\ker(\varphi) \arrow[ur, "\widetilde{\varphi}"]
\end{tikzcd} \] 

交换。若 $ \varphi $ 是满射，则 $ \widetilde{\varphi} $ 是同构。

证明 由注 7.6(c) 与例 4.2(c) 可得，存在唯一的单射函数 $ \widetilde{\varphi} $ 使图交换，且 $ \mathrm{im}(\varphi) = \mathrm{im}(\widetilde{\varphi}) $。容易验证 $ \widetilde{\varphi} $ 是同态。

(d) 设 $ (G, \odot) $ 是一个群，$ G' $ 是非空集合，$ \varphi: G \to G' $ 是从 $ G $ 到 $ G' $ 的双射。在 $ G' $ 上定义运算 $ \circledast $ 为

 \[ g^{\prime}\circledast h^{\prime}:=\varphi^{-1}(g^{\prime})\odot\varphi^{-1}(h^{\prime}),\qquad g^{\prime},h^{\prime}\in G^{\prime}. \] 

则 $ (G', \circledast) $ 是一个群，且 $ \varphi $ 是从 $ G $ 到 $ G' $ 的同构。运算 $ \circledast $ 称为 $ G' $ 上由 $ \varphi $ 从 $ \circledast $ 诱导的运算。

(e) 若 $ G = \{e\} $ 与 $ G' = \{e'\} $ 是平凡群，则 G 与 $ G' $ 同构。

(f) 设 $G$ 是例 7.2(b) 中的群，$G'$ 是把表中的符号 $a$ 与 $b$ 互换后所得的群。则 $G$ 与 $G'$ 同构。更确切地说，$G'$ 上的运算是由函数 $\varphi: \{a, b\} \to \{a, b\}$（由 $\varphi(a) := b$ 与 $\varphi(b) := a$ 定义）从运算 $G$ 诱导的。

(g) 设 X 与 Y 是非空集合，$ \varphi: X \to Y $ 是双射函数。则

 \[ \widehat{\varphi}\colon\mathsf{S}_{X}\to\mathsf{S}_{Y}~,\quad f\mapsto\varphi\circ f\circ\varphi^{-1} \] 

是从置换群 $S_X$ 到置换群 $S_Y$ 的同构。■

若 $\varphi$ 是从群 $(G, \odot)$ 到群 $(G', \circ)$ 的同构，那么即使这两个群在元素的记号上可能不同，它们也具有相同的群结构。例如，若 $g$ 与 $h$ 是 $G$ 的两个元素，那么要计算 $g \odot h$，也同样可以在 $G'$ 中计算 $\varphi(g) \otimes \varphi(h)$，然后 $g \odot h$ 就是 $\varphi(g) \otimes \varphi(h)$ 在逆同构 $\varphi^{-1}$ 下的像。实际上，与 $(G', \circ)$ 打交道可能比与 $(G, \odot)$ 容易得多。（特别参见 9 节与 10 节。）

从群论的观点看，同构的群本质上是相同的。事实上，同构 $ \cong $ 是任何群集 $ \mathcal{G} $ 上的等价关系，这容易验证。因此可以用 $ \cong $ 把 $ \mathcal{G} $ 划分为等价类，称为同构类。于是只需研究同构类的集合 $ \mathcal{G}/\cong $，而不必研究 $ \mathcal{G} $ 本身。换句话说，人们把同构的群“等同”（视为相同）。正是在这个意义上，人们谈论平凡群，因为由例 7.8(e)，任何两个平凡群都同构。类似地，阶为\footnote{有限群的阶是其元素的个数。} 2 的群，即恰有两个元素的群，在同构意义下只有一个（见例 7.8(f)）。若 $ n \in \mathbb{N}^\times $，则由例 7.8(g)，只需考虑一个满足 $ \text{Num}(X) = n $ 的置换群 $ S_X $，例如阶为 $ n! $ 的置换群（或对称群），

 \[ \mathsf{S}_{n}:=\mathsf{S}_{\{1,\ldots,n\}}, \] 

即集合 $ \{1,\ldots,n\} $ 上的置换群。（见命题 6.3。）

约定 在下文中，我们通常把群 $G$ 中的运算记为 $\cdot$，并且对 $x, y \in G$，不写 $x \cdot y$ 而简写为 $xy$。采用这种“乘法”记号时，该运算称为（群）乘法，而 $x^{\flat}$ 写作 $x^{-1}$（“$x$ 的逆”）。若群是阿贝尔群，通常使用“加法记号”，即群运算写作 + 并称为加法，$x$ 的逆 $x^{\flat}$ 写作 $-x$（“负 $x$”）。

再次提醒读者，记号并不重要，重要的是公理。同一符号在不同的

情境中可以具有完全不同的含义，即使适用的公理相同。使用诸如 + 或 $ \cdot $ 这类熟悉的符号，不应使读者以为所指的是熟悉的情境。必须清楚哪些公理在起作用，并只使用由它们推出的规则。

同一个符号可以有各种依赖情境的含义，这在初学者看来也许不合逻辑、令人困惑。尽管如此，它使得复杂思想能够以优雅而简洁的方式得到表述，并避免用大量不同符号使读者不堪重负。

##### 习题

1 设 $N$ 是有限群 $G$ 的子群。证明 $\text{Num}(G) = \text{Num}(N) \cdot \text{Num}(G/N)$，从而特别地，子群的阶整除群的阶。

2 验证例 7.2(c) 与 (d) 中的断言。

3 证明例 7.3(b) 中的断言，并证明一组正规子群的交也是正规的。

4 证明注 7.6(e)。$ \operatorname{im}(\varphi) $ 是 $ G' $ 的正规子群吗？

5 设 $ \varphi: G \to G' $ 是一个同态，$ N' $ 是 $ G' $ 的正规子群。证明 $ \varphi^{-1}(N') $ 是 G 的正规子群。

6 设 G 是一个群，X 是非空集合。则称 G（从左）作用在 X 上，若存在一个函数

 \[ G\times X\to X~,\quad(g,x)\mapsto g\cdot x \] 

使得下列条件成立：

 $ (GA_1)\;e \cdot x = x $ 对一切 $ x \in X $ 成立。

 $ (GA_2)\;g\cdot(h\cdot x)=(gh)\cdot x $ 对一切 $ g,h\in G $ 与 $ x\in X $ 成立

(a) 对每个 $g \in G$，证明 $x \mapsto g \cdot x$ 是 $X$ 上的双射，其逆为 $x \mapsto g^{-1} \cdot x$。

(b) 对 $ x \in X $，$ G \cdot x $ 称为 $ x $ 的**轨道**（在 $ G $ 的作用下）。证明关系“$ y $ 在 $ x $ 的轨道中”是 $ X $ 上的等价关系。

(c) 证明若 $H$ 是 $G$ 的子群，则 $(h,g) \mapsto h \cdot g$ 与 $(h,g) \mapsto hgh^{-1}$ 定义了 $H$ 在 $G$ 上的作用。

(d) 证明

 \[ {\sf S}_{m}\times{\mathbb{N}}^{m}\to{\mathbb{N}}^{m},\quad(\sigma,\alpha)\mapsto\sigma\cdot\alpha:=(\alpha_{\sigma(1)},\ldots,\alpha_{\sigma(m)}) \] 

定义了 $ S_{m} $ 在 $ N^{m} $ 上的作用。

7 设 $ G = (G, \odot) $ 是阶为 $ m $、单位元为 $ e $ 的有限群。证明对每个 $ g \in G $，存在最小的自然数 $ k > 0 $ 使得

 \[ g^{k}:=\bigodot_{j=1}^{k}g=e. \] 

证明对一切 $ g \in G $ 都有 $ g^m = e $。（提示：习题 1。）

8 下面的表在集合 $ G = \{e, a, b, c\} $ 上定义了三个运算



<table border=1 style='margin: auto; word-wrap: break-word;'><tr><td style='text-align: center; word-wrap: break-word;'>$ \odot $</td><td style='text-align: center; word-wrap: break-word;'>e</td><td style='text-align: center; word-wrap: break-word;'>a</td><td style='text-align: center; word-wrap: break-word;'>b</td><td style='text-align: center; word-wrap: break-word;'>c</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>e</td><td style='text-align: center; word-wrap: break-word;'>e</td><td style='text-align: center; word-wrap: break-word;'>a</td><td style='text-align: center; word-wrap: break-word;'>b</td><td style='text-align: center; word-wrap: break-word;'>c</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>a</td><td style='text-align: center; word-wrap: break-word;'>a</td><td style='text-align: center; word-wrap: break-word;'>e</td><td style='text-align: center; word-wrap: break-word;'>c</td><td style='text-align: center; word-wrap: break-word;'>b</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>b</td><td style='text-align: center; word-wrap: break-word;'>b</td><td style='text-align: center; word-wrap: break-word;'>c</td><td style='text-align: center; word-wrap: break-word;'>e</td><td style='text-align: center; word-wrap: break-word;'>a</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>c</td><td style='text-align: center; word-wrap: break-word;'>c</td><td style='text-align: center; word-wrap: break-word;'>b</td><td style='text-align: center; word-wrap: break-word;'>a</td><td style='text-align: center; word-wrap: break-word;'>e</td></tr></table>



<table border=1 style='margin: auto; word-wrap: break-word;'><tr><td style='text-align: center; word-wrap: break-word;'>$ \circledast $</td><td style='text-align: center; word-wrap: break-word;'>e</td><td style='text-align: center; word-wrap: break-word;'>a</td><td style='text-align: center; word-wrap: break-word;'>b</td><td style='text-align: center; word-wrap: break-word;'>c</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>e</td><td style='text-align: center; word-wrap: break-word;'>e</td><td style='text-align: center; word-wrap: break-word;'>a</td><td style='text-align: center; word-wrap: break-word;'>b</td><td style='text-align: center; word-wrap: break-word;'>c</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>a</td><td style='text-align: center; word-wrap: break-word;'>a</td><td style='text-align: center; word-wrap: break-word;'>e</td><td style='text-align: center; word-wrap: break-word;'>c</td><td style='text-align: center; word-wrap: break-word;'>b</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>b</td><td style='text-align: center; word-wrap: break-word;'>b</td><td style='text-align: center; word-wrap: break-word;'>c</td><td style='text-align: center; word-wrap: break-word;'>a</td><td style='text-align: center; word-wrap: break-word;'>e</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>c</td><td style='text-align: center; word-wrap: break-word;'>c</td><td style='text-align: center; word-wrap: break-word;'>b</td><td style='text-align: center; word-wrap: break-word;'>e</td><td style='text-align: center; word-wrap: break-word;'>a</td></tr></table>



<table border=1 style='margin: auto; word-wrap: break-word;'><tr><td style='text-align: center; word-wrap: break-word;'>$ \oplus $</td><td style='text-align: center; word-wrap: break-word;'>e</td><td style='text-align: center; word-wrap: break-word;'>a</td><td style='text-align: center; word-wrap: break-word;'>b</td><td style='text-align: center; word-wrap: break-word;'>c</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>e</td><td style='text-align: center; word-wrap: break-word;'>e</td><td style='text-align: center; word-wrap: break-word;'>a</td><td style='text-align: center; word-wrap: break-word;'>b</td><td style='text-align: center; word-wrap: break-word;'>c</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>a</td><td style='text-align: center; word-wrap: break-word;'>a</td><td style='text-align: center; word-wrap: break-word;'>b</td><td style='text-align: center; word-wrap: break-word;'>c</td><td style='text-align: center; word-wrap: break-word;'>e</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>b</td><td style='text-align: center; word-wrap: break-word;'>b</td><td style='text-align: center; word-wrap: break-word;'>c</td><td style='text-align: center; word-wrap: break-word;'>e</td><td style='text-align: center; word-wrap: break-word;'>a</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>c</td><td style='text-align: center; word-wrap: break-word;'>c</td><td style='text-align: center; word-wrap: break-word;'>e</td><td style='text-align: center; word-wrap: break-word;'>a</td><td style='text-align: center; word-wrap: break-word;'>b</td></tr></table>

(a) 验证 $ (G, \circledast) $ 与 $ (G, \oplus) $ 是同构的群。

(b) 证明群 $ (G,\odot) $ 与 $ (G,\circledast) $ 不同构。

(c) 确定 G 上所有其他可能的群结构。把这些群按同构类分类。

9 证明 $ S_{3} $ 不是阿贝尔群。

10 设 G 与 H 是群，并设

 \[ p:G\times H\to G~,\quad(g,h)\mapsto g \] 

是到第一个因子的投影。证明 $p$ 是满同态。

令 $H' := \ker(p)$。证明 $(G \times H)/H'$ 与 $G$ 是同构的群。

11 设 $G$ 是带有运算 $\odot$ 与单位元的集合。对 $g \in G$，定义函数 $Lg: G \to G$，$h \mapsto g \odot h$，称为由 $g$ 给出的左平移。假设

 \[ L:=\left\{Lg\;;\;g\in G\right\}\subseteq{\sf S}_{G}~, \] 

即每个 Lg 都是双射。证明

 \[ (G,\odot)\text{ 是群 }\Longleftrightarrow L\text{ 是 }\mathsf{S}_{G}\text{ 的子群 } \] 
