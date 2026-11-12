2.6 命题 设 $ (X, \mathcal{A}, \mu) $ 是测度空间。

(a) 对 $ A \in \mathcal{A} $ 与 $ M \in \mathcal{M}_{\mu} $，定义 $ \overline{\mu}(A \cup M) := \mu(A) $。则 $ \overline{\mu} $ 是 $ \overline{\mathcal{A}}_{\mu} $ 上一个良定义的集函数，并且 $ (X, \overline{\mathcal{A}}_{\mu}, \overline{\mu}) $ 是一个完备测度空间，满足 $ \overline{\mu} \supset \mu $（也就是说，$ \overline{\mu} $ 延拓 $ \mu $）。

(b) 若 $ (X, \mathcal{B}, \nu) $ 是完备测度空间且 $ \nu \supset \mu $，则 $ \nu \supset \overline{\mu} $。

证明 (i) 我们首先证明 $ \overline{\mathcal{A}}_{\mu} $ 是 $ \sigma $-代数。显然 $ X $ 属于 $ \overline{\mathcal{A}}_{\mu} $。设 $ A_{0} \in \overline{\mathcal{A}}_{\mu} $。则存在 $ A \in \mathcal{A} $、$ N \in \mathcal{N}_{\mu} $ 与 $ M \subset N $，使得 $ A_{0} = A \cup M $。由 $ M \subset N $ 可得 $ M^{c} = N^{c} \cup (N \cap M^{c}) $，于是有

\[ A_{0}^{c} = A^{c} \cap M^{c} = (A^{c} \cap N^{c}) \cup (A^{c} \cap N \cap M^{c}) . \]

由于 $ A $ 与 $ N $ 都属于 $ \mathcal{A} $，$ A^{c} \cap N^{c} $ 亦然。此外，$ A^{c} \cap N \cap M^{c} $ 属于 $ \mathcal{M}_{\mu} $，因为它包含在 $ \mu $-零集 $ N $ 中。因此 $ A_{0}^{c} \in \overline{\mathcal{A}}_{\mu} $。最后，设 $ (B_{j}) $ 是 $ \overline{\mathcal{A}}_{\mu} $ 中的序列。则存在序列 $ (A_{j}) $（在 $ \mathcal{A} $ 中）、$ (N_{j}) $（在 $ \mathcal{N}_{\mu} $ 中）以及 $ (M_{j}) $（在 $ \mathfrak{P}(X) $ 中），使得 $ M_{j} \subset N_{j} $ 且 $ B_{j} = A_{j} \cup M_{j} $ 对 $ j \in \mathbb{N} $ 成立。由于 $ \bigcup N_{j} $ 是 $ \mu $-零集且包含 $ \bigcup M_{j} $，并且 $ \mathcal{A} $ 是 $ \sigma $-代数，我们有

\[ \bigcup B_{j} = \left(\bigcup A_{j}\right) \cup \left(\bigcup M_{j}\right) \in \overline{\mathcal{A}}_{\mu} . \]

(ii) 我们证明集函数 $ \overline{\mu} : \overline{\mathcal{A}}_{\mu} \to [0, \infty] $ 是良定义的。取 $ A_{1}, A_{2} \in \mathcal{A} $ 与 $ M_{1}, M_{2} \in \mathcal{M}_{\mu} $，使得 $ A_{1} \cup M_{1} = A_{2} \cup M_{2} $，并设 $ N $ 是一个 $ \mu $-零集，满足 $ M_{2} \subset N $。则 $ A_{1} \subset A_{1} \cup M_{1} \subset A_{2} \cup N $，于是由命题 2.3 得到

\[ \mu(A_{1}) \le \mu(A_{2} \cup N) = \mu(A_{2}) + \mu(N) - \mu(A_{2} \cap N) = \mu(A_{2}) . \]

类似地，我们证明 $ \mu(A_{2}) \le \mu(A_{1}) $。因此 $ \overline{\mu} $ 是良定义的。

(iii) 设 $ A_{0} $ 是 $ \overline{\mu} $-零集，取 $ B \subset A_{0} $。存在 $ A, N \in \mathcal{N}_{\mu} $ 与 $ M \subset N $，使得 $ A_{0} = A \cup M $。因此 $ B \subset A_{0} \subset A \cup N $，从而 $ B $ 属于 $ \mathcal{M}_{\mu} \subset \overline{\mathcal{A}}_{\mu} $，也就是说，$ \overline{\mu} $ 是完备的。

(iv) 按构造，$ \overline{\mu} $ 是 $ \mu $ 的延拓，并且容易看出 $ \overline{\mu} $ 也是 $ \sigma $-可加的。这就证明了 (a)。

(v) 设 $ (X, \mathcal{B}, \nu) $ 是测度空间，满足 $ \mathcal{B} \supset \mathcal{A} $ 与 $ \nu|\mathcal{A} = \mu $。则 $ \mathcal{N}_{\mu} \subset \mathcal{N}_{\nu} $，从而也有 $ \mathcal{M}_{\mu} \subset \mathcal{M}_{\nu} $。若 $ \nu $ 是完备的，即 $ \mathcal{M}_{\nu} \subset \mathcal{B} $，我们就得到 $ \mathcal{M}_{\mu} \subset \mathcal{B} $，因此 $ \overline{\mathcal{A}}_{\mu} \subset \mathcal{B} $。这就证明了 (b)。■

命题 2.6 的 (b) 部分说明 $ (X, \overline{\mathcal{A}}_{\mu}, \overline{\mu}) $ 是 $ (X, \mathcal{A}, \mu) $ 的极小完备扩张。我们称 $ (X, \overline{\mathcal{A}}_{\mu}, \overline{\mu}) $ 与 $ \overline{\mu} $ 为 $ (X, \mathcal{A}, \mu) $ 的**完备化**；我们也说 $ \overline{\mu} $ 是 $ \mu $ 的完备化。这一构造的一个重要例子将出现在定理 5.8 中。

##### 习题

1 对 $ A \subset X $，令 $ \mathcal{A} := \mathcal{A}_{\sigma}(\{A\}) $。令 $ \mu(\varnothing) := 0 $，而对其他情形令 $ \mu(B) := \infty $。证明 $ (X, \mathcal{A}, \mu) $ 是完备测度空间。

2 设 $ (X, \mathcal{A}, \mu) $ 是测度空间，并取 $ A_{1}, \ldots, A_{n} \in \mathcal{A} $，其中 $ n \in \mathbb{N}^{\times} $。证明

\[ \mu\left(\bigcup_{j=1}^{n} A_{j}\right) = \sum_{k=1}^{n} (-1)^{k+1} \sum_{1 \le j_{1} < \cdots < j_{k} \le n} \mu\left(\bigcap_{\ell=1}^{k} A_{j_{\ell}}\right) . \]

3 在测度空间 $ (\mathbb{N}, \mathfrak{P}(\mathbb{N}), \mathcal{H}^{0}) $ 中找出一个递减序列 $ (A_{j}) \in \mathfrak{P}(\mathbb{N})^{\mathbb{N}} $，使得 $ \lim_{j} \mathcal{H}^{0}(A_{j}) $ 存在，但 $ \mathcal{H}^{0}\left(\bigcap_{j} A_{j}\right) \ne \lim_{j} \mathcal{H}^{0}(A_{j}) $。

4 设 $ (X, \mathcal{A}) $ 是可测空间，且 $ \mu : \mathcal{A} \to [0, \infty] $ 是可加的且下连续的。证明 $ (X, \mathcal{A}, \mu) $ 是测度空间。

5 设 $ (X, \mathcal{A}, \mu) $ 是测度空间，取 $ B \in \mathcal{A} $。对 $ A \in \mathcal{A} $，令 $ \mu_{B}(A) := \mu(A \cap B) $。证明 $ (X, \mathcal{A}, \mu_{B}) $ 是测度空间。

6 设 $ (X, \mathcal{A}, \mu) $ 是测度空间，并考虑序列 $ (A_{j}) \in \mathcal{A}^{\mathbb{N}} $。证明以下陈述：

(a) $ \mu(\underline{\lim}_{j} A_{j}) \le \underline{\lim}_{j} \mu(A_{j}) $。

(b) 若存在 $ k \in \mathbb{N} $，使得 $ \mu\left(\bigcup_{j=k}^{\infty} A_{j}\right) < \infty $，则 $ \mu(\overline{\lim}_{j} A_{j}) \ge \overline{\lim}_{j} \mu(A_{j}) $。

(c) 若存在 $ k \in \mathbb{N} $，使得 $ \mu\left(\bigcup_{j=k}^{\infty} A_{j}\right) < \infty $，且序列 $ (A_{j}) $ 收敛，则 $ \mu(\lim_{j} A_{j}) = \lim_{j} \mu(A_{j}) $。

7 证明：对每个测度空间 $ (X, \mathcal{A}, \mu) $，都有 $ (X, \overline{\mathcal{A}}_{\mu}, \overline{\mu}) = (X, \overline{[\mathcal{A}_{\mu}]_{\overline{\mu}}}, \overline{[\overline{\mu}]}) $。

8 设 $ (X, \mathcal{A}, \mu) $ 与 $ (X, \mathcal{A}, \nu) $ 是有限测度空间。证明或反驳：

\[ (X, \overline{\mathcal{A}}, \overline{\mu}) = (X, \overline{\mathcal{A}}, \overline{\nu}) \iff \mathcal{N}_{\mu} = \mathcal{N}_{\nu} . \]

9 设 $ (X, \mathcal{A}) $ 是可测空间，$ \mathcal{N} \subset \mathcal{A} $ 满足

(i) $ \varnothing \in \mathcal{N} $；

(ii) $ (A_{j}) \in \mathcal{N}^{\mathbb{N}} \Rightarrow \bigcup_{j} A_{j} \in \mathcal{N} $；

(iii) $ (A \in \mathcal{A}, B \in \mathcal{N}, A \subset B) \Rightarrow A \in \mathcal{N} $。

构造 $ (X, \mathcal{A}) $ 上的测度 $ \mu $，使得 $ \mathcal{N}_{\mu} = \mathcal{N} $。

10 设 $ X $ 不可数，且 $ \mathcal{A} := \{ A \subset X ; A \text{ 或 } A^{c} \text{ 是可数的} \} $。对 $ A \in \mathcal{A} $，若 $ A $ 可数则令 $ \mu(A) := 0 $，否则令 $ \mu(A) := \infty $。证明 $ (X, \mathcal{A}, \mu) $ 是完备测度空间。

11 设 $ (X, \mathcal{A}, \mu) $ 是测度空间。我们称 $ A \in \mathcal{A} $ 为 **$ \mu $-原子**，若 $ \mu(A) > 0 $，且对每个满足 $ B \subset A $ 的 $ B \in \mathcal{A} $，或者 $ \mu(B) = 0 $，或者 $ \mu(A \setminus B) = 0 $。

(a) 证明：

(i) 设 $ A $ 是 $ \mu $-原子，取 $ B \in \mathcal{A} $ 且 $ B \subset A $。则或者 $ \mu(B) = \mu(A) $，或者 $ \mu(B) = 0 $。

(ii) 设 $ A \in \mathcal{A} $ 满足 $ 0 < \mu(A) < \infty $，并且对每个满足 $ B \subset A $ 的 $ B \in \mathcal{A} $，或者 $ \mu(B) = \mu(A) $，或者 $ \mu(B) = 0 $。则 $ A $ 是 $ \mu $-原子。

(iii) 设 $ \mu $ 是 $ \sigma $-有限的，且 $ A \in \mathcal{A} $ 是 $ \mu $-原子。则 $ \mu(A) < \infty $。

(b) 确定计数测度 $ \mathcal{H}^{0} $ 的全部原子。对习题 1 与习题 10 中的测度重复此问题。

12 设 $ (X, \mathcal{A}, \mu) $ 是完备测度空间。设 $ A \in \mathcal{A} $ 是 $ \mu $-原子，并设 $ B \subset A $。$ B $ 可测吗？说明理由。

13 设 $ (X, \mathcal{A}, \mu) $ 是完备测度空间，取 $ A, N \in \mathcal{A} $，满足 $ \mu(A) > 0 $ 与 $ \mu(N) = 0 $。证明 $ \mu(A \cap N^{c}) > 0 $。
