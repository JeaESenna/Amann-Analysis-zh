# 分析学 II（Analysis II）中文译本

Herbert Amann、Joachim Escher《Analysis II》的中文译本。底本为 Silvio Levy 与
Matthew Cargo 英译本（Birkhäuser Verlag，2008）。

- **范围**：第 VI–VIII 章 + 参考文献
- **译文源**：61 个 Markdown 单元（`translations/zh-CN/`）
- **排版源**：`tex/`，主文件 `main.tex`，插图 98 张
- **成品 PDF**：[`分析学II_中文译本_修订版_2026-10-27.pdf`](分析学II_中文译本_修订版_2026-10-27.pdf)（329 页）
- **编译结果**：XeLaTeX 两遍，329 页（与成品 PDF 一致）

## 内容对照

| 章 | 标题 | 译文源 | 排版源 | 单元数 |
|---|---|---|---|---|
| — | 出版信息、前言 | `translations/zh-CN/chapter-00/` | `tex/qyxf/00-front-matter.tex` | 1 |
| VI | 一元积分学 | `translations/zh-CN/chapter-06/` | `tex/qyxf/01-chapter-06.tex` | 16 |
| VII | 多元微分学 | `translations/zh-CN/chapter-07/` | `tex/qyxf/02-chapter-07.tex` | 22 |
| VIII | 线积分 | `translations/zh-CN/chapter-08/` | `tex/qyxf/03-chapter-08.tex` | 21 |
| — | 参考文献（英文原样） | `translations/zh-CN/chapter-09/` | `tex/qyxf/04-references.tex` | 1 |

含习题的单元单独成文件（文件名带 `b`，例如 `ch7-01c_exercises.md`）。
术语与符号约定见 `glossary/术语表.md`、`glossary/符号表.md`。

## 质量与已知问题（重要）

第二卷走的是本项目中**最完整**的流程：

- **三线审校**：第 VI–VIII 章与前置页全部经过 math / translation / layout 三条独立审校线（收尾轮一轮即 **69 份报告**），并经审校闸门与质量闸门（review / quality 双闸门）通过后才交付。
- **交付后缺陷登记**：转换层 `\middle` 命令粘连问题（一处内积竖线显示异常）在交付当天发现，重建后修复。
- **已登记、未在交付版修正的遗留**（如需处理应走完整新轮次）：
  - 9 处行内公式空格（书写规范检查待办，不影响 PDF 数学排版）；
  - 1 处术语需改译文、约 40 条术语待人工裁决（已登记，本次未执行）；
  - 原书自身的排印缺陷按「原样保留」原则保留并登记，不属于 OCR / 翻译错误；
  - 脚注审计另有 2 条 unresolved，经人工核对为审计工具误报。
- **结论**：三卷中可靠性相对最高，但仍不是出版社级编校；引用与教学请以原著为准。

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
- 参考文献按原书保留英文原样，未作翻译。
- 本译本由 AI 辅助完成，可能存在错误；引用与教学请以原著为准，详见卷首「译者的话」。
