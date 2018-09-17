  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习6.2
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
编写工作空间链
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数据</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">投票分区（GML（地理标记语言））</font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">地址（Esri地理数据库（File Geodb API））</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">总体目标</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建工作空间以：</font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">- 处理投票分区</font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">- 将投票分区分配给地址</font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">- 将前两个转换链接在一起</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">编写工作空间链</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">没有</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">结束工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAuthoring\AdvancedWorkflows-Ex2-CompleteA.fmw
 </font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAuthoring\AdvancedWorkflows-Ex2-CompleteB.fmw
 </font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAuthoring\AdvancedWorkflows-Ex2-CompleteC.fmw
</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您是当地城市GIS部门的技术分析师。</font><font style="vertical-align: inherit;">您有使用FME Desktop的丰富经验，而您的部门刚刚购买了FME Server。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">市政选举即将发生，Interopolis选举机构提供了GML格式的新投票分区的数据集。</font><font style="vertical-align: inherit;">您今天的第一个任务是创建一个工作空间，将这些投票分区转换为SpatiaLite数据库格式，以便在城市内使用，并将数据写入FME Server上的资源文件夹，以便每个人都可以使用它。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">巧合的是，规划部门听说了这一更新，并要求您将投票分区ID分配给城市地址数据库中的每个记录，以便用于选举计划。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您意识到可以将这两个转换链接在一起以在主工作空间下连续执行。</font><font style="vertical-align: inherit;">总而言之，您有三个工作空间可供创建！</font></font></p>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）启动FME Workbench</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动FME Workbench并使用以下参数生成转换：</font></font></p>
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
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">写模块格式</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">SpatiaLite</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">写模块数据集</font></font></td>
<td></td>
</tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">写模块数据集现在可以保留为空。</font><font style="vertical-align: inherit;">出现提示时，请选中两个源要素类型（层）。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.211.Ex2.InitialWorkspace.png"><img src="./Images/Img6.211.Ex2.InitialWorkspace.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）创建资源</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">我们将使用FME Server上的资源文件夹处理此工作空间的输入和输出。</font><font style="vertical-align: inherit;">因此，登录FME Server Web界面并导航到“资源”页面。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果您执行了练习1.4，那么您应该已经有一个包含工作空间中使用的源数据的文件夹Resources \ Data \ Election \ Input。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果没有，请创建该组文件夹和子文件夹。</font><font style="vertical-align: inherit;">将源GML数据集上传到Input文件夹（您应该上传.gml和.xsd文件）：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.212.Ex2.UploadedData.png"><img src="./Images/Img6.212.Ex2.UploadedData.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）编辑工作空间以使用资源</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">返回FME Workbench，在“用户参数”下的“导航”窗口中查找名为SourceDataset_GML和DestDataset_SPATIALITE的两个现有已发布参数。</font><font style="vertical-align: inherit;">依次单击每个，然后按删除键将其删除。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">接下来，找到GML源数据集和SpatiaLite目标数据集的参数。</font><font style="vertical-align: inherit;">更新参数如下：</font></font></p>
<table>
<tbody><tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">GML读模块</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">$(FME_SHAREDRESOURCE_DATA)\Election\Input\ElectionVoting.gml
</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">SpatiaLite写模块</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">$(FME_SHAREDRESOURCE_DATA)\Election\Output\VotingDivisions.sl3
</font></font></td></tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">最后一个调整：将写模块参数"覆盖现有数据库（Overwrite Existing Database)"更改为是</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.213.Ex2.WorkspaceDatasetParameters.png"><img src="./Images/Img6.213.Ex2.WorkspaceDatasetParameters.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）保存，发布和运行工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">保存工作空间（类似于AdvancedWorkflows-Ex2-CompleteA.fmw）并记住文件名：稍后它将很重要。</font><font style="vertical-align: inherit;">将工作空间发布到FME Server。</font><font style="vertical-align: inherit;">它应该在Job Submitter服务中注册。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在服务器web界面中找到工作空间并运行它，并确保它运行到完成。</font><font style="vertical-align: inherit;">成功的证据将是资源文件夹中的日志和sl3文件。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">选择sl3数据集，然后单击“操作”&gt;“下载”以下载文件。</font><font style="vertical-align: inherit;">这个很重要; </font><font style="vertical-align: inherit;">我们需要该文件来设置我们的下一个工作空间。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.214.Ex2.DownloadSpatialiteDB.png?"><img src="./Images/Img6.214.Ex2.DownloadSpatialiteDB.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将文件保存到Elections文件夹，这样您就会记住它的位置; </font><font style="vertical-align: inherit;">即，C：\ FMEData2018 \ Data \ Elections \ VotingDivisions.sl3</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5）生成工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">那是我们项目中的第一个工作空间。</font><font style="vertical-align: inherit;">现在是第二个。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">必要时打开Workbench并使用以下参数生成新工作空间：</font></font></p>
<table>
<tbody><tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">读模块格式</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Esri地理数据库（File Geodb Open API）</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">读模块数据集</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Data\Addresses\Addresses.gdb
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">写模块格式</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Esri地理数据库（File Geodb Open API）</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">写模块数据集</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Output\Training\NewAddresses.gdb
</font></font></td>
</tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">出现提示时，请保留两个源要素类型（表）。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.215.Ex2.StartingWorkspaceB.png"><img src="./Images/Img6.215.Ex2.StartingWorkspaceB.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6）添加读模块</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">要分配投票分区，我们需要在工作空间中拥有该数据。</font><font style="vertical-align: inherit;">因此，从菜单栏中选择读模块&gt;读模块并添加读模块以读取下载的VotingDivisions SpatiaLite数据库：</font></font></p>
<table>
<tbody><tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">读模块格式</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">SpatiaLite</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">读模块数据集</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Data\Elections\VotingDivisions.sl3
</font></font></td>
</tr>
</tbody></table>
<p><em><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">注意：</font></font></strong></em> <em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果找不到该sl3文件，请返回步骤4，确保下载了第一个工作空间的结果。</font></font></em></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">出现提示时，仅选择源要素类型（表）</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">votedivisions</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.216.Ex2.SelectingVotingDivisions.png"><img src="./Images/Img6.216.Ex2.SelectingVotingDivisions.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">7）添加转换器</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在让我们添加一个转换器，为每个地址分配投票分区。</font><font style="vertical-align: inherit;">将PointOnAreaOverlayer转换器放入工作空间。</font><font style="vertical-align: inherit;">按如下方式连接：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.217.Ex2.POAOOnCanvas.png"><img src="./Images/Img6.217.Ex2.POAOOnCanvas.png" alt="" style="max-width:100%;"></a></p>
<br>
<ul>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">删除连接：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Geodatabase:PostalAddress &gt; Geodatabase:PostalAddress</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">添加连接：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Geodatabase:PostalAddress &gt; PointOnAreaOverlayer:Point</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">添加连接：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> SpatiaLite:votingdivisions &gt; PointOnAreaOverlayer:Area</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">添加连接：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> PointOnAreaOverlayer:Point &gt; Geodatabase:PostalAddress</font></font></li>
</ul>
<p><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">然后打开PointOnAreaOverlayer的参数，展开Attribute Accumulation（属性聚合）部分，并选中Merge Attributes（合并属性）。</font><font style="vertical-align: inherit;">默认设置很好。</font><font style="vertical-align: inherit;">这将从votingdivisions添加属性到PostalAddress。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">8）编辑写模块模式</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> PointOnAreaOverlayer会将division属性复制到每个地址，但除非我们将其添加到输出模式，否则不会写入该属性。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">因此，请检查写模块要素类型PostalAddress的参数。</font><font style="vertical-align: inherit;">在“用户属性”选项卡中，添加一个名为division的新属性（类型为int）：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.218.Ex2.DivisionAttrAddedToSchema.png"><img src="./Images/Img6.218.Ex2.DivisionAttrAddedToSchema.png" alt="" style="max-width:100%;"></a></p>
<p><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">division</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">是区分大小写的，因为我们希望它与来自</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">votingdivisions</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">表的</font><font style="vertical-align: inherit;">内容相匹配</font><font style="vertical-align: inherit;">。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">9）测试运行工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在开始调整数据集路径以便在FME Server上使用之前，运行工作空间以确保它产生正确的输出; </font><font style="vertical-align: inherit;">即，每个地址现在都有一个division属性。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">10）创建资源</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">我们还将使用FME Server上的资源文件夹处理此工作空间的输入和输出。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">首先，只有在我们使用Chrome web浏览器时，我们才能将一个File Geodatabase（文件地理数据库）上传为文件夹/文件。</font><font style="vertical-align: inherit;">如果不是，请在文件系统中找到源地理数据库并将其压缩为单个zip文件：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.219.Ex2.CompressedAddresses.png"><img src="./Images/Img6.219.Ex2.CompressedAddresses.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">接下来，将Addresses.gdb文件夹（或addresses.gdb.zip）上传到FME Server上的Resources&gt; Data&gt; Election&gt; Input文件夹：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.220.Ex2.UploadedCompressedAddresses.png"><img src="./Images/Img6.220.Ex2.UploadedCompressedAddresses.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">11）编辑工作空间以使用资源</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">返回FME Workbench，在“用户参数”下的“导航”窗口中查找三个现有已发布参数SourceDataset_FILEGDB，SourceDataset_SPATIALITE和DestDataset_SPATIALITE。</font><font style="vertical-align: inherit;">依次单击每个，然后按删除键将其删除。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">接下来，找到地理数据库源数据集，SpatiaLite源数据集和地理数据库目标数据集的参数。</font><font style="vertical-align: inherit;">更新参数如下：</font></font></p>
<table>
<tbody><tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">地理数据库读模块</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">$(FME_SHAREDRESOURCE_DATA)\Election\Input\Addresses.gdb.zip
</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">SpatiaLite读模块</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">$(FME_SHAREDRESOURCE_DATA)\Election\Output\VotingDivisions.sl3
</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">地理数据库写模块</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">$(FME_SHAREDRESOURCE_DATA)\Election\Output\NewAddresses.gdb.zip
</font></font></td></tr>
</tbody></table>
<p><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">注意：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果您将Addresses.gdb作为zip文件上传，请在参数末尾为地理数据库读模块和写模块添加.zip。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">最后一次调整：将写模块参数Overwrite Geodatabase（覆盖地理数据库）更改为Yes：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.221.Ex2.UpdatedWorkspaceParameters.png"><img src="./Images/Img6.221.Ex2.UpdatedWorkspaceParameters.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">12）保存，发布和运行工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">保存工作空间（类似于AdvancedWorkflows-Ex2-CompleteB.fmw）并记住文件名：稍后它将很重要。</font><font style="vertical-align: inherit;">将工作空间发布到FME Server。</font><font style="vertical-align: inherit;">它应该在Job Submitter服务中注册。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在服务器Web界面中找到工作空间并运行它以确保它运行完成。</font><font style="vertical-align: inherit;">成功的证据将是资源文件夹中的日志和压缩地理数据库文件。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.222.Ex2.GeodatabaseWrittenToResources.png"><img src="./Images/Img6.222.Ex2.GeodatabaseWrittenToResources.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您可能希望下载新创建的数据集以检查它并确保输出正确; </font><font style="vertical-align: inherit;">即，每个地址现在都有一个division属性。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">13）创建工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">上面是我们项目中的第二个工作空间。</font><font style="vertical-align: inherit;">现在是第三个也是最后一个工作空间。</font><font style="vertical-align: inherit;">此工作空间将用于链接前两个工作空间。</font><font style="vertical-align: inherit;">它将成为主空间，两个先前的工作空间作为子空间。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">因此，打开Workbench并从空白画布开始。</font><font style="vertical-align: inherit;">放置一个Creator转换器，然后放置两个FMEServerJobSubmitter转换器：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.223.Ex2.FMEServerJobSubmitters.png"><img src="./Images/Img6.223.Ex2.FMEServerJobSubmitters.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">14）设置参数</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">检查第一个FMEServerJobSubmitter转换器的参数。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">首先，选择您的FME Server连接。</font><font style="vertical-align: inherit;">然后，在“提交模式”下，将“等待作业完成”设置为“是”。</font><font style="vertical-align: inherit;">如果我们没有这样做，那么第二个job submitter转换器将在第一个完成之前运行！</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">最后，选择Training存储库和两个先前工作空间中的第一个（将选举分区从GML转换为SpatiaLite的工作空间）。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.224.Ex2.FMEServerJobSubmitterParams1.png"><img src="./Images/Img6.224.Ex2.FMEServerJobSubmitterParams1.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">下面是我们可以设置转换参数的区域。</font><font style="vertical-align: inherit;">但是，由于没有已发布的参数，我们无需担心。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“确定”关闭对话框。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">请注意，转换器上的输出端口已更改，因为我们已将其设置为等待作业完成。</font><font style="vertical-align: inherit;">通过将一个连接从Succeeded端口拖动到第二个转换器上的input端口，将其重新连接到另一个FMEServerJobSubmitter。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在为第二个FMEServerJobSubmitter重复相同的过程，这次选择第二个工作空间（在分区上叠加地址的那个工作空间）。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">15）保存，发布和运行工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">保存工作空间（类似于AdvancedWorkflows-Ex2-CompleteC.fmw）并将其发布到FME Server。</font><font style="vertical-align: inherit;">它应该在Job Submitter服务中注册。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在服务器Web界面中找到工作空间并运行它以确保它运行完成。</font><font style="vertical-align: inherit;">它将依次运行两个子工作空间中的每一个。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">不要担心FME会报告写入了零要素。</font><font style="vertical-align: inherit;">这仅指主工作空间（而不是子工作空间）。</font><font style="vertical-align: inherit;">成功的证据将是资源文件夹中的日志和新输出文件（sl3，gdb）：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.225.Ex2.OutputDatasetsInResources.png"><img src="./Images/Img6.225.Ex2.OutputDatasetsInResources.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">请注意，两个数据集的日期/时间戳非常相似; </font><font style="vertical-align: inherit;">应首先创建VotingDivisions.sl3文件，不久之后创建NewAddresses.gdb.zip。</font></font></p>
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

如前所述，有许多方法可以设置链，这只是其中之一。</font><font style="vertical-align: inherit;">将数据写入固定位置（如此处）的缺点是，有人可能会更改第一个工作空间以将数据写入其他位置，从而导致第二个工作空间失败。

</font></font></td>
</tr>
</tbody></table>
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
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建用于读取和写入资源数据集的子工作空间</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">使用FMEServerJobSubmitter创建运行子工作空间的主工作空间</font></font></li></ul>

</td>
</tr>
</tbody></table>
</article>
  </div>
