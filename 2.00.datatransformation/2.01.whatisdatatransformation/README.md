# 什么是数据转换

**数据转换** 是FME处理数据的能力。转换步骤发生在格式转换过程中。读取，转换数据，然后将其写入所选格式。

![](../../.gitbook/assets/img2.002.transformationinfme.png)

## 数据转换类型

数据转换可以细分为两种不同的类型： _结构转换_ 和 _内容转换_.

### 结构转型

结构转型可能更好地称为“重组”。它指的是FME在几乎无限数量的安排中将数据从源传送到目标的能力。

这包括合并数据的能力（如上图所示），划分数据，重新排序数据和定义自定义数据结构。

通过处理其模式来执行变换数据集的结构。

### 内容转换

内容转换可能更好地称为“修订”。它指的是改变数据集内容的能力。

操纵要素的几何或计算新的属性值是FME如何转换内容的最佳示例。

内容转换可以独立进行，也可以与结构转换同时进行。

|  Flibble先生说... |
| :--- |
|  Flibble先生 - 经过认证的FME小丑 - 来这里招待你。这里有一个谜语，但你能解决它吗？  使用FME定义的最常见格式转换是从Esri Shapefile到哪种格式？  [1. Esri Geodatabase](http://52.73.3.37/fmedatastreaming/Manual/QAResponse2017.fmw?chapter=2&question=1&answer=1&DestDataset_TEXTLINE=C%3A%5CFMEOutput%5CQAResponse.html) [2. AutoCAD DXF/DWG](http://52.73.3.37/fmedatastreaming/Manual/QAResponse2017.fmw?chapter=2&question=1&answer=2&DestDataset_TEXTLINE=C%3A%5CFMEOutput%5CQAResponse.html) [3. Google KML](http://52.73.3.37/fmedatastreaming/Manual/QAResponse2017.fmw?chapter=2&question=1&answer=3&DestDataset_TEXTLINE=C%3A%5CFMEOutput%5CQAResponse.html) [4. Esri Shapefile](http://52.73.3.37/fmedatastreaming/Manual/QAResponse2017.fmw?chapter=2&question=1&answer=4&DestDataset_TEXTLINE=C%3A%5CFMEOutput%5CQAResponse.html)  如果您在课堂上，请进行分组投票！ |

