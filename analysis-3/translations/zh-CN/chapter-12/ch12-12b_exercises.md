现在定理 3.1（斯托克斯）给出

\[ \int_M d\alpha\wedge\ast\beta + \int_M \alpha\wedge\ast\delta\beta = \int_{\partial M} \alpha\wedge\ast\beta \]

从而断言成立。■

3.26 推论 设 $ M $ 紧致且没有边界。则我们有对偶公式

\[ [d\alpha|\beta]_M = -[\alpha|\delta\beta]_M \qquad \text{对 } \alpha \in \Omega^{r-1}(M) \text{ 与 } \beta \in \Omega^r(M). \]

在黎曼流形的情形，对偶公式表明，$ -\delta $ 是 $ d $ 关于内积 $ [\cdot|\cdot]_M $ 的形式伴随算子。\footnote{在几何中通常使用的符号约定下，余微分 $ \delta $ 是 $ d $ 的形式伴随。}

上述公式是流形拓扑探索的出发点；这些内容我们只能留待微分几何与整体分析的后续课程或其他书籍。

##### 习题

1 设 $ M $ 紧致且没有边界，并设 $ \omega \in \Omega^{m-1}(M) $。证明 $ d\omega $ 有零点。

2 设 $ \rho: \mathbb{R}^3\setminus\{0\} \to S^2 $ 表示径向收缩，并设 $ \sigma := \rho^*\omega_{S^2} $。证明 $ \sigma $ 是闭的但不是恰当的。（提示：例 XI.4.13(c)；考虑 $ \int_{S^2}\sigma $。）

3 设 $ M $ 是无边界的黎曼流形，并设 $ f \in \mathcal{E}_c(M) $ 满足 $ \Delta f \ge 0 $。证明 $ f $ 是常数。（提示：先证明 $ \Delta f = 0 $，然后考虑 $ \Delta(f^2) $；格林公式。）

4 设 $ (e_1,e_2,e_3) $ 是标准基，$ (x,y,z) $ 是 $ \mathbb{R}^3 $ 的欧几里得坐标。又设 $ M $ 是 $ \mathbb{R}^3 $ 的紧致三维子流形，$ \Gamma := \partial M $，外法向为 $ \nu $。证明**阿基米德定理**，即

\[ \int_\Gamma z\nu\,d\lambda_\Gamma = \operatorname{vol}(M)e_3. \]

物理解释：我们把 $ M $ 看作浸没在密度为 $ \rho = 1 $、表面为 $ (x,y) $ 平面的流体中的一个物体。因为流体中 $ z < 0 $，所以 $ \rho z\,d\vec{F} $ **是力**（= 沿内法向的压强 $ \rho|z| $ 乘以（无穷小）面积元 $ dF $），它作用在点 $ p \in \Gamma $ 处的流体上。于是因为

\[ \int_\Gamma z\nu\,d\lambda_\Gamma = \int_\Gamma z\,d\vec{F}, \]

阿基米德定理说的是，合力沿 $ z $ 轴正方向作用，且等于物体的质量：**浮力等于排开流体的重量。尤里卡。**

（提示：$ \int_\Gamma z\nu^1\,d\lambda_\Gamma = \int_\Gamma z\,dy\wedge dz $ 等等；斯托克斯定理。）

5 采用习题 XI.6.5 的假设。利用高斯定律，求出麦克斯韦方程组的积分形式。例如，证明：对 $ \Omega $ 中每个相对紧致的分段光滑区域 $ M $（外法向为 $ \nu $），

\[ \int_{\partial M} E\cdot d\vec{F} = 4\pi\int_M \rho\,dx \]

也就是说，**通过闭曲面的电场通量正比于它所包含的总电荷**。

证明微分形式与积分形式是等价的。

6 设 $ \Omega $ 是 $ \mathbb{R}^3 $ 中的分段光滑有界区域，且 $ p_1,\ldots,p_k \in \Omega $。计算

\[ \sum_{j=1}^{k}\int_{\partial\Omega}\partial_\nu (1/|x-p_j|^3)\,d\sigma(x). \]

（提示：习题 X.3.6 与推论 3.18。）

7 设 $ M $ 是 $ \mathbb{R}^{m+1}\setminus\{0\} $ 中的非空紧致超曲面，使得从 $ 0 $ 出发的每条半射线与 $ M $ 至多相交一次。又设

\[ K_\infty(M) := \{\,ti(p)\,;\,t \in \mathbb{R}^+,\ p \in M\,\} \]

其中 $ i: M \hookrightarrow \mathbb{R}^{m+1} $，上述（无限）锥由所有从原点出发且与 $ M $ 相交的线段组成。最后设 $ \rho: \mathbb{R}^{m+1}\setminus\{0\} \to S^m $ 为径向收缩。证明

\[ \int_M \rho^*\omega_{S^m} = \operatorname{vol}_{S^m}(K_\infty(M)\cap S^m). \]

注 $ \operatorname{vol}_{S^m}(K_\infty(M)\cap S^m) $ 是锥 $ K_\infty(M) $ 的**立体角**。

（提示：例 XI.4.13(c) 与 3.10(c)；斯托克斯定理。）

8 证明 $ S^2 $ 上每个闭微分形式都是恰当的。

（提示：回顾引理 3.11，并研读定理 XI.3.11 的证明。）

9 设 $ B $ 是 $ M $ 的紧致 $ m $ 维带边子流形，$ f $ 是从 $ \partial B $ 到流形 $ N $ 的光滑映射。证明下列各条：

(a) 若存在光滑映射 $ F: B \to N $ 使 $ F|_{\partial B} = f $，则对每个闭形式 $ \omega \in \Omega^{n-1}(N) $ 有 $ \int_{\partial B} f^*\omega = 0 $。

(b) 在 $ M = \mathbb{R}^m $ 且 $ N := \partial B $ 的情形，不存在光滑映射 $ F: B \to \partial B $ 使 $ F|_B = \operatorname{id}_{\partial B} $，也就是说，不存在 $ B $ 到 $ \partial B $ 的光滑收缩。

（提示：(a) 令 $ F = (F^1,\ldots,F^n) $，考虑形式 $ F^1\,dF^2\wedge\cdots\wedge dF^n $；利用斯托克斯定理。）

10 证明：若 $ M $ 没有边界，则拉普拉斯–贝尔特拉米算子 $ \Delta_M $ 在 $ \mathcal{E}_c(M) $ 上的限制在 $ L_2(M,d\lambda_M) $ 中是对称的，即

\[ (\Delta f|g)_{L_2(M,d\lambda_M)} = (f|\Delta g)_{L_2(M,d\lambda_M)} \qquad \text{对 } f,g \in \mathcal{E}_c(M). \]

11 设 $ M := H^2 $ 是双曲平面，$ v \in \mathcal{V}_c(M) $。确定散度定理（定理 3.15）在下列情形下的显式形式：

(a) 极坐标参数化（例 XI.5.5(k)）；

(b) 庞加莱模型；

(c) 罗巴切夫斯基模型；

(d) 克莱因模型。

12 设 $ M $ 是无边界的黎曼流形，$ \omega \in \Omega_c(M) $。证明下列条件等价：

(i) $ \Delta\omega = 0 $；

(ii) $ d\omega = \delta\omega = 0 $。

13 设 $ M $ 是黎曼流形。证明：对 $ \alpha \in \Omega_c^{r-1}(M) $ 与 $ \beta,\gamma \in \Omega_c^r(M) $，下列结论成立：

(i) $ \int_M[(d\alpha|\beta)_r + (\alpha|\delta\beta)_{r-1}] = \int_{\partial M}\alpha\wedge\ast\beta $；

(ii) $ \int_M[(d\beta|d\gamma)_{r+1} + (\beta|\delta d\gamma)_r] = \int_{\partial M}\beta\wedge\ast d\gamma $。

（提示：考虑 $ d(\alpha\wedge\ast\beta) $。）

14 设 $ M $ 紧致且没有边界。证明关于内积 $ [\cdot|\cdot]_M $ 的霍奇–拉普拉斯算子是对称的，即

\[ [\Delta\omega_1|\omega_2]_M = [\omega_1|\Delta\omega_2]_M \qquad \text{对 } \omega_1,\omega_2 \in \Omega^r(M). \]
