## 2 测度

现在我们将引入测度的概念，并研究它的一般性质，即那些或多或少直接由定义得出的性质。由此得到的规则为我们更深入地探讨测度与积分理论奠定了基础。

以下

• $ X $ 是非空集合，且 $ [0,\infty] := \mathbb{R}^{+} \cup \{\infty\} $。

还要回顾第 I.10 节与第 II.5 节中关于 $ \overline{\mathbb{R}} $ 的算术与拓扑的诸事实。

##### 集函数

设 $ \mathcal{C} $ 是 $ X $ 的子集族，且 $ \varnothing \in \mathcal{C} $。设 $ \varphi $ 是从 $ \mathcal{C} $ 到 $ [0,\infty] $ 的映射（或**集函数**），且 $ \varphi(\varnothing) = 0 $。我们称 $ \varphi $ 是 **$ \sigma $-次可加的**，若对 $ \mathcal{C} $ 中的每个序列 $ (A_j) $，只要 $ \bigcup_j A_j \in \mathcal{C} $\footnote{此处及以下，$ \bigcup_j A_j $ 均理解为 $ \bigcup_{j=0}^{\infty} A_j $，等等。}，就有

\[ \varphi\left(\bigcup_j A_j\right) \le \sum_j \varphi(A_j)\,. \tag{2.1} \]

我们称从 $ \mathcal{C} $ 到 $ [0,\infty] $ 或 $ \mathbb{K} $ 且满足 $ \varphi(\varnothing) = 0 $ 的映射 $ \varphi $ 是 **$ \sigma $-可加的**，若对 $ \mathcal{C} $ 中每个满足 $ \bigcup_j A_j \in \mathcal{C} $ 的**不交的**序列 $ (A_j) $，有

\[ \varphi\left(\bigcup_j A_j\right) = \sum_j \varphi(A_j) \tag{2.2} \]

若 (2.1) 对由 $ \mathcal{C} $ 的子集构成的每个有限族 $ A_0, \ldots, A_m $（$ \bigcup_j A_j \in \mathcal{C} $）都成立，则称 $ \varphi $ 是**次可加的**。同样，若 (2.2) 对由 $ \mathcal{C} $ 的子集构成的每个两两不交有限族 $ A_0, \ldots, A_m $（$ \bigcup_j A_j \in \mathcal{C} $）都成立，则称 $ \varphi $ 是**可加的**。最后，我们称 $ \varphi\colon \mathcal{C} \to [0,\infty] $ 是 **$ \sigma $-有限的**，若 $ X $ 属于 $ \mathcal{C} $，且存在 $ \mathcal{C} $ 中的序列 $ (A_j) $，使得 $ \bigcup_j A_j = X $，并且对 $ j \in \mathbb{N} $ 有 $ \varphi(A_j) < \infty $。若 $ \varphi(X) < \infty $，则称 $ \varphi $ 是**有限的**。

2.1 注 (a) 每个 $ \sigma $-可加的集函数都是可加的；每个 $ \sigma $-次可加的集函数都是次可加的。

(b) 设 $ \varphi $ 是从 $ \mathcal{C} $ 到 $ [0,\infty] $［或到 $ \mathbb{K} $］的 $ \sigma $-可加映射。若 $ (A_j) \in \mathcal{C}^{\mathbb{N}} $ 不交且 $ \bigcup_j A_j \in \mathcal{C} $，则级数 $ \sum_j \varphi(A_j) $ 在 $ [0,\infty] $［或 $ \mathbb{K} $］中**绝对**收敛，也就是说，它可以任意重排而不影响其和。

证明 这由 (2.2) 推出，因为 $ \varphi\left(\bigcup_j A_j\right) $ 不依赖于 $ A_j $ 的排序。■

(c) 映射

\[ \mathfrak{P}(X) \to [0,\infty]\,,\quad A \mapsto \begin{cases} 1\,, & A \ne \varnothing\,, \\ 0\,, & A = \varnothing\,, \end{cases} \]

是 $ \sigma $-次可加的；它是 $ \sigma $-可加的当且仅当 $ X $ 只有一个元素。■

##### 测度空间

设 $ \mathcal{A} $ 是 $ X $ 上的 $ \sigma $-代数，且 $ \mu\colon \mathcal{A} \to [0,\infty] $ 是 $ \sigma $-可加的。我们称 $ \mu $ 是 $ X $ 上（或 $ \mathcal{A} $ 上）的（正）**测度**\footnote{实际上，指定 $ \mathcal{A} $ 是多余的，因为 $ \mathcal{A} $ 是 $ \mu $ 的定义域。}，并称 $ (X, \mathcal{A}, \mu) $ 为**测度空间**。若 $ \mu(X) = 1 $，我们还称 $ \mu $ 为**概率测度**，称 $ (X, \mathcal{A}, \mu) $ 为**概率空间**。

2.2 例 (a) 对固定的 $ a \in X $ 与 $ A \subset X $，定义

\[ \delta_a(A) := \begin{cases} 1\,, & a \in A\,, \\ 0\,, & a \notin A\,, \end{cases} \]

则 $ \delta_a\colon \mathfrak{P}(X) \to [0,\infty] $ 是概率测度，即 $ X $ 上在点 $ a $ 处（或以 $ a $ 为支撑）的**狄拉克测度**。

(b) 对 $ A \subset X $ 定义 $ \mathcal{H}^0(A) := \operatorname{Num}(A) $。则 $ \mathcal{H}^0\colon \mathfrak{P}(X) \to [0,\infty] $ 是测度，即 $ X $ 上的**计数测度**。它是有限的［或 $ \sigma $-有限的］当且仅当 $ X $ 是有限的［或可数的］。

(c) 对 $ A \subset X $，令 $ \mu(A) := 0 $（当 $ A = \varnothing $ 时），否则令 $ \mu(A) := \infty $。则 $ (X, \mathfrak{P}(X), \mu) $ 是测度空间。

(d) 设 $ (X, \mathcal{A}, \mu) $ 是测度空间，并取 $ A \in \mathcal{A} $。则 $ (A, \mathcal{A} \mid A, \mu \mid A) $ 也是测度空间。■

##### 测度的性质

我们在此汇集处理测度时最重要的规则。

2.3 命题 设 $ (X, \mathcal{A}, \mu) $ 是测度空间。对 $ A, B \in \mathcal{A} $ 与 $ (A_j) \in \mathcal{A}^{\mathbb{N}} $，有：

(i) $ \mu(A \cup B) + \mu(A \cap B) = \mu(A) + \mu(B) $。

(ii) 若 $ A \subset B $ 且 $ \mu(A) < \infty $，则 $ \mu(B \setminus A) = \mu(B) - \mu(A) $。

(iii) $ A \subset B \implies \mu(A) \le \mu(B) $，也就是说，$ \mu $ 是递增的。\footnote{这指的是由 $ (\mathfrak{P}(X), \subset) $ 在 $ \mathcal{A} $ 上诱导的自然序；参见例 I.44(a) 与 (b)。除“递增的”之外，我们也可以说单调的。}

(iv) 若 $ A_0 \subset A_1 \subset A_2 \subset \cdots $，则 $ \mu(A_k) \uparrow \mu\left(\bigcup_j A_j\right) $。

(v) 若 $ A_0 \supset A_1 \supset A_2 \supset \cdots $ 且 $ \mu(A_0) < \infty $，则 $ \mu(A_k) \downarrow \mu\left(\bigcap_j A_j\right) $。

(vi) $ \mu\left(\bigcup_j A_j\right) \le \sum_j \mu(A_j) $，也就是说，$ \mu $ 是 $ \sigma $-次可加的。

证明 (i) 由 $ A \cup B = A \cup (B \setminus A) $ 与 $ A \cap (B \setminus A) = \varnothing $，根据注 2.1(a) 可得

\[ \mu(A \cup B) = \mu(A) + \mu(B \setminus A)\,. \tag{2.3} \]

类似地，由 $ B = (A \cap B) \cup (B \setminus A) $ 与 $ (A \cap B) \cap (B \setminus A) = \varnothing $ 可得

\[ \mu(A \cap B) + \mu(B \setminus A) = \mu(B)\,. \tag{2.4} \]

将 (2.3) 与 (2.4) 相加，得到

\[ \mu(A \cup B) + \mu(A \cap B) + \mu(B \setminus A) = \mu(A) + \mu(B) + \mu(B \setminus A)\,. \]

若 $ \mu(B \setminus A) $ 有限，则结论成立。若 $ \mu(B \setminus A) = \infty $，则由 (2.3) 与 (2.4) 得到 $ \mu(A \cup B) = \mu(B) = \infty $，结论同样得证。

(ii) 由于 $ A \subset B $，有 $ B = A \cup (B \setminus A) $；但 $ A $ 与 $ B \setminus A $ 不交，故 $ \mu(B) = \mu(A) + \mu(B \setminus A) $。按假设 $ \mu(A) < \infty $，于是得到 $ \mu(B) - \mu(A) = \mu(B \setminus A) $。

(iii) 与 (ii) 一样，有 $ \mu(B) = \mu(A) + \mu(B \setminus A) $，从而 $ \mu(B) \ge \mu(A) $。

(iv) 令 $ A_{-1} := \varnothing $，并对 $ k \in \mathbb{N} $ 令 $ B_k := A_k \setminus A_{k-1} $。按假设，$ (B_k) $ 是 $ \mathcal{A} $ 中的不交序列，且 $ \bigcup_{k=0}^{\infty} B_k = \bigcup_{j=0}^{\infty} A_j $，$ \bigcup_{k=0}^{m} B_k = A_m $。因此 $ \mu $ 的 $ \sigma $-可加性蕴含

\[ \mu\left(\bigcup_j A_j\right) = \mu\left(\bigcup_k B_k\right) = \lim_{m \to \infty} \sum_{k=0}^{m} \mu(B_k) = \lim_{m \to \infty} \mu\left(\bigcup_{k=0}^{m} B_k\right) = \lim_{m \to \infty} \mu(A_m)\,. \]

(v) 若 $ (A_k) $ 是 $ \mathcal{A} $ 中的递减序列，则 $ (A_0 \setminus A_k) $ 递增。此外，

\[ A_0 \setminus \left(\bigcap_k A_k\right) = A_0 \cap \left(\bigcap_k A_k\right)^c = \bigcup_k \left(A_0 \cap A_k^c\right) = \bigcup_k (A_0 \setminus A_k)\,. \]

利用 (ii) 与 (iv)，得到

\[ \mu(A_0) - \mu\left(\bigcap_k A_k\right) = \mu\left(A_0 \setminus \left(\bigcap_k A_k\right)\right) = \mu\left(\bigcup_k (A_0 \setminus A_k)\right) \]

\[ = \lim_{m \to \infty} \mu(A_0 \setminus A_m) = \mu(A_0) - \lim_{m \to \infty} \mu(A_m)\,, \]

由此得到结论。

(vi) 令 $ B_0 := A_0 $，并对 $ k \in \mathbb{N}^{\times} $ 令 $ B_k := A_k \setminus \left(\bigcup_{j=0}^{k-1} A_j\right) $。$ \mathcal{A} $ 中的序列 $ (B_k) $ 满足 $ \bigcup_k B_k = \bigcup_k A_k $，且对 $ k \in \mathbb{N} $ 有 $ B_k \subset A_k $。由 (iii) 与 $ \mu $ 的 $ \sigma $-可加性，有

\[ \mu\left(\bigcup_k A_k\right) = \mu\left(\bigcup_k B_k\right) = \sum_k \mu(B_k) \le \sum_k \mu(A_k)\,.\quad \blacksquare \]

2.4 注 (a) 命题 2.3 的 (iv) 与 (v) 分别表达了测度的**下连续性**与**上连续性**。

(b) 当 $ \mathcal{A} $ 是代数且 $ \mu\colon \mathcal{A} \to [0,\infty] $ 可加时，(i)–(iii) 显然仍然成立。

(c) 若 $ \mathcal{S} $ 是 $ X $ 上的代数，且 $ \mu\colon \mathcal{S} \to [0,\infty] $ 可加、单调并且 $ \sigma $-有限，则存在 $ \mathcal{S} $ 中的不交序列 $ (B_k) $，使得 $ \bigcup_k B_k = X $，且对 $ k \in \mathbb{N} $ 有 $ \mu(B_k) < \infty $。

证明 由于 $ \mu $ 的 $ \sigma $-有限性，存在 $ \mathcal{S} $ 中的序列 $ (A_j) $，使 $ \bigcup_j A_j = X $ 且 $ \mu(A_j) < \infty $。令 $ B_0 := A_0 $，并对 $ k \in \mathbb{N}^{\times} $ 令 $ B_k := A_k \setminus \bigcup_{j=0}^{k-1} A_j $，容易验证 $ (B_k) $ 具有所述性质。■

##### 零集

设 $ (X, \mathcal{A}, \mu) $ 是测度空间。满足 $ \mu(N) = 0 $ 的集合 $ N \in \mathcal{A} $ 称为 **$ \mu $-零集**。我们用 $ \mathcal{N}_\mu $ 记所有 $ \mu $-零集构成的集合。若 $ \mu $-零集的任何子集都属于 $ \mathcal{A} $，则称测度 $ \mu $ 或测度空间 $ (X, \mathcal{A}, \mu) $ 是**完备的**。

2.5 注 (a) 对 $ M \in \mathcal{A} $ 与满足 $ M \subset N $ 的 $ N \in \mathcal{N}_\mu $，有 $ M \in \mathcal{N}_\mu $。

证明 这由 $ \mu $ 的单调性推出。■

(b) 可数多个 $ \mu $-零集的并是 $ \mu $-零集。

证明 这由 $ \mu $ 的 $ \sigma $-次可加性推出。■

(c) 测度 $ \mu $ 完备当且仅当 $ \mu $-零集的每个子集都是 $ \mu $-零集。

证明 这是 (a) 的推论。■

(d) 若 $ \mathcal{A} = \mathfrak{P}(X) $，则 $ \mu $ 是完备的。例如，狄拉克测度与计数测度都是完备的。■

我们用

\[ \mathcal{M}_\mu := \{\, M \subset X \,; \ \exists\, N \in \mathcal{N}_\mu \text{ 使得 } M \subset N \,\} \]

记所有 $ \mu $-零集的子集构成的集合。显然，$ \mu $ 完备当且仅当 $ \mathcal{M}_\mu $ 包含于 $ \mathcal{A} $。因此，对不完备的测度空间，\footnote{推论 5.29 将表明存在不完备的测度空间。}

\[ \overline{\mathcal{A}}_\mu := \{\, A \cup M \,; \ A \in \mathcal{A},\ M \in \mathcal{M}_\mu \,\} \]

确实扩充了 $ \mathcal{A} $。下一个命题表明，$ \overline{\mathcal{A}}_\mu $ 是一个 $ \sigma $-代数，它带有一个在 $ \mathcal{A} $ 上与 $ \mu $ 一致的完备测度。
