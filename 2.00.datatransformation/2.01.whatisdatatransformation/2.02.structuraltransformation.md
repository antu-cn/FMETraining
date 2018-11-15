# 结构转换

转换数据集的结构需要使用FME来操作_模式_。FME使用术语“模式”，但您可能将其视为_数据模型_。

## 模式概念

_**模式**_定义了一个数据集的结构。每个数据集都有其独特的模式; 它包括定义或限制其内容的图层，属性和其他规则。

### 模式表示

创建新工作空间时，FME会扫描源数据集。它创建了一个_**读模块，**_其图层显示在工作空间画布的左侧，而一个_**写模块**_的图层显示在工作空间画布的右侧：

[![](../../.gitbook/assets/img2.003.readerwriterfeaturetypes.png)](https://github.com/safesoftware/FMETraining/blob/Desktop-Basic-2018/DesktopBasic2Transformation/Images/Img2.003.ReaderWriterFeatureTypes.png)

|  技巧 |
| :--- |
|  此图中的每个对象表示源数据集中的细分。在FME术语中，这些对象称为**要素类型**。多个要素类型表示源数据集中有多个图层。 |

### 读模块模式

对于读模块，通过单击每个要素类型对象上的齿轮图标，可以显示有关模式的更多信息：

[![](../../.gitbook/assets/img2.004.readerfeaturetypepropertiesbutton.png)](https://github.com/safesoftware/FMETraining/blob/Desktop-Basic-2018/DesktopBasic2Transformation/Images/Img2.004.ReaderFeatureTypePropertiesButton.png)

此“要素类型”对话框有许多选项卡。在“参数”选项卡下面是一组常规参数，例如要素类型的名称（在本例中为“库”），允许的几何类型以及父数据集的名称：

[![](../../.gitbook/assets/img2.005.readerfeaturetypepropertiesdialog.png)](https://github.com/safesoftware/FMETraining/blob/Desktop-Basic-2018/DesktopBasic2Transformation/Images/Img2.005.ReaderFeatureTypePropertiesDialog.png)

“用户属性”选项卡显示属性列表。每个属性由其名称，数据类型，宽度和小数位数定义：

[![](../../.gitbook/assets/img2.006.readerfeaturetypepropertiesattrs.png)](https://github.com/safesoftware/FMETraining/blob/Desktop-Basic-2018/DesktopBasic2Transformation/Images/Img2.006.ReaderFeatureTypePropertiesAttrs.png)

每个图层都有不同的名称，也可以有一组完全不同的属性。所有这些信息都构成了读模块模式。字面意思是\*\*\*“我们拥有的”\*\*\*。

### 写模块模式

与读模块一样，每个写模块都有一组详细的模式信息，可通过打开要素类型的对话框来访问：

[![](../../.gitbook/assets/img2.007.writerfeaturetypepropertiesbutton.png)](https://github.com/safesoftware/FMETraining/blob/Desktop-Basic-2018/DesktopBasic2Transformation/Images/Img2.007.WriterFeatureTypePropertiesButton.png)

默认情况下，写模块模式（\*\*\*“我们想要的”\*\*\*）是源的镜像，因此转换的输出将是输入的副本。此要素允许用户无需进一步编辑即可从格式转换为格式（_快速转换_）。

如果_“我们想要的”_与默认模式定义不同，我们必须使用称为_**模式编辑**_的技术来更改它。

|  技巧 |
| :--- |
|  FME支持400多种格式，数据细分的方式几乎一样多。最常见的术语是图层，表，类，类别，级别或对象。  虽然这些细分的一般FME术语是**要素类型**，但FME Workbench中的所有对话框都使用特定格式的术语，其中正确的术语适用。 |

