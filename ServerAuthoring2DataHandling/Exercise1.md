  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习2.1
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
每日数据库更新：发布数据
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数据</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">街区Neighborhoods（KML）</font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">选举投票Election Voting（GML）</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">总体目标</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建工作空间以读取和处理部门数据并将其发布到FME Server</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">发布源数据并上传临时数据集</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAuthoring\DataHandling-Ex1-Begin.fmw
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">结束工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAuthoring\DataHandling-Ex1-Complete.fmw
</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">对于本章的练习，您是当地城市GIS部门的技术分析师。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您已经（练习1.1,1.2和1.3）创建了一个工作空间来执行转换，将其发布到FME Server，运行它以确认它的工作，共享存储库，并将工作空间设置为按计划运行。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在您有一个创建新工作空间的任务。</font><font style="vertical-align: inherit;">它使用的其中一个数据集与上一个练习相同，因此我们将尝试让第二个工作空间使用属于第一个工作空间的数据。</font></font></p>
<hr>

<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
Intuitive修女说......
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

如果您有丰富的FME Workbench经验 - </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果您的指导老师同意</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> - 只需打开上面标题中列出的结束工作空间并跳到第7步

</font></font></td>
</tr>
</tbody></table>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）检查源数据</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建任何新工作空间的第一项任务是检查源数据，所以让我们这样做。</font><font style="vertical-align: inherit;">使用FME Data Inspector打开这两个数据集：</font></font></p>
<table>
<tbody><tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">读模块格式</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">GML（地理标记语言）</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">读模块数据集</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Data\Elections\ElectionVoting.gml
</font></font></td>
</tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您可以关闭VotingDivisions图层。</font><font style="vertical-align: inherit;">我们对此练习感兴趣的是指定为VotingPlaces的点要素：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img2.200.Ex1.SourceElectionData.png"><img src="./Images/Img2.200.Ex1.SourceElectionData.png" alt="" style="max-width:100%;"></a>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">地图瓦片</font></font><a href="http://stamen.com/" rel="nofollow"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Stamen Design</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，许可</font></font><a href="http://creativecommons.org/licenses/by/3.0" rel="nofollow"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">CC-BY-3.0</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。数据提供</font></font><a href="http://openstreetmap.org/" rel="nofollow"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">OpenStreetMap</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，许可</font></font><a href="http://creativecommons.org/licenses/by-sa/3.0" rel="nofollow"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">CC-BY-SA</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）创建工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">打开上面列出的起始工作空间。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您可能会注意到它是我们之前工作空间的副本，因为此工作空间的要求非常相似。</font><font style="vertical-align: inherit;">如果您确实选择继续在该工作空间中工作，请确保以不同的名称保存它 - 否则我们将发布的数据将不适用于此练习。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">工作空间看起来像这样：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img2.201.Ex1.StartingWorkspace.png"><img src="./Images/Img2.201.Ex1.StartingWorkspace.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）删除Firehalls</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">对于此工作空间，我们需要处理选举数据而不是消防站（FireHalls），因此首先删除FireHalls的写模块要素类型，然后删除读模块要素类型。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">删除读模块要素类型时，系统将询问您是否要删除整个读模块。</font><font style="vertical-align: inherit;">我们可以重用它，但为了简单起见，请单击是。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">工作空间现在看起来像这样：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img2.202.Ex1.WorkspaceSansFirehalls.png"><img src="./Images/Img2.202.Ex1.WorkspaceSansFirehalls.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）添加VotingPlaces</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在选择Readers&gt; Add Reader以开始将读模块添加到工作空间。</font><font style="vertical-align: inherit;">出现提示时，为VotingPlaces数据输入以下详细信息:</font></font></p>
<table>
<tbody><tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">读模块格式</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">GML（地理标记语言）</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">读模块数据集</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Data\Elections\ElectionVoting.gml
</font></font></td>
</tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“确定”将读模块添加到工作空间。</font><font style="vertical-align: inherit;">提示时，仅选择VotingPlaces要素类型，而不是VotingDivisions：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img2.203.Ex1.AddReaderFTTR.png"><img src="./Images/Img2.203.Ex1.AddReaderFTTR.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5）将VotingPlaces添加到写模块</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">要将VotingPlaces添加到写模块，请右键单击新放置的读模块函数类型，然后选择“NULL”复制：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img2.204.Ex1.RightClickAddToWriter.png"><img src="./Images/Img2.204.Ex1.RightClickAddToWriter.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在将有一个VotingPlaces数据集的读写模块要素类型：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img2.205.Ex1.WorkspaceWithWriter.png"><img src="./Images/Img2.205.Ex1.WorkspaceWithWriter.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">更改连接以通过Clipper转换器传递VotingPlaces（投票地点）数据，就像FireHalls（消防站）曾经的那样：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img2.206.Ex1.WorkspaceWithConnectedWriter.png"><img src="./Images/Img2.206.Ex1.WorkspaceWithConnectedWriter.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6）设置VotingPlaces要素类型名称</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">最后，与FireHalls一样，让我们​​为VotingPlaces写模块要素类型设置要素类型名称。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">检查其参数并在要素类型名称下输入：</font></font></p>
<pre><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">VotingPlaces- @值（NeighborhoodName）
</font></font></pre>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">...或单击下拉列表并使用文本编辑器对话框输入该值。</font><font style="vertical-align: inherit;">这将导致每个不同街区中的投票位置被写入单独的表/层。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">保存工作空间。</font><font style="vertical-align: inherit;">如前所述，请确保其名称与第一个项目不同。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">7）发布到服务器</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将工作空间发布到FME Server。</font><font style="vertical-align: inherit;">这次您只需选择以前创建的FME Server连接，而不必再次输入参数。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">对于存储库，选择先前创建的Training存储库，并输入工作空间的名称（如果它还没有）。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">这次，不要只是选中上传所有数据文件的框，而是单击Select Files按钮：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img2.207.Ex1.PublishToServer.png"><img src="./Images/Img2.207.Ex1.PublishToServer.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">此对话框列出了我们要使用工作空间发布到存储库的文件。</font><font style="vertical-align: inherit;">从技术上讲，VancouverNeighborhoods数据集已经使用之前的工作空间发布到存储库，但尝试以这种方式重复使用数据并不是很好的做法（即使我们可以），因此对所有文件进行复选标记并单击“确定”：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img2.208.Ex1.SelectAllFiles.png"><img src="./Images/Img2.208.Ex1.SelectAllFiles.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在发布向导的最后一个对话框中，再次选择Job Submitter 作为Web服务来注册工作空间。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">8）检查文件</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果您可以访问FME Server计算机本身，请打开文件浏览器并浏览到存储库数据的存储位置。</font><font style="vertical-align: inherit;">这里是C：\ ProgramData \ Safe Software \ FME Server \ repositories \ Training：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img2.209.Ex1.RepositoryFilesInFilesystem.png"><img src="./Images/Img2.209.Ex1.RepositoryFilesInFilesystem.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您将看到每个工作空间都保存到单独的文件夹中。</font><font style="vertical-align: inherit;">如果您检查文件夹的内容，您将在其中看到上传的数据集。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">这是工作空间访问随其发布的文件的方式。</font><font style="vertical-align: inherit;">通过一些人工操作，它还可以访问与同一存储库中的另一个工作空间一起存储的文件。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">9）运行工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">登录FME Server，找到并运行工作空间。</font><font style="vertical-align: inherit;">在“运行”对话框中，请注意表示源数据的已发布参数包含FME环境变量FME_MF_DIR：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img2.210.Ex1.RepositoryFileSelection.png"><img src="./Images/Img2.210.Ex1.RepositoryFileSelection.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">此变量告诉FME查找与源数据文件的工作空间相同的文件夹。</font><font style="vertical-align: inherit;">正如您所看到的，即使工作空间运行良好，以这种方式处理数据也不是特别“用户友好”。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">9）上传临时数据</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在让我们假装VotingPlaces数据层以某种方式发生了变化。</font><font style="vertical-align: inherit;">您可以通过简单地打开文件浏览器并制作GML文件的副本来模拟它。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">例如，将C：\ FMEData2018 \ Data \ Elections \ ElectionVoting.gml重命名为NewElectionVoting.gml</font></font></p>
<p><em><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">注意：</font></font></strong></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您不必复制ElectionVoting.xsd  - 可以将该模式文件用于新的GML数据集。*</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在，在FME Server Web界面中，注销admin帐户并以用户（user/user）身份登录。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">因此，作为用户，我们希望使用新数据运行工作空间。</font><font style="vertical-align: inherit;">我们无法发布数据，因为用户帐户没有写入该存储库的权限; </font><font style="vertical-align: inherit;">而且无论如何，由于工作空间没有以任何方式改变，我们不应该一定要经历发布过程。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">因此，单击“运行工作空间”并在“Training”库中选择新发布的工作空间。</font><font style="vertical-align: inherit;">但是，要使用新数据集，请单击Source GML提示右侧的浏览按钮：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img2.211.Ex1.SelectSourceData.png"><img src="./Images/Img2.211.Ex1.SelectSourceData.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在打开的对话框中，单击“临时上传”选项卡，然后单击“上传文件”按钮：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img2.212.Ex1.TempUploadButton.png"><img src="./Images/Img2.212.Ex1.TempUploadButton.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">选择文件NewElectionVoting.gml和ElectionVoting.xsd，然后单击“打开”以上传它们。</font><font style="vertical-align: inherit;">现在 - 返回先前的对话框 - 单击X按钮取消选择XSD文件：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img2.213.Ex1.TempUnselectFile.png"><img src="./Images/Img2.213.Ex1.TempUnselectFile.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">该文件需要存在，但不需要选择。</font><font style="vertical-align: inherit;">现在单击“确定”，然后单击“运行”按钮。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在，工作空间将使用上传的数据集运行完成。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">但是 - 这是重要的部分 - 这只是一个临时上传。</font><font style="vertical-align: inherit;">工作空间可以立即重新运行，数据仍将显示在临时上传部分，但它不是永久性解决方案。</font><font style="vertical-align: inherit;">数据可能会在24小时内自动清理。</font></font></p>
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
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">使用新读模块和新写模块要素类型更新工作空间</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将工作空间发布到FME Server并包含源数据</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Server文件系统上找到源数据</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">选择要在运行时临时上传的源数据集</font></font></li>

</ul></td>
</tr>
</tbody></table>
</article>
  </div>
