（这里以及在类似公式中，我们处理的是“与时间有关”的向量场，散度算子只作用于“位置变量”。）

在密度 $ \rho > 0 $ 为常数的特殊情形，即**不可压缩流体**的情形，质量守恒定律等价于 $ \operatorname{div} v = 0 $，也就是等价于速度场的散度为零。因此，我们也把无散度的向量场称为**不可压缩的**。

证明 (2.37) 与 (2.38) 的等价性可仿照命题 2.13 的证明得到。■

2.15 注 (a) 为简单起见，我们集中讨论整体流体的情形。若放松向量场具有紧支集这一假设，则 $ v \in \mathcal{V}(M) $ 生成一个**局部**流。此时定理 2.10、2.11、2.13 与推论 2.12 的相应局部版本仍然成立。

证明 例如可与 [Ama95] 中的第 10 节与定理 11.8 相比较。■

(b)（正则性）关于向量场生成的流及其相关定理的陈述，当 $ M $ 是 $ C^2 $ 流形且 $ v $ 是 $ C^1 $ 向量场时仍然成立。当然，此时我们只有 $ \chi \in C^1(M \times \mathbb{R}, M) $。在这种情况下，输运定理需要 $ f \in C^1(M \times \mathbb{R}) $ 这一假设。■

##### 习题

1 证明**微分形式的勒贝格定理**的如下形式：设 $ \omega $ 是 $ M $ 上可积的 $ m $-形式，而 $ f, f_j \in \mathcal{L}_\infty(M, \lambda_M) $ 满足 $ f_j \to f $ $ \lambda_M $-几乎处处且 $ \sup_j \|f_j\|_\infty < \infty $。又设 $ \omega_j := f_j\omega $，$ j \in \mathbb{N} $。证明当 $ j \to \infty $ 时 $ \int_M \omega_j \to \int_M \omega $。

2 设 $ a \in \mathbb{R}^3 $、$ R > 0 $，并定义 $ M := a + RS^2 $。计算 $ \int_M \omega $，其中
\[ \omega := x^2\,dy \wedge dz + y^2\,dz \wedge dx + z^2\,dx \wedge dy . \]

3 设 $ v \in \mathcal{V}_c(M) $，并用 $ \chi $ 表示由 $ v $ 生成的 $ M $ 上的流。称函数 $ f \in \mathcal{E}(M) $ 为 $ v $ 的**首次积分**，如果
\[ \frac{d}{dt}(\chi^t)^*f = 0 \qquad \text{在 } M \times \mathbb{R} \text{ 上} . \]
证明这些陈述等价：

(i) $ f $ 是 $ v $ 的首次积分。

(ii) 对 $ t \in \mathbb{R} $，$ (\chi^t)^*f = f $。

(iii) $ L_v f = 0 $。

4 设 $ H \in \mathcal{E}_c(\mathbb{R}^{2n}) $。证明下列陈述等价：

(i) $ f $ 是 $ \operatorname{sgrad} H $ 的首次积分；

(ii) $ \{f, H\} = 0 $。

特别地，$ H $ 是 $ \operatorname{sgrad} H $ 的首次积分。

5 设 $ v \in \mathcal{V}_c(M) $，并设 $ \chi $ 是 $ v $ 生成的流。对 $ \alpha \in \Omega(M) $，
\[ L_v(\alpha) := \frac{d}{dt}\left[(\chi^t)^*\alpha\right]\big|_{t=0} \]
称为 $ \alpha $ 的**李导数**。证明下列各条。

(i) 若 $ \alpha \in \Omega^r(M) $，则 $ L_v(\alpha) $ 属于 $ \Omega^r(M) $；当 $ r = 0 $ 时，上述定义与第 XI.6 节的定义一致。

(ii) $ L_v \circ d = d \circ L_v $。

(iii) 形式 $ \alpha, \beta \in \Omega(M) $ 满足**乘积法则** $ L_v(\alpha \wedge \beta) = L_v(\alpha) \wedge \beta + \alpha \wedge L_v(\beta) $。

(iv) 对 $ \alpha \in \Omega(M) $，$ L_v(\alpha) = d(v \lrcorner \alpha) + v \lrcorner d\alpha $。

(v) $ L_v(\omega_M) = \operatorname{div}(v)\omega_M $。

(vi) 若 $ w \in \mathcal{V}_c(M) $，则 $ \Theta_M[v, w] = L_v(\Theta_M w) $。

6 描述下列向量场生成的流：

(i) $ x\,\partial/\partial x + y\,\partial/\partial y \in \mathcal{V}(\mathbb{R}^2) $；

(ii) $ -y\,\partial/\partial x + x\,\partial/\partial y \in \mathcal{V}(\mathbb{R}^2) $；

(iii) $ -y\,\partial/\partial x + x\,\partial/\partial y \in \mathcal{V}(\mathbb{R}^3) $；

(iv) $ (x - y)\,\partial/\partial x + (x + y)\,\partial/\partial y \in \mathcal{V}(\mathbb{R}^2) $；

(v) $ (x + y)\,\partial/\partial x + x^2\,\partial/\partial y \in \mathcal{V}(\mathbb{R}^2) $；

(vi) $ (x + y)\,\partial/\partial x + (x - y)\,\partial/\partial y + z\,\partial/\partial z \in \mathcal{V}(\mathbb{R}^3) $。
