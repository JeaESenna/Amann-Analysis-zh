# 分析学 III（Analysis III）中文译本

Herbert Amann、Joachim Escher《Analysis III》的中文译本。底本为 Silvio Levy 与
Matthew Cargo 英译本（Birkhäuser Verlag，2009；德文原版 2001）。

- **范围**：第 IX–XII 章 + 参考文献
- **译文源**：91 个 Markdown 单元（`translations/zh-CN/`）
- **排版源**：`tex/`，主文件 `main.tex`，插图 79 张
- **成品 PDF**：[`分析学III_中文译本_修订版_2026-11-11.pdf`](分析学III_中文译本_修订版_2026-11-11.pdf)（387 页）
- **编译结果**：XeLaTeX 两遍，387 页（与成品 PDF 一致）

## 内容对照

| 章 | 标题 | 译文源 | 排版源 | 单元数 |
|---|---|---|---|---|
| — | 出版信息、前言 | `translations/zh-CN/chapter-00/` | `tex/qyxf/00-front-matter.tex` | 1 |
| IX | 测度论基础 | `translations/zh-CN/chapter-09/` | `tex/qyxf/01-chapter-09.tex` | 13 |
| X | 积分理论 | `translations/zh-CN/chapter-10/` | `tex/qyxf/02-chapter-10.tex` | 30 |
| XI | 流形与微分形式 | `translations/zh-CN/chapter-11/` | `tex/qyxf/03-chapter-11.tex` | 30 |
| XII | 流形上的积分 | `translations/zh-CN/chapter-12/` | `tex/qyxf/04-chapter-12.tex` | 16 |
| — | 参考文献（英文原样） | `translations/zh-CN/chapter-12b/` | `tex/qyxf/05-references.tex` | 1 |

术语与符号约定见 `glossary/术语表.md`、`glossary/符号表.md`。

## 质量与已知问题（重要）

第三卷分两种流程完成，**第 IX 章与第 X–XII 章的审校强度不同**：

- **第 IX 章（测度论基础）**：完整三线审校（14 单元 × 3 线 = **42 份报告**），审校闸门 + 质量闸门双闸门 PASS，2026-10-31 交付。
- **第 X–XII 章**：因**成本**原因采用「省钱版」流程——
  - 合并「视觉转录 + 翻译」为一步（不再生成英文 `vision.md` 中间产物）；
  - 降低推理档位（翻译 / 译文审校 high、数学审校 max）；
  - 审校保留 **math + translation 双线全量、不抽样**（第 X 章 60/60、第 XI 章 60/60、第 XII 章 32/32 份报告）；
  - **layout（排版）审校按预算暂缓**，因此最终交付的审校闸门（review gate）状态是 **SKIPPED（不是 PASS）**；
  - 以此把每章成本控制在约 **¥14–19**（三线全量方案约 ¥52–69/章）。
- **其他已知限制**：
  - md ↔ 页图机械核对没有直接复用第二卷那套脚本，改由卷内页图生成器与核对脚本替代；
  - 原书 Index 整节不收入；References 保留英文原样、不翻译；
  - 原书排印缺陷按原样保留并登记。
- **结论**：第 IX 章与第二卷同档；**第 X–XII 章缺少排版审校**，版面、公式落位与插图相关问题的风险更高，阅读与引用请以原著为准。

## 编译

```powershell
cd tex
$env:TEXINPUTS = (Get-Location).Path + ';'
xelatex -interaction=nonstopmode main.tex
xelatex -interaction=nonstopmode main.tex
```

## 说明

- 译文源一节（或一个习题单元）一个文件，与 `tex/qyxf/` 中的各章逐节对应；
  书前「译者的话」只存在于 `tex/qyxf/00-front-matter.tex`（由排版流程写入）。
- 参考文献按原书保留英文原样，未作翻译；原书索引按计划未收入译本。
- 本译本由 AI 辅助完成，可能存在错误；引用与教学请以原著为准，详见卷首「译者的话」。
