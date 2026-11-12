(d) 设 $ (\varphi, U) $ 是 $ M $ 的坐标卡。则
\[ \left\{ \frac{\partial}{\partial x^{j_{1}}} \otimes \cdots \otimes \frac{\partial}{\partial x^{j_{r}}} \otimes dx^{k_{1}} \otimes \cdots \otimes dx^{k_{s}} ;\ j_{i}, k_{i} \in \{1, \ldots, m\} \right\} \tag{4.26} \]
是 $ \mathcal{T}_s^r(M) $ 的一组模基。于是 $ \gamma \in \mathcal{T}_s^r(U) $ 当且仅当 $ \gamma $ 在基表示 (4.26) 中的系数是光滑的。

(e) 设 $ \varphi \in \operatorname{Diff}(M, N) $。则 $ \varphi_* $ 将模 $ \mathcal{T}_s^r(M) $ 映到 $ \mathcal{T}_s^r(N) $，并按协变方式作用为
\[ (\psi \circ \varphi)_* = \psi_* \circ \varphi_* \quad \text{且} \quad (\operatorname{id}_M)_* = \operatorname{id}_{\mathcal{T}_s^r(M)} . \]

类似地，$ \varphi^*(\mathcal{T}_s^r(N)) = \mathcal{T}_s^r(M) $，且 $ \varphi^* $ 按反变方式作用。最后，$ \varphi_* $ 从而 $ \varphi^* $ 也与张量积映射相容，即
\[ \varphi_*(\gamma \otimes \delta) = \varphi_*\gamma \otimes \varphi_*\delta . \]

(f) 对 $ f \in C^\infty(M, N) $ 与 $ \gamma \in \mathcal{T}_s^0(N) $，$ \gamma $ 经 $ f $ 的**拉回** $ f^*\gamma $ 由下式确定：
\[ f^*\gamma(v_1, \ldots, v_s) := (\gamma \circ f)((Tf)v_1, \ldots, (Tf)v_s) \quad \text{对 } v_1, \ldots, v_s \in \mathcal{V}(M) \]
其中 $ ((Tf)v)(p) := (T_p f)v(p) $ 对 $ p \in M $。于是映射
\[ f^*: \mathcal{T}_s^0(N) \to \mathcal{T}_s^0(M), \quad \gamma \mapsto f^*\gamma \]
是良定义的且是 $ \mathbb{R} $ 线性的，按反变方式作用，并与张量积映射相容。对 $ f \in \operatorname{Diff}(M, N) $，它与先前定义的拉回相同。

(g) $ \mathcal{T}_0^1(M) = \mathcal{V}(M) $，$ \mathcal{T}_1^0(M) = \Omega^1(M) $，且对偶配对 $ \langle \cdot, \cdot \rangle $ 是 $ M $ 上的一个 $ (1, 1) $ 张量。

(h)（正则性）设 $ k \in \mathbb{N} $。则当 $ M $ 是 $ C^{k+1} $ 流形且把 $ C^\infty $ 换成 $ C^k $ 时，上述论断同样成立。■

##### 习题

1 设 $ N $ 是无边流形的子流形。证明（在典范等同下）对 $ k \in \mathbb{N} \cup \{\infty\} $ 有 $ \mathcal{V}^k(N) \subset \mathcal{V}^k(M) $。

2 设 $ \alpha \in \Omega^r(M) $、$ \beta \in \Omega(M) $，并设 $ v \in \mathcal{V}(M) $。证明
\[ v \lrcorner (\alpha \wedge \beta) = (v \lrcorner \alpha) \wedge \beta + (-1)^r \alpha \wedge (v \lrcorner \beta) . \]

3 验证例 4.17(b) 的证明中所作的陈述。

4 对 $ \alpha \in \Omega^1(M) $ 与 $ v \in \mathcal{V}(M) $，在局部坐标中计算 $ d\langle \alpha, v \rangle $。
