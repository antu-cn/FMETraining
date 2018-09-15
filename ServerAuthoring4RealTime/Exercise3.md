  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习4.3
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
建筑更新通知系统
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数据</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">建筑脚印（Esri Shapefile）</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">总体目标</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">触发对数据库的实时更新</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">处理目录监视通知</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">无</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">结束工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAuthoring\RealTime-Ex3-Complete.fmw
</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在您已经学会了如何运行工作空间以响应通知，现在是时候采用该基本工作空间并根据您的总体目标进行调整：为您的公司数据库提供实时更新。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">实现此目标的下一步是了解如何从通知中提取信息并配置FME工作空间以处理传入的数据。</font></font></p>
<hr>

<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
Vector小姐说......
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
这个练习在练习2结束的地方继续。你必须完成练习2才能进行这个练习。
</font></font></td>
</tr>
</tbody></table>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）创建工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动FME Workbench并从空工作空间开始。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">从菜单栏中选择“读模块”&gt;“添加读模块”。</font><font style="vertical-align: inherit;">提示时设置参数如下：</font></font></p>
<table>
<tbody><tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">读模块格式</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">文本文件</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">读模块数据集</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\readme.txt</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">读模块参数</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">一次读取整个文件：是的</font></font></td>
</tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">我们现在使用什么文本文件来源并不重要; </font><font style="vertical-align: inherit;">在此步骤中设置源数据集只是为了满足文本文件读模块的要求。</font><font style="vertical-align: inherit;">在运行时，源数据集将被传入消息的内容替换。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）添加JSONFlattener</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在在文本文件读模块之后将JSONFlattener转换器添加到工作空间。</font><font style="vertical-align: inherit;">传入消息的格式为JSON，此转换器将在画布上暴露属性 - 使它们可用。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">检查转换器参数，并在JSON Document参数下选择属性</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">text_line_data</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">作为JSON内容的来源。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将Logger转换器添加到JSONFlattener上的每个输出端口。</font></font></p>
<hr>

<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
Workbench博士说......
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

我们可以使用JSON读模块而不是使用文本读模块&gt; JSONFlattener。</font><font style="vertical-align: inherit;">我们为什么不呢？</font><font style="vertical-align: inherit;">JSON读模块需要一个具有有效模式的源文件。</font><font style="vertical-align: inherit;">在练习的这个阶段，我们还没有具有此结构的文件。
</font></font></td>
</tr>
</tbody></table>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）发布到FME Server</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将工作空间发布到FME Server，在Job Submitter服务下注册它。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）更新订阅</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在登录到FME Server Web界面并导航到“通知”页面。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“订阅”选项卡，然后选择现有的“Process Building Updates”订阅以对其进行编辑。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将指定的工作空间从练习2中创建的工作空间更改为上一步中上传的工作空间。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">工作空间的更改将导致出现“源文本文件”参数。</font><font style="vertical-align: inherit;">这里只需选中右侧的复选框，即</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">从主题消息中获取值</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.412.Ex3.ValueFromTopicMessage.png"><img src="./Images/Img4.412.Ex3.ValueFromTopicMessage.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“确定”以更新订阅。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5）测试主题</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">再次（如在练习1和2中）在C：\ FMEData2018 \ Data \ Engineering \ BuildingFootprints中找到源Shapefile数据集update003.shp，并从Shapefiles集合中创建压缩（zip）文件（.dbf， .prj，.shp，.shx）。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">请务必为之前使用过的zip文件指定一个不同的名称。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将zip文件复制到资源文件夹data \ BuildingUpdates中。</font><font style="vertical-align: inherit;">您可以通过文件系统（通过将文件复制到C：\ ProgramData \ Safe Software \ FME Server \ resources \ data \ BuildingUpdates）或使用FME Server Web界面执行此操作。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6）检查结果</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在Web界面中打开“作业”页面。</font><font style="vertical-align: inherit;">已完成的作业列表应包括您在订阅中更新的工作空间。</font><font style="vertical-align: inherit;">查看或下载日志文件并查找记录的要素。</font><font style="vertical-align: inherit;">您应该会发现它有一个包含JSON的属性和从JSON中提取的许多属性。</font></font></p>
<table>
<tbody><tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">dirwatch_publisher_action</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">CREATE(创建)</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">dirwatch_publisher_content</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">ENTRY_CREATE C：\ ProgramData \ Safe Software \ FME Server \ resources \ data \ BuildingUpdates \ update002.zip</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">dirwatch_publisher_path</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C：\ ProgramData \ Safe Software \ FME Server \ resources \ data \ BuildingUpdates \ update002.zip</font></font></td></tr>
</tbody></table>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.413.Ex3.DirectoryWatchResults.png"><img src="./Images/Img4.413.Ex3.DirectoryWatchResults.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">所以现在我们知道数据是什么样的，并且可以相应地处理它。</font></font></p>
<hr>

<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
Flibble先生说......
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

您可以从主题监控练习中识别这些属性 - 实际上您可以在那里查看相同的信息，而无需通过添加Logger转换器的过程！

</font></font></td>
</tr>
</tbody></table>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">7）编辑JSONFlattener转换器</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">返回FME Workbench再次检查JSONFlattener转换器参数。</font><font style="vertical-align: inherit;">在“要显示的属性” </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">下，</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过单击“浏览”按钮</font><font style="vertical-align: inherit;">添加属性</font><em><font style="vertical-align: inherit;">dirwatch_publisher_path</font></em><font style="vertical-align: inherit;">，然后手动将其键入：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.414.Ex3.DirWatchPubPath.png"><img src="./Images/Img4.414.Ex3.DirWatchPubPath.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">8）添加FeatureReader转换器</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在删除Logger转换器并将FeatureReader转换器添加到JSONFlattener的输出：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.415.Ex3.FeatureReaderInWorkspace.png"><img src="./Images/Img4.415.Ex3.FeatureReaderInWorkspace.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">这是一个转换器，可以让我们在转换过程中将数据集的内容读入工作流。</font><font style="vertical-align: inherit;">检查转换器的参数并设置以下值：</font></font></p>
<table>
<tbody><tr><td><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">读模块格式</font></font></strong></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Esri Shapefile</font></font></td></tr>
<tr><td><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">读模块数据集</font></font></strong></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">选择属性值&gt; dirwatch_publisher_path</font></font></td></tr>
<tr><td><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">输出端口</font></font></strong></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单输出端口</font></font></td></tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">选择具有单输出端口：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.416.Ex3.FeatureReaderParameters.png"><img src="./Images/Img4.416.Ex3.FeatureReaderParameters.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">9）添加写模块</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">从Shapefile读取数据后，我们现在可以将它添加到公司数据库中。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">从菜单栏中选择Writers&gt; Add Writer。</font><font style="vertical-align: inherit;">提示时设置参数如下：</font></font></p>
<table>
<tbody><tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">写模块格式</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">SpatiaLite</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">写模块数据集</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Data\Engineering\BuildingFootprints\building_footprints.sl3
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">写模块参数</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">覆盖现有数据库：否</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">添加要素类型</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">表定义：手动</font></font></td>
</tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在创建的新要素类型中，将Table Name参数更改为</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">building_footprints</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.417.Ex3.FeatureTypeName.png"><img src="./Images/Img4.417.Ex3.FeatureTypeName.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">确保将表处理设置为“如果需要则创建”。</font><font style="vertical-align: inherit;">单击“确定”关闭对话框，然后将新要素类型连接到FeatureReader转换器的&lt;Generic&gt;输出端口。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.418.Ex3.FinalWorkspace.png"><img src="./Images/Img4.418.Ex3.FinalWorkspace.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">10）检查数据</font></font></strong><font style="vertical-align: inherit;">
添加写模块后，单击building_footprints要素类型以显示弹出菜单。</font><font style="vertical-align: inherit;">然后单击“检查”按钮以在FME Data Inspector中打开数据集。</font><font style="vertical-align: inherit;">building_footprints.sl3数据集中已有数据，但我们应该注意数据的样子，这样一旦我们用新数据更新数据集，我们就会知道它在哪里发生了变化。</font><font style="vertical-align: inherit;">红色框内的区域将是新数据的添加位置：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.419.Ex3.SpatialLiteData.png"><img src="./Images/Img4.419.Ex3.SpatialLiteData.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">10）重新发布工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">返回FME Workbench，将工作空间发布回FME Server。</font><font style="vertical-align: inherit;">如果您在本练习开始时打开了相同的FME Workbench会话，则可以使用工具栏上或“文件”菜单下的“重新发布”选项。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.420.Ex3.RepublishWorkspace.png"><img src="./Images/Img4.420.Ex3.RepublishWorkspace.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">11）将数据集添加到FME Server</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">由于此通知系统的目的是</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">更新</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">我们的数据库 - 让我们确保它可以在FME Server中访问。</font><font style="vertical-align: inherit;">为此，我们将</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">building_footprints.sl3</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> SpatiaLite数据库</font><font style="vertical-align: inherit;">上传</font><font style="vertical-align: inherit;">到FME Server的共享资源。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">使用FME Server Web界面</font><font style="vertical-align: inherit;">在</font><strong><font style="vertical-align: inherit;">资源&gt; Data中</font></strong><font style="vertical-align: inherit;">创建一个新文件夹</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Output</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">并上传位于C：\ FMEData2018 \ Data \ Engineering \ BuildingFootprints \ building_footprints.sl3的文件</font></font><strong><font style="vertical-align: inherit;"></font></strong><font style="vertical-align: inherit;"></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.421.Ex3.UploadDatabase.png"><img src="./Images/Img4.421.Ex3.UploadDatabase.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">12）编辑订阅</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">导航到“通知”页面并打开“处理建筑更新订阅”以进行编辑。</font><font style="vertical-align: inherit;">现在，参数应包括输出数据库的参数。</font><font style="vertical-align: inherit;">使用浏览按钮找到上一步中上传的数据库：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.422.Ex3.OutputDatabaseSelection.png"><img src="./Images/Img4.422.Ex3.OutputDatabaseSelection.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“确定”以保存更改。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">13）测试解决方案</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在通过将update001.zip，update002.zip或update003.zip放入BuildingUpdates文件夹来</font><strong><font style="vertical-align: inherit;">测试解决方案</font></strong><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">如果这些文件已存在，请先删除它们，然后重新添加它们。</font><font style="vertical-align: inherit;">您会发现放入该文件夹的每个数据集都会添加到SpatiaLite数据库中。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">检查“已完成的作业”页面以确认工作空间已运行。</font><font style="vertical-align: inherit;">然后在FME Data Inspector中，添加一个新数据集，并浏览到C：\ ProgramData \ Safe Software \ FMEServer \ resources \ data \ Output \文件夹并添加building_footprints.sl3数据集。</font><font style="vertical-align: inherit;">根据您添加的更新文件，您应该看到添加到数据集的三个建筑物之一：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.423.Ex3.ViewOutputInDataInspector.png"><img src="./Images/Img4.423.Ex3.ViewOutputInDataInspector.png" alt="" style="max-width:100%;"></a></p>
<hr>

<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
恭喜
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

通过完成本练习，您已学会如何：
</font></font><br>
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">识别传入主题消息上的JSON属性</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">使用FeatureReader转换器读取添加到监视文件夹的数据集</font></font></li></ul>

</td>
</tr>
</tbody></table>
</article>
  </div>
