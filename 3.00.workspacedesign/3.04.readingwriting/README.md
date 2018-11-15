# 读取和写入工作流程

默认情况下，“生成工作空间”对话框使用单个读模块和单个写模块创建工作空间。但是，这并不意味着工作空间永远受限于此。此外，FME可以使用以下方式读/写数据：

* 多个读模块，多个写模块或两者兼而有之
* FeatureReader和/或FeatureWriter转换器
* 集成转换器，如DropboxConnector, Email, HTTPCaller等。

