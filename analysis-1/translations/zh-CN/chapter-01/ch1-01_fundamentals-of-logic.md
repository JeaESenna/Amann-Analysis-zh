## 1 逻辑基础

为了使复杂的数学关系清晰明了，使用符号逻辑的记号是方便的。符号逻辑研究的是那些可以有意义地断定其为真或为假的陈述。也就是说，每个陈述都有真值“真”（T）或“假”（F）。不存在其他可能性，也没有任何陈述既真又假。

陈述的例子有“正在下雨”“天空中有云”以及“本书的所有读者都觉得它很出色”。另一方面，“这句话是假的”不是一个陈述。事实上，如果这句话为真，那么它说它是假的；而如果它为假，则由此推出这句话为真。

任何陈述 $ A $ 都有一个否定 $ \neg A $（“非 $ A $”），它定义为：当 $ A $ 为假时 $ \neg A $ 为真，当 $ A $ 为真时 $ \neg A $ 为假。我们可以用真值表来表示这种关系：



<table border=1 style='margin: auto; word-wrap: break-word;'><tr><td style='text-align: center; word-wrap: break-word;'>$ A $</td><td style='text-align: center; word-wrap: break-word;'>T</td><td style='text-align: center; word-wrap: break-word;'>F</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>$ \neg A $</td><td style='text-align: center; word-wrap: break-word;'>F</td><td style='text-align: center; word-wrap: break-word;'>T</td></tr></table>

当然，在日常语言中“非 A”可以有多种表达方式。例如，如果 A 是陈述“天空中有云”，那么 $ \neg A $ 可以表达为“天空中无云”。陈述“本书的所有读者都觉得它很出色”的否定是“本书至少有一个读者觉得它并不出色”（而不是“本书没有读者觉得它很出色”）。

两个陈述 $A$ 和 $B$ 可以通过合取 $\land$ 和析取 $\lor$ 组合成新的陈述。陈述 $A \land B$（“$A$ 与 $B$”）在 $A$ 与 $B$ 都为真时为真，在所有其他情形下为假。陈述 $A \lor B$（“$A$ 或 $B$”）在 $A$ 与 $B$ 都为假时为假，在所有其他情形下为真。下面的真值表使这些定义一目了然：



<table border=1 style='margin: auto; word-wrap: break-word;'><tr><td style='text-align: center; word-wrap: break-word;'>A</td><td style='text-align: center; word-wrap: break-word;'>B</td><td style='text-align: center; word-wrap: break-word;'>$ A \land B $</td><td style='text-align: center; word-wrap: break-word;'>$ A \lor B $</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>T</td><td style='text-align: center; word-wrap: break-word;'>T</td><td style='text-align: center; word-wrap: break-word;'>T</td><td style='text-align: center; word-wrap: break-word;'>T</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>T</td><td style='text-align: center; word-wrap: break-word;'>F</td><td style='text-align: center; word-wrap: break-word;'>F</td><td style='text-align: center; word-wrap: break-word;'>T</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>F</td><td style='text-align: center; word-wrap: break-word;'>T</td><td style='text-align: center; word-wrap: break-word;'>F</td><td style='text-align: center; word-wrap: break-word;'>T</td></tr><tr><td style='text-align: center; word-wrap: break-word;'>F</td><td style='text-align: center; word-wrap: break-word;'>F</td><td style='text-align: center; word-wrap: break-word;'>F</td><td style='text-align: center; word-wrap: break-word;'>F</td></tr></table>

注意，析取的“或”具有“与/或”的含义，也就是说，“A 或 B”在 A 为真、B 为真、或 A 与 B 都为真时为真。

如果 $E(x)$ 是一个表达式，当 $x$ 被某个指定对象类（汇集、全域）中的对象（成员、事物）替换时，它成为一个陈述，那么 $E$ 就是一个性质。句子“$x$ 具有性质 $E$”的意思是“$E(x)$ 为真”。如果 $x$ 属于一个类 $X$，也就是说，$x$ 是 $X$ 的一个元素，那么我们写作 $x \in X$，否则写作 $x \notin X$。\footnote{用符号（如 $\in$、$=$ 等）缩写陈述时，通常用带斜杠的相应符号（$\notin$、$\neq$ 等）来表示它们的否定。}

那么

\[ \left\{x\in X;E(x)\right\} \]

是所有具有性质 $E$ 的、汇集 $X$ 中的元素 $x$ 组成的类。如果 $X$ 是本书所有读者组成的类，而 $E(x)$ 是陈述“$x$ 戴眼镜”，那么 $\{x \in X; E(x)\}$ 就是所有戴眼镜的本书读者组成的类。

我们用 $ \exists $ 表示量词“存在”。表达式

\[ \exists x\in X:E(x) \]

具有含义“（类）X 中存在（至少）一个对象 x，它具有性质 $ E $”。当恰好存在一个这样的对象时，我们写作 $ \exists! x \in X : E(x) $。

我们用符号 $ \forall $ 表示量词“对所有”。同样，在日常语言中，含有 $ \forall $ 的陈述可以有多种表达方式。例如，

\[ \forall x\in X\colon E(x) \]

意为“（类）X 中的每个（对象）x，陈述 $ E(x) $ 为真”，或“X 中的每个 x 都具有性质 $ E $”。陈述 (1.1) 也可写作

\[ E(x)~,\qquad\forall x\in X~, \]

也就是说，“性质 $E$ 对 $X$ 中的所有 $x$ 均为真”。在诸如 (1.2) 的陈述中，我们通常省去量词 $\forall$，简单地写作

\[ E(x)~,\qquad x\in X~. \]

最后，我们用符号 := 表示“由……定义”。于是

\[ a:=b, \]

意为对象（或符号）$a$ 由对象（或表达式）$b$ 来定义。也可以说“$a$ 是 $b$ 的一个新名称”，或“$a$ 表示 $b$”。当然，$a = b$ 意为对象 $a$ 与 $b$ 相等，也就是说，$a$ 与 $b$ 只是同一个对象（陈述，等等）的两种不同表示。

1.1 例 设 A 和 B 为陈述，X 和 Y 为对象类，E 为一个性质。那么，利用真值表或其他方法，可以容易地验证以下陈述：

(a) $ \neg\neg A:=\neg(\neg A)=A $。

(b)  $ \neg(A \land B) = (\neg A) \lor (\neg B) $。

(c)  $ \neg(A \lor B) = (\neg A) \land (\neg B) $。

(d)  $ \neg(\forall x \in X : E(x)) = (\exists x \in X : \neg E(x)) $。例：陈述“本书的每个读者都戴眼镜”的否定是“本书至少有一个读者不戴眼镜”。

(e)  $ \neg(\exists x \in X : E(x)) = (\forall x \in X : \neg E(x)) $。例：陈述“伦敦有一个秃头男人”的否定是“伦敦没有男人是秃头”。

(f) $ \neg\bigl(\forall x\in X:\bigl(\exists y\in Y:E(x,y)\bigr)\bigr)=\bigl(\exists x\in X:\bigl(\forall y\in Y:\neg E(x,y)\bigr)\bigr) $。

例：陈述“本书的每个读者都觉得第 I 章中至少有一个句子是平凡的”的否定是“本书至少有一个读者觉得第 I 章的每个句子都是不平凡的”。

(g) $ \neg\bigl(\exists x\in X\colon\bigl(\forall y\in Y\colon E(x,y)\bigr)\bigr)=\bigl(\forall x\in X\colon\bigl(\exists y\in Y\colon\neg E(x,y)\bigr)\bigr) $。

例：陈述“有一个伦敦人是每个纽约人的朋友”的否定是“对每个伦敦人，至少有一个纽约人不是他/她的朋友”。$ \blacksquare $\footnote{我们用实心方块表示例子或注的列举的结束，或证明的结束。}

1.2 注 (a) 为清晰起见，在上述例子中，我们一直小心地写出了所有可能的括号。对复杂的陈述，建议采用这种做法。另一方面，只要不产生歧义，省去括号、甚至省去属于符号 $ \in $，理解起来反而更容易。在所有情形下，重要的是量词的顺序。因此，“$ \forall x \exists y : E(x,y) $”与“$ \exists y \forall x : E(x,y) $” 是两个不同的陈述：在第一种情形下，对所有 $ x $ 都存在某个 $ y $ 使得 $ E(x,y) $ 为真。因此 $ y $ 依赖于 $ x $，也就是说，对每个 $ x $ 都必须找到一个（可能）不同的 $ y $ 使得 $ E(x,y) $ 为真。在第二种情形下，只需找到一个固定的 $ y $，使得陈述 $ E(x,y) $ 对所有 $ x $ 都为真。例如，如果 $ E(x,y) $ 是陈述“本书的读者 $ x $ 觉得数学概念 $ y $ 是平凡的”，那么第一个陈述就是“本书的每个读者都觉得至少有一个数学概念是平凡的”。第二个陈述是“存在一个数学概念，本书的每个读者都觉得它是平凡的”。

(b) 利用量词 $ \exists $ 和 $ \forall $，否定就成为一个纯粹“机械”的过程：符号 $ \exists $ 与 $ \forall $（以及 $ \land $ 与 $ \lor $）被互换（不改变顺序），并且出现的陈述被否定（见例 1.1）。例如，陈述 $ \forall x \exists y \forall z: E(x,y,z) $ 的否定是 $ \exists x \forall y \exists z: \neg E(x,y,z) $。$ \blacksquare $

设 $A$ 和 $B$ 为陈述。那么可以定义一个新陈述，即蕴含 $A \Rightarrow B$（“$A$ 蕴含 $B$”），如下：

\[ (A\Rightarrow B):=(\neg A)\lor B. \]

因此，若 $A$ 为真而 $B$ 为假，则 $A \Rightarrow B$ 为假；在所有其他情形下它为真（见例 1.1(a)、(c)）。换言之，当 $A$ 与 $B$ 都为真、或当 $A$ 为假（不论 $B$ 为真还是为假）时，$A \Rightarrow B$ 为真。这意味着一个真陈述不能蕴含一个假陈述，而且一个假陈述蕴含任何陈述——无论真还是假。通常把 $ A \Rightarrow B $ 表达为“要证明 $ B $，只需证明 $ A $”，或“$ B $ 是 $ A $ 为真的必要条件”；换言之，$ A $ 是 $ B $ 的充分条件，而 $ B $ 是 $ A $ 的必要条件。

陈述 A 与 $ B $ 的等价 $ A \Leftrightarrow B $（ $ A $ 与 $ B $ 等价）定义为

\[ (A\Leftrightarrow B):=(A\Rightarrow B)\land(B\Rightarrow A). \]

因此，当 $A \Rightarrow B$ 与其逆命题 $B \Rightarrow A$ 都为真、或当 $A$ 是 $B$ 的充分必要条件（或反之）时，陈述 $A$ 与 $B$ 等价。表达这种等价的另一种常见方式是“$A$ 为真当且仅当 $B$ 为真”。

一个基本的观察是

\[ (A\Rightarrow B)\Leftrightarrow(\lnot B\Rightarrow\lnot A). \]

这直接由 (1.4) 与例 1.1(a) 推出。陈述 $ \neg B \Rightarrow \neg A $ 称为陈述 $ A \Rightarrow B $ 的逆否命题。

例如，如果 $A$ 是陈述“天空中有云”，$B$ 是陈述“正在下雨”，那么 $B \Rightarrow A$ 是陈述“如果正在下雨，那么天空中有云”。它的逆否命题是“如果天空中无云，那么没有在下雨”。

如果 $B \Rightarrow A$ 为真，一般并不能推出 $\neg B \Rightarrow \neg A$ 为真！即使在“没有下雨”的时候，也可能“天空中有云”。

为了定义一个陈述 A，使得只要陈述 B 为真它便为真，我们写作

\[ A:\Leftrightarrow B \]

并说“按定义，若 B 为真则 A 为真”。

在数学中，一个真陈述常称为命题、定理、引理或推论。\footnote{定理、引理与推论都是命题。定理是特别重要的命题。引理是先于某个定理、并为该定理的证明所需要的命题。推论是直接由某个定理得出的命题。} 特别常见的是形如 $ A \Rightarrow B $ 的命题。由于当 A 为假时该陈述自动为真，唯一有意思的情形是 A 为真。因此，要证明 $ A \Rightarrow B $ 为真，只需假设 A 为真，然后证明 B 为真。

证明可以直接进行，也可以“用反证法”进行。在第一种情形下，可以利用（读者易于验证的）事实

\[ (A\Rightarrow C)\land(C\Rightarrow B)\Rightarrow(A\Rightarrow B). \]

如果陈述 $ A \Rightarrow C $ 与 $ C \Rightarrow B $ 已知为真，那么由 (1.6) 可知 $ A \Rightarrow B $ 也为真。如果 $ A \Rightarrow C $ 与 $ C \Rightarrow B $ 未知为真，并且蕴含式 $ A \Rightarrow C $ 与 $ C \Rightarrow B $ 可以类似地分解，那么这一程序可以用来证明 $ A \Rightarrow C $ 与 $ C \Rightarrow B $ 为真。

对于反证法，假设 $B$ 为假，即 $\neg B$ 为真。然后，同时利用 $A$ 为真的假设，证明一个已知为假的陈述 $C$。由这一“矛盾”可知 $\neg B$ 不可能为真，从而 $B$ 为真。

与其证明 $ A \Rightarrow B $，往往更容易证明其逆否命题 $ \neg B \Rightarrow \neg A $。根据 (1.5)，这些陈述是等价的，也就是说，一个为真当且仅当另一个为真。

至此，我们宁愿不为上述概念提供例子，因为它们必然会相当做作。相反，鼓励读者在下一节的证明中识别这些结构（特别参见命题 2.6 的证明）。

前面的讨论是不完备的，因为我们既没有定义“陈述”一词，也没有解释如何判断一个陈述为真还是为假。另一个困难在于我们使用的是英语，而英语如同大多数语言一样，含有许多意义含混的句子。这样的句子不能视为本节意义下的陈述。

为了更牢固地理解演绎规则，需要数理逻辑。它提供一种形式语言，其中出现的唯一陈述是那些能借助明确构造从一个给定的“公理”系统推导出来的陈述。这些公理是“不可证明的”陈述，被视为基本的普遍真理。

我们不想在这里进一步深入这样的形式系统。相反，感兴趣的读者可参阅附录“数学逻辑导引”，那里对这些思想作了更精确的阐述。

##### 习题

1 “辛普森一家今晚要来做客，”莫德·弗兰德斯宣布。“全家——霍默、玛琦和他们的三个孩子，巴特、丽莎和玛吉？”内德·弗兰德斯沮丧地问道。莫德从不放过任何激发她丈夫逻辑思维的机会，她答道：“我这样解释吧：如果霍默来，那么他也会带玛琦来。两个孩子——玛吉和丽莎——中至少有一个要来。玛琦或巴特中恰好有一个要来，但不会两个都来。要么巴特和丽莎都来，要么都不来。而且如果玛吉来，那么丽莎和霍默也来。所以现在你知道今晚谁来做客了。”

谁来做客？

2 在德古拉伯爵的图书馆里，没有两本书含有完全相同的单词数。书的数量大于所有书中单词的总数。这些陈述足以确定德古拉伯爵图书馆中至少一本书的内容。这本书里是什么？
