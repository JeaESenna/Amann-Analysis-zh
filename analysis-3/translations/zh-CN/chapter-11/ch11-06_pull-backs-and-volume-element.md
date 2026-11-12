2.8 注 因为 $ V $ 是有限维的，所以可以用**典范同构**

\[ \kappa : V \to V^{\ast\ast} := (V^{*})^{*} \]

把 $ V $ 与 $ V^{\ast\ast} $ 等同起来，该同构由

\[ \langle \kappa(v), v^{*}\rangle_{V^{*}} := \langle v^{*}, v\rangle \qquad \text{对 } v \in V , \quad v^{*} \in V^{*} \]

定义。因此，格拉斯曼代数

\[ \bigwedge V := \bigoplus_{r \ge 0} \bigwedge^{r} V \]

在 $ V $ 上也是良定义的。

证明 显然 $ \kappa : V \to V^{\ast\ast} $ 是线性的。设 $ \{e_{1},\ldots,e_{m}\} $ 是 $ V $ 的基，$ \{\varepsilon_{1},\ldots,\varepsilon_{m}\} $ 是 $ V^{*} $ 的相应对偶基。对 $ v \in \ker(\kappa) $，有

\[ \langle \varepsilon_{j}, v\rangle = \langle \kappa(v), \varepsilon_{j}\rangle_{V^{*}} = 0 \qquad \text{对 } j = 1,\ldots,m . \]

于是 $ v = \sum_{j=1}^{m}\langle \varepsilon_{j}, v\rangle e_{j} $ 蕴涵 $ v = 0 $，故 $ \kappa $ 是单射。又 $ \dim(V^{\ast\ast}) = m $（见定理 VII.2.14）蕴涵 $ \kappa $ 是同构。 ■

##### 拉回

对 $ A \in \mathcal{L}(V,W) $ 与 $ \alpha \in \bigwedge^{r}W^{*} $，当 $ r \ge 1 $ 时定义 $ A^{*}\alpha $ 为

\[ A^{*}\alpha(v_{1},\ldots,v_{r}) := \alpha(Av_{1},\ldots,Av_{r}) \qquad \text{对 } v_{1},\ldots,v_{r} \in V , \]

而当 $ r = 0 $ 时，对 $ \alpha \in \bigwedge^{0}W^{*} = \mathbb{R} $ 定义

\[ A^{*}\alpha := \alpha . \]

则称 $ A^{*}\alpha $ 为 $ \alpha $ 沿 $ A $ 在 $ V $ 上的**拉回**。

2.9 注 (a) 对 $ \alpha \in \bigwedge^{r}W^{*} $，拉回 $ A^{*}\alpha $ 属于 $ \bigwedge^{r}V^{*} $，且映射 $ A^{*} $ 是线性的：

\[ A^{*} \in \mathcal{L}(\bigwedge W^{*}, \bigwedge V^{*}) \qquad \text{且 } A(\bigwedge^{r}W^{*}) \subset \bigwedge^{r}V^{*} , \quad r \in \mathbb{N} . \]

我们把 $ A^{*} $ 称为由 $ A $ 给出的**拉回变换**（或通常就称为**拉回**）。

当 $ r = 1 $ 时，$ A^{*} $ 是对偶于 $ A $ 的映射（在 §VIII.3 中记为 $ A^{\top} $）。还要注意，$ A $ 把向量空间 $ V $ 映到 $ W $，而 $ A^{*} $ 把 $ \bigwedge W^{*} $ 映到 $ \bigwedge V^{*} $，因而是“反方向”的：

\[ V \xrightarrow{A} W \]

\[ \bigwedge V^{*} \xleftarrow{A^{*}} \bigwedge W^{*} \]

(b) 若 $ X $ 是另一个有限维实向量空间，且 $ B \in \mathcal{L}(W,X) $，则

\[ (BA)^{*} = A^{*}B^{*} \qquad \text{且 } (\mathrm{id}_{V})^{*} = \mathrm{id}_{\bigwedge V^{*}} . \]

换言之，映射 $ A \mapsto A^{*} $ 是**反变**的。

(c) 我们有

\[ A^{*}(\alpha \wedge \beta) = A^{*}\alpha \wedge A^{*}\beta \qquad \text{对 } \alpha,\beta \in \bigwedge W^{*} . \]

因此 $ A^{*} $ 是从 $ \bigwedge W^{*} $ 到 $ \bigwedge V^{*} $ 的代数同态。

证明 这些结论由拉回与外积的定义显然推出。 ■

设 $ m := \dim(V) $，$ W := V $，并设 $ \alpha \in \bigwedge^{m}V^{*} $。根据命题 2.3(ii)，$ \bigwedge^{m}V^{*} $ 是一维的，因此 $ A^{*}\alpha $ 必与 $ \alpha $ 成比例；下面我们来确定这个倍数。

2.10 命题 对 $ m := \dim(V) $ 与 $ A \in \mathcal{L}(V) $，

\[ A^{*}\alpha = \det(A)\alpha \qquad \text{对 } \alpha \in \bigwedge^{m}V^{*} . \]

证明 设 $ \{e_{1},\ldots,e_{m}\} $ 是 $ V $ 的基，$ [a_{k}^{j}] \in \mathbb{R}^{m\times m} $ 是 $ A $ 在这组基下的矩阵（见 §VII.1）。则

\[ Ae_{k} = \sum_{j=1}^{m} a_{k}^{j}e_{j} \qquad \text{对 } 1 \le k \le m . \]

由此以及 $ \alpha \in \bigwedge^{m}V^{*} $ 的性质可得

\[ \begin{aligned} A^{*}\alpha(e_{1},\ldots,e_{m}) &= \alpha(Ae_{1},\ldots,Ae_{m}) \\ &= \sum_{j_{1}=1}^{m}\cdots\sum_{j_{m}=1}^{m} a_{1}^{j_{1}}\cdots a_{m}^{j_{m}}\alpha(e_{j_{1}},\ldots,e_{j_{m}}) \\ &= \sum_{\sigma \in S_{m}} \operatorname{sign}(\sigma)\, a_{1}^{\sigma(1)}\cdots a_{m}^{\sigma(m)}\alpha(e_{1},\ldots,e_{m}) \\ &= \det(A)\,\alpha(e_{1},\ldots,e_{m}) , \end{aligned} \]

其中最后一步用了注 VII.1.19 的符号公式以及 $ \det(A^{\top}) = \det(A) $ 这一事实。现由 $ \alpha $ 的多重线性性即得结论。 ■

##### 体积元

现在设 $ \mathcal{O}r $ 是 $ V $ 的一个定向，即 $ V := (V, \mathcal{O}r) $ 是有向向量空间。为简便起见，我们把 $ V $ 的正向有序基（因而它是 $ \mathcal{O}r $ 的元素）称为**正基**（见注 VIII.2.4）。又令 $ m := \dim(V) $。

我们把每个 $ \alpha \in \bigwedge^{m}V^{*}\setminus\{0\} $ 称为 $ V $ 上的**体积形式**。两个体积形式 $ \alpha $ 与 $ \beta $ 称为**等价**的，若存在 $ \lambda > 0 $ 使得 $ \alpha = \lambda\beta $。容易验证，这个定义在所有体积形式构成的集合上诱导出一个等价关系 $ \sim $。因为 $ \dim(\bigwedge^{m}V^{*}) = 1 $，所以恰有两个等价类。

2.11 注 (a) 设 $ (e_{1},\ldots,e_{m}) $ 是 $ V $ 的正基，$ (\varepsilon^{1},\ldots,\varepsilon^{m}) $ 是相应对偶基。若 $ (\widetilde{e}_{1},\ldots,\widetilde{e}_{m}) $ 是 $ V $ 的基，且 $ \alpha \in \bigwedge^{m}V^{*}\setminus\{0\} $ 满足 $ \alpha \sim \varepsilon^{1}\wedge\cdots\wedge\varepsilon^{m} $，则 $ (\widetilde{e}_{1},\ldots,\widetilde{e}_{m}) $ 为正，当且仅当 $ \alpha(\widetilde{e}_{1},\ldots,\widetilde{e}_{m}) > 0 $。这意味着 $ \bigwedge^{m}V^{*}\setminus\{0\} $ 的两个等价类可以与 $ V $ 的两个定向等同起来。换言之，体积形式 $ \alpha $ 通过下述要求**确定**了 $ V $ 的定向 $ \mathcal{O}r $：

\[ \alpha(e_{1},\ldots,e_{m}) > 0 \iff (e_{1},\ldots,e_{m}) \in \mathcal{O}r . \]

证明 设 $ B \in \mathcal{L}(V) $ 是从 $ (e_{1},\ldots,e_{m}) $ 到 $ (\widetilde{e}_{1},\ldots,\widetilde{e}_{m}) $ 的基变换，即 $ \widetilde{e}_{j} = Be_{j} $，$ 1 \le j \le m $。则由命题 2.10 得

\[ \alpha(\widetilde{e}_{1},\ldots,\widetilde{e}_{m}) = \det(B)\alpha(e_{1},\ldots,e_{m}) = \det(B)\lambda \]

其中 $ \alpha = \lambda\varepsilon^{1}\wedge\cdots\wedge\varepsilon^{m} $ 且 $ \lambda > 0 $。 ■

(b) 若 $ \det(A) > 0 $（或 $ \det(A) < 0 $），则称 $ V $ 的自同构 $ A $ 是**保持定向**（或**反转定向**）的。令

\[ \mathcal{L}\mathrm{aut}^{+}(V) := GL^{+}(V) := \{\, A \in \mathcal{L}\mathrm{aut}(V) ;\ \det(A) > 0 \,\} . \]

(i) 对 $ A \in \mathcal{L}\mathrm{aut}(V) $，下列陈述等价：

(α) $ A \in \mathcal{L}\mathrm{aut}^{+}(V) $。

(β) 对每个基 $ (b_{1},\ldots,b_{m}) $，基 $ (b_{1},\ldots,b_{m}) $ 与 $ (Ab_{1},\ldots,Ab_{m}) $ 具有相同的定向。

(γ) 对每个 $ \alpha \in \bigwedge^{m}V^{*}\setminus\{0\} $，体积形式 $ \alpha $ 与 $ A^{*}\alpha $ 确定了 $ V $ 的相同定向。

(ii) $ \mathcal{L}\mathrm{aut}^{+}(V) $ 是 $ \mathcal{L}\mathrm{aut}(V) =: GL(V) $ 的子群。

证明 (i) 这由 $ A^{*}\alpha = \det(A)\alpha $ 以及定向的定义推出。

(ii) 映射

\[ \mathcal{L}\mathrm{aut}(V) \to (\mathbb{R}^{\times}, \cdot) , \qquad A \mapsto \det(A) \]

是同态。根据习题 I.7.5，$ \mathcal{L}\mathrm{aut}^{+}(V) $ 作为 $ (\mathbb{R}^{\times}, \cdot) $ 的子群 $ ((0,\infty), \cdot) $ 的原像，是 $ \mathcal{L}\mathrm{aut}(V) $ 的子群。 ■

现在设 $ (V, (\cdot\mid\cdot), \mathcal{O}r) $ 是有向内积空间。又设 $ (e_{1},\ldots,e_{m}) $ 是正标准正交基（ONB），$ (\varepsilon^{1},\ldots,\varepsilon^{m}) $ 是 $ V^{*} $ 的相应对偶基。则

\[ \omega := \omega_{V} := \varepsilon^{1}\wedge\cdots\wedge\varepsilon^{m} \]

称为 $ V $ 的**体积元**。

2.12 注 (a) 对 $ V $ 的每个正 ONB $ (\widetilde{e}_{1},\ldots,\widetilde{e}_{m}) $，有

\[ \omega(\widetilde{e}_{1},\ldots,\widetilde{e}_{m}) = 1 . \]

证明 设 $ B $ 是由 $ \widetilde{e}_{j} = Be_{j} $（$ 1 \le j \le m $）给出的基变换。则 $ B $ 属于 $ \mathcal{L}\mathrm{aut}^{+}(V) \cap O(m) $，从而 $ \det(B) = 1 $（见习题 VII.9.2）。因此由命题 2.10 得

\[ \omega(\widetilde{e}_{1},\ldots,\widetilde{e}_{m}) = B^{*}\omega(e_{1},\ldots,e_{m}) = \det(B)\varepsilon^{1}\wedge\cdots\wedge\varepsilon^{m}(e_{1},\ldots,e_{m}) = 1 , \]

这就证明了结论。 ■

(b) $ V $ 的体积元是唯一一个对任意（从而每个）正 ONB 都取值 $ 1 $ 的体积形式。

证明 这由 (a) 推出。 ■

(c) 对 $ v_{1},\ldots,v_{m} \in \mathbb{R}^{m} $，令

\[ P(v_{1},\ldots,v_{m}) := \left\{ \sum_{j=1}^{m} t^{j}v_{j} ;\ 0 \le t^{j} \le 1 \right\} , \]

即 $ P(v_{1},\ldots,v_{m}) $ 是由 $ v_{1},\ldots,v_{m} $ 张成的平行六面体。则

\[ |\omega_{\mathbb{R}^{m}}(v_{1},\ldots,v_{m})| = \mathrm{vol}_{m}(P(v_{1},\ldots,v_{m})) := \lambda_{m}(P(v_{1},\ldots,v_{m})) . \]

换言之，体积元给每个 $ m $ 元向量组赋予它们张成的平行四边形的有向体积\footnote{有向体积为正，当且仅当 $ (v_{1},\ldots,v_{m}) $ 为正；它为负，当且仅当 $ (v_{1},\ldots,v_{m}) $ 属于 $ -\mathcal{O}r $。}。

证明 我们由 $ v_{j} = Be_{j} $（$ 1 \le j \le m $）定义 $ B \in \mathcal{L}(\mathbb{R}^{m}) $。则

\[ P(v_{1},\ldots,v_{m}) = B([0,1]^{m}) . \]

于是由命题 2.10 与 (a) 得

\[ \omega_{\mathbb{R}^{m}}(v_{1},\ldots,v_{m}) = B^{*}\omega_{\mathbb{R}^{m}}(e_{1},\ldots,e_{m}) = \det(B) . \]

由定理 IX.5.25 知 $ \lambda_{m}(B([0,1]^{m})) = |\det(B)| $，这正是所要的。 ■

在下面的命题中，我们用 $ V $ 的任意正基来表示体积元 $ \omega $。

2.13 命题 设 $ (b_{1},\ldots,b_{m}) $ 是 $ V $ 的正基，$ (\beta^{1},\ldots,\beta^{m}) $ 是它的对偶基。则

\[ \omega = \sqrt{G}\,\beta^{1}\wedge\cdots\wedge\beta^{m} , \]

其中 $ G := \det[(b_{j}\mid b_{k})] $ 是**格拉姆行列式**。特别地，

\[ \omega(b_{1},\ldots,b_{m}) = \sqrt{G} . \]

证明 设 $ (e_{1},\ldots,e_{m}) $ 是 $ V $ 的正 ONB，并由 $ b_{j} = Be_{j} $（$ 1 \le j \le m $）定义 $ B \in \mathcal{L}(V) $。根据注 2.11(b) 的 (i)，有 $ \det(B) > 0 $。由注 2.12(a) 与 (2.3) 得

\[ \begin{aligned} \omega(e_{1},\ldots,e_{m}) = 1 &= \beta^{1}\wedge\cdots\wedge\beta^{m}(b_{1},\ldots,b_{m}) \\ &= B^{*}(\beta^{1}\wedge\cdots\wedge\beta^{m})(e_{1},\ldots,e_{m}) . \end{aligned} \]

因此

\[ \omega = \det(B)\beta^{1}\wedge\cdots\wedge\beta^{m} , \]

因为 $ m $ 形式由它在 $ V $ 的一组基上的值确定，也依据命题 2.10。又

\[ (b_{j}\mid b_{k}) = (Be_{j}\mid Be_{k}) = (B^{*}Be_{j}\mid e_{k}) \qquad \text{对 } 1 \le j,k \le m \tag{2.11} \]

（见习题 VII.1.5）。因为 $ (e_{1},\ldots,e_{m}) $ 是 ONB，任意 $ v \in V $ 有表示 $ v = \sum_{k=1}^{m}(v\mid e_{k})e_{k} $。由此可得

\[ Te_{j} = \sum_{k=1}^{m}(Te_{j}\mid e_{k})e_{k} \qquad \text{对 } 1 \le j \le m \text{ 与 } T \in \mathcal{L}(V) . \]

因此 (2.11) 表明 $ [(b_{j}\mid b_{k})] \in \mathbb{R}^{m\times m} $ 是 $ B^{*}B $ 在基 $ (e_{1},\ldots,e_{m}) $ 下的矩阵。所以

\[ G = \det[(b_{j}\mid b_{k})] = \det(B^{*}B) = (\det(B))^{2} \]

因为 $ \det(B^{*}) = \det(B) $。结论得证。 ■

##### 里斯同构

设 $ (V, (\cdot\mid\cdot)) $ 是内积空间，$ m := \dim(V) $。把里斯同构 (2.2) 记为

\[ \Theta := \Theta_{V} : V \to V^{*} , \qquad v \mapsto (\cdot\mid v) , \]

即

\[ \langle \Theta v, w\rangle = (w\mid v) \qquad \text{对 } v,w \in V . \tag{2.12} \]

则

\[ (\alpha\mid\beta)_{*} := (\Theta^{-1}\alpha\mid\Theta^{-1}\beta) \qquad \text{对 } \alpha,\beta \in V^{*} \tag{2.13} \]

定义了 $ V^{*} $ 上的内积，即对偶于 $ (\cdot\mid\cdot) $ 的**标量积**。以下我们总为 $ V^{*} $ 配备这个内积，于是 $ V^{*} := (V^{*}, (\cdot\mid\cdot)_{*}) $ 是内积空间。

2.14 注 设 $ \{e_{1},\ldots,e_{m}\} $ 是 $ V $ 中的基，$ \{\varepsilon^{1},\ldots,\varepsilon^{m}\} $ 是它在 $ V^{*} $ 中的对偶基。

(a) 令

\[ g_{jk} := (e_{j}\mid e_{k}) \qquad \text{对 } 1 \le j,k \le m , \quad \text{其中 } [g^{jk}] := [g_{jk}]^{-1} \in \mathbb{R}^{m\times m} . \]

则

\[ \Theta e_{j} = \sum_{k=1}^{m} g_{jk}\varepsilon^{k} \quad \text{与} \quad \Theta^{-1}\varepsilon^{j} = \sum_{k=1}^{m} g^{jk}e_{k} \qquad \text{对 } 1 \le j \le m . \]

证明 由基展开 $ \Theta e_{j} = \sum_{k=1}^{m} a_{jk}\varepsilon^{k} $（$ 1 \le j \le m $）以及 (2.12) 得

\[ (e_{j}\mid v) = \langle \Theta e_{j}, v\rangle = \sum_{k=1}^{m} a_{jk}\langle \varepsilon^{k}, v\rangle \qquad \text{对 } v \in V \text{ 与 } 1 \le j \le m . \]

用 $ e_{1},\ldots,e_{m} $ 逐个替换 $ v $，得 $ a_{jk} = (e_{j}\mid e_{k}) $，这证明了第一个结论。$ \Theta^{-1}\varepsilon^{j} $ 的表示是显然的。 ■

(b) 对 $ v = \sum_{j=1}^{m}\xi^{j}e_{j} \in V $ 与 $ w = \sum_{j=1}^{m}\eta^{j}e_{j} \in V $，有

\[ (v\mid w) = \sum_{j,k=1}^{m} g_{jk}\xi^{j}\eta^{k} . \]

对 $ \alpha = \sum_{j=1}^{m}a_{j}\varepsilon^{j} \in V^{*} $ 与 $ \beta = \sum_{j=1}^{m}b_{j}\varepsilon^{j} \in V^{*} $，有关系

\[ (\alpha\mid\beta)_{*} = \sum_{j,k=1}^{m} g^{jk}a_{j}b_{k} . \]

证明 第一个结论是显然的。由 (a) 与 (2.13) 可推出

\[ (\varepsilon^{i}\mid\varepsilon^{\ell})_{*} = (\Theta^{-1}\varepsilon^{i}\mid\Theta^{-1}\varepsilon^{\ell}) = \sum_{j,k=1}^{m} g^{ij}g^{\ell k}(e_{j}\mid e_{k}) = \sum_{j,k=1}^{m} g^{ij}g^{\ell k}g_{jk} = g^{i\ell} \]

对 $ 1 \le i,\ell \le m $。现由 $ (\cdot\mid\cdot)_{*} $ 的双线性性即得第二个结论。 ■

(c) 若 $ \{e_{1},\ldots,e_{m}\} $ 是 ONB，则 $ \Theta e_{j} = \varepsilon^{j} $（$ 1 \le j \le m $），且 $ \{\varepsilon^{1},\ldots,\varepsilon^{m}\} $ 同样是 ONB。

(d) 你也许已经注意到，我们用上标来标记基表示中向量的系数，而用下标表示 1 形式的展开系数。也就是说，

\[ v = \sum_{j=1}^{m}\xi^{j}e_{j} \in V \quad \text{与} \quad \alpha = \sum_{j=1}^{m} a_{j}\varepsilon^{j} \in V^{*} . \]
