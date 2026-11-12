由 (a) 及 $ [g_{jk}] $ 的对称性可得

\[ \Theta v = \sum_{j=1}^{m} b_j\varepsilon^{j} \in V^{*} \quad \text{且} \quad \Theta^{-1}\alpha = \sum_{j=1}^{m} \eta^{j}e_j \in V \]

其中

\[ b_j := \sum_{k=1}^{m} g_{jk}\xi^{k} \quad \text{且} \quad \eta^{j} := \sum_{k=1}^{m} g^{jk}a_k \quad \text{对 } 1 \le j \le m. \]

$ \Theta $ [或 $ \Theta^{-1} $] 的作用在形式上实现指标的**下降** [或上升]。据此，我们可以借用音乐记号

\[ g^{\flat} := \Theta \quad \text{且} \quad g^{\sharp} := \Theta^{-1}, \]

或简写为对 $ v \in V $ 的 $ v^{\flat} := \Theta v $，以及对 $ \alpha \in V^{*} $ 的 $ \alpha^{\sharp} := \Theta^{-1}\alpha $。■

##### 霍奇星算子\footnote{本节与下一节初读时可以跳过。}

设 $ (V, (\cdot \mid \cdot), \mathcal{O}r) $ 是定向内积空间，$ m := \dim(V) $，且 $ \omega $ 是 $ V $ 的体积元。又设 $ \{e_1,\ldots,e_m\} $ 是 $ V $ 的标准正交基，$ \{\varepsilon^1,\ldots,\varepsilon^m\} $ 是其对偶基。

现在我们如下在 $ \bigwedge^{r}V^{*} $ 上定义一个标量积 $ (\cdot \mid \cdot)_r $：

对 $ r = 0 $，令

\[ (\alpha \mid \beta)_0 := \alpha\beta \quad \text{对 } \alpha, \beta \in \bigwedge^{0}V^{*} = \mathbb{R}. \tag{2.14} \]

对 $ 1 \le r \le m $，令

\[ \alpha = \sum_{(j)\in\mathbb{J}_r} a_{(j)}\varepsilon^{(j)} \quad \text{且} \quad \beta = \sum_{(j)\in\mathbb{J}_r} b_{(j)}\varepsilon^{(j)}, \]

根据命题 2.3，它们是 $ \alpha, \beta \in \bigwedge^{r}V^{*} $ 的合法基表示。于是置

\[ (\alpha \mid \beta)_r := \sum_{(j)\in\mathbb{J}_r} a_{(j)}b_{(j)}. \tag{2.15} \]

显然 $ (\cdot \mid \cdot)_r $ 是 $ \bigwedge^{r}V^{*} $（$ 0 \le r \le m $）上的标量积。由注 2.14(b) 与 (c) 有 $ (\cdot \mid \cdot)_1 = (\cdot \mid \cdot)_{\ast} $。

2.15 注 (a) 基 $ \{\varepsilon^{(j)}; (j) \in \mathbb{J}_r\} $ 是 $ (\bigwedge^{r}V^{*}, (\cdot \mid \cdot)_r) $ 的标准正交基，$ 1 \le r \le m $。

(b) 对 $ \alpha^1,\ldots,\alpha^r, \beta^1,\ldots,\beta^r \in V^{*} $，有

\[ (\alpha^1 \wedge \cdots \wedge \alpha^r \mid \beta^1 \wedge \cdots \wedge \beta^r)_r = \det[(\alpha^{j} \mid \beta^{k})_{\ast}]. \]

证明 设

\[ \alpha^{j} = \sum_{i=1}^{m} a^{j}_{i}\varepsilon^{i} \quad \text{且} \quad \beta^{k} = \sum_{i=1}^{m} b^{k}_{i}\varepsilon^{i} \quad \text{对 } 1 \le j, k \le r. \]

又设

\[ \alpha^1 \wedge \cdots \wedge \alpha^r = \sum_{(j)\in\mathbb{J}_r} a_{(j)}\varepsilon^{(j)} \quad \text{且} \quad \beta^1 \wedge \cdots \wedge \beta^r = \sum_{(k)\in\mathbb{J}_r} b_{(k)}\varepsilon^{(k)} \]

为基表示。则依例 2.4(d) 有

\[ a_{(j)} = \det\left(\left[a^{i}_{j_k}\right]_{1\le i,k\le r}\right) \quad \text{且} \quad b_{(k)} = \det\left(\left[b^{i}_{k_\ell}\right]_{1\le i,\ell\le r}\right) \]

其中 $ (j) = (j_1,\ldots,j_r) \in \mathbb{J}_r $，$ (k) = (k_1,\ldots,k_r) \in \mathbb{J}_r $。

由 $ (\cdot \mid \cdot)_{\ast} $ 的双线性与对称性，以及行列式是其行向量的交错 $ r $ 形式这一事实可得（见命题 2.3(i) 的证明）

\[ \begin{aligned} \det[(\alpha^{j} \mid \beta^{k})_{\ast}] &= \sum_{(j)\in\mathbb{J}_r}\sum_{\sigma\in\mathbb{S}_r} \operatorname{sign}(\sigma) a^{1}_{j_{\sigma(1)}} \cdots a^{r}_{j_{\sigma(r)}} \det\left(\left[(\varepsilon^{j_k} \mid \beta^{\ell})_{\ast}\right]_{1\le k,\ell\le r}\right) \\ &= \sum_{(j)\in\mathbb{J}_r} \det\left(\left[a^{i}_{j_k}\right]_{1\le i,k\le r}\right) \det\left(\left[(\varepsilon^{j_k} \mid \beta^{\ell})_{\ast}\right]_{1\le k,\ell\le r}\right) \\ &= \sum_{(j)\in\mathbb{J}_r} a_{(j)} \det\left(\left[(\varepsilon^{j_k} \mid \beta^{\ell})_{\ast}\right]_{1\le k,\ell\le r}\right) \\ &= \sum_{(j)\in\mathbb{J}_r}\sum_{(k)\in\mathbb{J}_r} a_{(j)}b_{(k)} \det\left(\left[(\varepsilon^{j_i} \mid \varepsilon^{k_{\ell}})_{\ast}\right]_{1\le i,\ell\le r}\right). \end{aligned} \]

由 (a) 有

\[ \det[(\varepsilon^{j_i} \mid \varepsilon^{k_{\ell}})_{\ast}] = \det\left(\left[\delta^{j_i,k_{\ell}}\right]_{1\le i,\ell\le r}\right) = \begin{cases} 1 & \text{若 } (j) = (k), \\ 0 & \text{其他情形}. \end{cases} \]

于是得到

\[ \det[(\alpha^{j} \mid \beta^{k})_{\ast}] = \sum_{(j)\in\mathbb{J}_r} a_{(j)}b_{(j)}. \]

由 (2.15)，证明完成。■

(c) $ \bigwedge^{r}V^{*} $ 上的标量积 $ (\cdot \mid \cdot)_r $ 不依赖于标准正交基或其定向的特殊选取，而只依赖于 $ V $ 上的内积 $ (\cdot \mid \cdot) $。

证明 这由 (b)、例 2.4(e) 以及标量积的双线性推出。■

因为

\[ \dim\left(\bigwedge^{r}V^{*}\right) = \binom{m}{r} = \binom{m}{m-r} = \dim\left(\bigwedge^{m-r}V^{*}\right), \tag{2.16} \]

所以对 $ 0 \le r \le m $，$ \bigwedge^{r}V^{*} $ 与 $ \bigwedge^{m-r}V^{*} $ 是同构的向量空间。现在我们引入从 $ \bigwedge^{r}V^{*} $ 到 $ \bigwedge^{m-r}V^{*} $ 的一个特殊（自然）同构：霍奇星算子。

我们首先注意，对每个 $ \alpha \in \bigwedge^{r}V^{*} $，命题 2.5 表明

\[ (\beta \mapsto \alpha \wedge \beta) \in \mathcal{L}\left(\bigwedge^{m-r}V^{*}, \bigwedge^{m}V^{*}\right). \tag{2.17} \]

因为 $ \bigwedge^{m}V^{*} $ 是一维的，所以存在唯一的 $ f_{\alpha}(\beta) \in \mathbb{R} $ 使得

\[ \alpha \wedge \beta = f_{\alpha}(\beta)\omega_V \quad \text{对 } \beta \in \bigwedge^{m-r}V^{*}. \]

由 (2.17)，$ f_{\alpha} $ 属于 $ \mathcal{L}(\bigwedge^{m-r}V^{*}, \mathbb{R}) $。于是根据里斯表示定理，存在唯一的 $ \ast\alpha \in \bigwedge^{m-r}V^{*} $，使得对 $ \beta \in \bigwedge^{m-r}V^{*} $ 有 $ f_{\alpha}(\beta) = (\ast\alpha \mid \beta)_{m-r} $。换言之，每个 $ \alpha \in \bigwedge^{r}V^{*} $ 都有唯一的元素 $ \ast\alpha \in \bigwedge^{m-r}V^{*} $ 使得

\[ \alpha \wedge \beta = (\ast\alpha \mid \beta)_{m-r}\omega_V \quad \text{对 } \beta \in \bigwedge^{m-r}V^{*}. \tag{2.18} \]

因此 $ \ast\alpha = \Theta^{-1}f_{\alpha} $，其中 $ \Theta $ 表示空间 $ \bigwedge^{m-r}V^{*} $ 的里斯同构 $ \Theta $。于是

\[ (\alpha \mapsto \ast\alpha) \in \mathcal{L}\left(\bigwedge^{r}V^{*}, \bigwedge^{m-r}V^{*}\right). \tag{2.19} \]

这个映射称为**霍奇星算子**（或简称霍奇星）。

2.16 注 (a) 霍奇星是同构。

证明 由 $ \ast\alpha = 0 $ 与 (2.18) 可知，对每个 $ \beta \in \bigwedge^{m-r}V^{*} $ 都有 $ \alpha \wedge \beta = 0 $。对特殊选取 $ \beta := \varepsilon^{r+1} \wedge \cdots \wedge \varepsilon^{m} $，由

\[ \alpha = \sum_{(j)\in\mathbb{J}_r} a_{(j)}\varepsilon^{(j)} \quad \text{其中 } (j_0) := (1,\ldots,r) \]

可得 $ 0 = \alpha \wedge \beta = a_{(j_0)}\omega_V $，从而 $ a_{(j_0)} = 0 $。类似地，对 $ (j) \in \mathbb{J}_r $ 可得 $ a_{(j)} = 0 $。因此 (2.19) 是单射。现在由 (2.16) 推出结论。■

(b) 霍奇星依赖于 $ V $ 的标量积与定向。■

2.17 例 (a) 对 $ 1 \le j \le m $，有 $ \ast\varepsilon^{j} = (-1)^{j-1}\varepsilon^{1} \wedge \cdots \wedge \widehat{\varepsilon^{j}} \wedge \cdots \wedge \varepsilon^{m} $。

证明 由交错性、外积的结合性以及例 2.4(f) 可得

\[ \varepsilon^{j} \wedge (\varepsilon^{1} \wedge \cdots \wedge \widehat{\varepsilon^{k}} \wedge \cdots \wedge \varepsilon^{m}) = (-1)^{j-1}\delta^{jk}\varepsilon^{1} \wedge \cdots \wedge \varepsilon^{m} = (-1)^{j-1}\delta^{jk}\omega \]

对 $ 1 \le k \le m $。现在由 (2.18) 以及如下事实推出结论：根据注 2.15(a)，

\[ \{\varepsilon^{1} \wedge \cdots \wedge \widehat{\varepsilon^{k}} \wedge \cdots \wedge \varepsilon^{m}; 1 \le k \le m\} \]

是 $ \bigwedge^{m-1}V^{*} $ 的标准正交基。■

(b) 对 $ 1 \le j \le m $，有

\[ \ast(\varepsilon^{1} \wedge \cdots \wedge \widehat{\varepsilon^{j}} \wedge \cdots \wedge \varepsilon^{r}) = (-1)^{m-j}\varepsilon^{j}. \]

证明 因为

\[ (\varepsilon^{1} \wedge \cdots \wedge \widehat{\varepsilon^{j}} \wedge \cdots \wedge \varepsilon^{m}) \wedge \varepsilon^{k} = (-1)^{m-j}\delta^{jk}\omega, \]

所以如上一证明一样推出结论。■

(c) $ \ast 1 = \omega $ 且 $ \ast\omega = 1 $。

(d) 现在考虑同时涵盖 (a) 与 (b) 的一般情形。于是设 $ 1 \le r \le m-1 $ 且 $ (j) \in \mathbb{J}_r $。则存在唯一的 $ (j^{c}) \in \mathbb{J}_{m-r} $，使得 $ (j) \vee (j^{c}) := (j_1,\ldots,j_r,j_1^{c},\ldots,j_{m-r}^{c}) $ 是 $ \{1,\ldots,m\} $ 的一个排列。置 $ s(j) := \operatorname{sign}((j) \vee (j^{c})) $，我们便有

\[ \ast\varepsilon^{(j)} = s(j)\varepsilon^{(j^{c})}. \tag{2.20} \]

于是对 $ \alpha = \sum_{(j)\in\mathbb{J}_r} a_{(j)}\varepsilon^{(j)} \in \bigwedge^{r}V^{*} $ 有

\[ \ast\alpha = \sum_{(j)\in\mathbb{J}_r} s(j)a_{(j)}\varepsilon^{(j^{c})}. \]

证明 对 $ (k) \in \mathbb{J}_{m-r} $，当 $ (k) \ne (j^{c}) $ 时有 $ \varepsilon^{(j)} \wedge \varepsilon^{(k)} = 0 $，因为该乘积中至少有一个 $ \varepsilon^{j_i} $ 出现两次。当 $ (k) = (j^{c}) $ 时，由 (2.3) 推出

\[ \varepsilon^{(j)} \wedge \varepsilon^{(j^{c})} = s(j)\omega. \tag{2.21} \]

现在由 (2.18) 与注 2.15(a) 推出 (2.20)。■

(e) 对 $ \alpha \in \bigwedge^{r}V^{*} $，$ 0 \le r \le m $，有 $ \ast\ast\alpha := \ast(\ast\alpha) = (-1)^{r(m-r)}\alpha $。

证明 对 $ (j), (k) \in \mathbb{J}_r $，由 (2.18)、(d) 与命题 2.5(iii) 可得

\[ (\ast\ast\varepsilon^{(j)} \mid \varepsilon^{(k)})_r\omega = (\ast\varepsilon^{(j)}) \wedge \varepsilon^{(k)} = s(j)\varepsilon^{(j^{c})} \wedge \varepsilon^{(k)} = (-1)^{r(m-r)}s(j)\varepsilon^{(k)} \wedge \varepsilon^{(j^{c})}. \]

于是因为当 $ (k) \ne (j) $ 时 $ \varepsilon^{(k)} \wedge \varepsilon^{(j^{c})} = 0 $，并利用 (2.21) 可得

\[ (\ast\ast\varepsilon^{(j)} \mid \beta)_r = (-1)^{r(m-r)}(\varepsilon^{(j)} \mid \beta)_r \quad \text{对 } \beta \in \bigwedge^{r}V^{*}. \]

因此对 $ (j) \in \mathbb{J}_r $ 有 $ \ast\ast\varepsilon^{(j)} = (-1)^{r(m-r)}\varepsilon^{(j)} $，由命题 2.3(i)，这证明了结论。■

(f) 对 $ \alpha, \beta \in \bigwedge^{r}V^{*} $，有关系

\[ \alpha \wedge \ast\beta = \beta \wedge \ast\alpha = (\alpha \mid \beta)_r\omega. \tag{2.22} \]

证明 设 $ \alpha := \beta := \varepsilon^{(j)} $。则由 (d) 与 (2.21) 有

\[ \alpha \wedge \ast\beta = \alpha \wedge \ast\alpha = \beta \wedge \ast\alpha = s(j)\varepsilon^{(j)} \wedge \varepsilon^{(j^{c})} = \omega = (\varepsilon^{(j)} \mid \varepsilon^{(j)})_r\omega = (\alpha \mid \beta)_r\omega. \]

再取 $ \alpha := \varepsilon^{(j)} $，$ \beta := \varepsilon^{(k)} $，$ (j) \ne (k) $，由 (d) 得到

\[ \alpha \wedge \ast\beta = s(k)\varepsilon^{(j)} \wedge \varepsilon^{(k^{c})} = 0 = s(j)\varepsilon^{(k)} \wedge \varepsilon^{(j^{c})} = \beta \wedge \ast\alpha. \]

此外，由注 2.15(a) 有 $ (\alpha \mid \beta)_r = 0 $。因此 (2.22) 在此情形也成立。现在这一结论也由命题 2.3(i) 推出。■
