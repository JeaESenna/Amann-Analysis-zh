因此特别地

\[ \operatorname{div}(v)\omega_M = \frac{d}{dt}\left[(\chi^t)^*\omega_M\right]\big|_{t=0} . \]

证明 因为该断言是局部陈述，所以只需在局部标准正交坐标中证明它。因此我们可以假设 $ M $ 是 $ \mathbb{R}^m $ 中的开集，并定义 $ \omega := \omega_M = dx^1 \wedge \cdots \wedge dx^m $。

我们对 (2.20) 关于 $ p $ 求导。链式法则给出

\[ [\partial\chi^t]^{\cdot} = ((\chi^t)^*\partial v)\partial\chi^t \quad \text{对 } t \in \mathbb{R} , \]

其中 $ \partial := \partial_p $。于是刘维尔定理（应用于每个固定的 $ p \in M $）给出

\[ [\det(\partial\chi^t)]^{\cdot} = \operatorname{tr}\left[(\chi^t)^*\partial v\right] \det(\partial\chi^t) \quad \text{对 } t \in \mathbb{R} . \tag{2.31} \]

于是例 XI.6.8(a) 给出

\[ \operatorname{tr}\left[(\chi^t)^*\partial v\right] = (\chi^t)^*\sum_{j=1}^{m}\partial_j v^j = (\chi^t)^*\operatorname{div} v . \tag{2.32} \]

由例 XI.3.4(c)，我们知道

\[ (\chi^t)^*\omega = \det(\partial\chi^t)\omega \quad \text{对 } t \in \mathbb{R} . \]

由此，由 (2.31) 与 (2.32) 可得

\[ \begin{aligned} [(\chi^t)^*\omega]^{\cdot} &= [\det(\partial\chi^t)]^{\cdot}\omega = ((\chi^t)^*\operatorname{div} v)\det(\partial\chi^t)\omega \\ &= (\chi^t)^*\operatorname{div} v\,(\chi^t)^*\omega = (\chi^t)^*(\operatorname{div}(v)\omega) \end{aligned} \]

对 $ t \in \mathbb{R} $。■

##### 输运定理

命题 2.10 使向量场散度的几何解释成为可能。为说明这一点，我们首先证明重要的输运定理，它在连续介质力学中特别有用。

2.11 定理（输运定理） 设 $ M $ 无边界且是伪黎曼的。又设 $ v \in \mathcal{V}_c(M) $，且 $ \chi $ 是 $ v $ 在 $ M $ 上生成的流。最后设 $ f \in \mathcal{E}(M \times \mathbb{R}) $。则对每个相对紧致集 $ A \in \mathcal{L}_M $，有

\[ \frac{d}{dt}\int_{A^t} f(\cdot,t)\,d\lambda_M = \int_{A^t}\left[\partial_2 f(\cdot,t) + \operatorname{div}(f(\cdot,t)v)\right] d\lambda_M \quad \text{对 } t \in \mathbb{R} , \]

其中 $ A^t := \chi^t(A) $。

证明 因为 $ \chi^t \in \operatorname{Diff}(M,M) $，所以只要 $ A \in \mathcal{L}_M $ 就有 $ A^t \in \mathcal{L}_M $（见习题 1.1），并且还有 $ \overline{A^t} = (\overline{A})^t $。因此 $ A^t $ 是相对紧致的，命题 1.9(b) 表明 $ f(\cdot,t) $ 在 $ A^t $ 上可积。于是 $ m $-形式\footnote{$ \chi_{A^t} $ 是 $ A^t $ 的特征函数。} $ \omega_t := \chi_{A^t} f(\cdot,t)\omega_M $ 在 $ M $ 上可积，变换定理给出

\[ \int_{A^t} f(\cdot,t)\,d\lambda_M = \int_M \omega_t = \int_M (\chi^t)^*\omega_t = \int_A (\chi^t)^*(f(\cdot,t)\omega_M) . \]

关于含参积分可微性的定理（定理 X.3.18）于是给出

\[ \frac{d}{dt}\int_{A^t} f(\cdot,t)\,d\lambda_M = \int_A \frac{d}{dt}(\chi^t)^*(f(\cdot,t)\omega_M) . \tag{2.33} \]

因为 $ (\chi^t)^*(f(\cdot,t)\omega_M) = f(\chi^t,t)(\chi^t)^*\omega_M $，命题 2.10 说

\[ \begin{aligned} \frac{d}{dt}(\chi^t)^*(f(\cdot,t)\omega_M) &= \left(\frac{d}{dt}f(\chi^t,t)\right)(\chi^t)^*\omega_M + f(\chi^t,t)\frac{d}{dt}\left((\chi^t)^*\omega_M\right) \\ &= \left(\langle\langle (\chi^t)^* df(\cdot,t), \frac{d}{dt}\chi^t \rangle\rangle + (\chi^t)^*\partial_2 f(\cdot,t)\right)(\chi^t)^*\omega_M \\ &\quad + (\chi^t)^* f(\cdot,t)(\chi^t)^*(\operatorname{div}(v)\omega_M) . \end{aligned} \]

考虑 (2.20)，现在得到

\[ \begin{aligned} \frac{d}{dt}(\chi^t)^*(f(\cdot,t)\omega_M) &= (\chi^t)^*\left[(\langle df(\cdot,t), v\rangle + \partial_2 f(\cdot,t) + f(\cdot,t)\operatorname{div} v)\omega_M\right] \\ &= (\chi^t)^*\left[(\partial_2 f(\cdot,t) + (\operatorname{grad} f(\cdot,t)\,|\,v)_M + f(\cdot,t)\operatorname{div} v)\omega_M\right] \\ &= (\chi^t)^*\left[(\partial_2 f(\cdot,t) + \operatorname{div}(f(\cdot,t)v))\omega_M\right] , \end{aligned} \]

其中最后一步用了命题 XI.6.11(ii)。现在由 (2.33) 与变换定理即得该断言。■

2.12 推论 设 $ t \in \mathbb{R} $。则对每个相对紧致集 $ A \in \mathcal{L}_M $ 与每个 $ v \in \mathcal{V}_c(M) $，有

\[ \frac{d}{dt}\operatorname{vol}_M(A^t) = \int_{A^t} \operatorname{div} v \, d\lambda_M \quad \text{对 } v \in \mathcal{V}_c(M) . \]

称向量场 $ v \in \mathcal{V}(M) $ 是**无散度的**，若 $ \operatorname{div} v = 0 $。若 $ v $ 具有紧支集，则称 $ v $ 生成的流 $ \chi $ 是**体积保持的**，若

\[ \operatorname{vol}_M(A^t) = \operatorname{vol}_M(A) \quad \text{对 } t \in \mathbb{R} \text{ 与 } A \in \mathcal{L}_M . \]

由推论 2.12 可知，对 $ M $ 的相对紧可测子集 $ A $，若 $ \operatorname{div} v \ge 0 $，则输运集 $ A^t $ 的体积随时间增大；当 $ \operatorname{div} v \le 0 $ 时，该体积减小。

2.13 命题 设 $ M $ 无边界且是伪黎曼的。又设 $ v \in \mathcal{V}_c(M) $。则 $ v $ 是无散度的当且仅当 $ v $ 生成的流是体积保持的。

证明 “$ \Rightarrow $” 设 $ \operatorname{div} v = 0 $。则由推论 2.12 可得

\[ \operatorname{vol}(A^t) = \operatorname{vol}(A) \quad \text{对 } t \in \mathbb{R} \tag{2.34} \]

对 $ M $ 的每个紧致子集 $ A $ 成立。因为 $ M $ 是 σ-紧致的且 $ \lambda_M $ 正则，所以 (2.34) 对每个 $ A \in \mathcal{L}_M $ 成立。

“$ \Leftarrow $” 设 $ \chi $ 是体积保持的。则推论 2.12 特别表明

\[ \int_A \operatorname{div} v \, d\lambda_M = 0 \quad \text{对 } A \in \mathcal{L}_M \text{ 且 } \overline{A} \subset\subset M . \tag{2.35} \]

因为 $ \operatorname{div} v $ 属于 $ C_c(M) $，所以 (2.35) 蕴含

\[ \int_M f \operatorname{div} v \, d\lambda_M = 0 \quad \text{对 } f \in \mathcal{S}(M,\lambda_M) . \tag{2.36} \]

因为 $ \operatorname{div} v \in \mathcal{L}_2(M,\lambda_M) $，且由命题 X.4.8，$ \mathcal{S}(M,\lambda_M) $ 在 $ \mathcal{L}_2(M,\lambda_M) $ 中稠密，所以存在 $ \mathcal{S}(M,\lambda_M) $ 中的序列 $ (f_j) $，使得 $ f_j \to \operatorname{div} v $ 在 $ \mathcal{L}_2(M,\lambda_M) $ 中。因此由 $ \mathcal{L}_2(M,\lambda_M) $ 中标量积的连续性（即柯西–施瓦茨不等式）可得

\[ \int_M (\operatorname{div} v)^2 d\lambda_M = \lim_{j\to\infty}\int_M f_j \operatorname{div} v \, d\lambda_M = 0 . \]

现在由注 X.3.3(c) 即得该断言。■

2.14 例（连续性方程） 设 $ X $ 是 $ \mathbb{R}^3 $ 中的开有界集，且 $ v \in \mathcal{V}_c(X) $。又设 $ \chi $ 是 $ v $ 生成的流。如同注 2.2(h) 中那样，我们把 $ \chi $ 解释为 $ X $ 中具有（光滑）质量密度 $ \rho $ 的流动流体。在流体力学中，常假设质量在 $ X $ 中既不产生也不消灭，因此它服从**质量守恒定律**：在时刻 $ t = 0 $ 位于区域 $ A $ 中的质量，在随流输运时保持不变。这意味着 $ \rho(A^t,t) = \rho(A,0) $ 对 $ t \in \mathbb{R} $ 成立，因此

\[ \frac{d}{dt}\int_{A^t} \rho(\cdot,t)\,dx = 0 \quad \text{对 } t \in \mathbb{R} \text{ 与 } A \in \mathcal{L}_X . \]

输运定理表明这等价于

\[ \int_{A^t}\left(\partial_t\rho + \operatorname{div}(\rho v)\right) dx = 0 \quad \text{对 } t \in \mathbb{R} \text{ 与 } A \in \mathcal{L}_X . \tag{2.37} \]

因此质量守恒定律等价于**连续方程**

\[ \partial_t\rho + \operatorname{div}(\rho v) = 0 \quad \text{在 } X \text{ 中} . \tag{2.38} \]
