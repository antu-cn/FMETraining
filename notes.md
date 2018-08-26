# 说明

## 更新过程
- 编辑chapters.xlsx以反映所需的书籍结构
- 另存为chapters.csv
- 编辑edits.json以反映所需的编辑（替换或添加包含）
- 在book目录中运行generateChapters.py
## 手动更新步骤
- Integration2LabDemonstration / 2.26.IntegratedInspection.md有一个添加的include（PlacingAnInspectorTransformer），必须从DesktopBasic2Transformation / 2.11.DataInspectionFromWorkbench.md手动更新，以及它链接的任何图像。
- generateChapters.py将成功只下载所需的外部部分，但目前如果它们已经存在，编辑将被搞砸。基本上需要从头开始生成工作。
## 改进
- 将chapters.xlsx与edits.json结合起来？
- 使用edits.py修复现有文件问题
- 更好的脚本文档
- 在generateChapters.py中创建函数
- 允许选择下载分支
- 更好地处理现有部分
- 命令行选择
