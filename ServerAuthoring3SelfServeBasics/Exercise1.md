  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习3.1
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
数据下载系统：工作空间创建
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数据</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">正射影像（GeoTIFF）</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">总体的目标</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">为正射影像创建FME Server数据下载系统</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建工作空间并使用数据下载运行它</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">无</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">结束工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAuthoring\SelfServe1-Ex1-Complete.fmw
</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">作为当地城市GIS部门的技术分析师，您拥有使用FME Desktop的丰富经验，并且刚刚开始使用FME Server。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">其他部门经常要求GIS团队提供城市的正射影像。</font><font style="vertical-align: inherit;">他们选择的格式通常是JPEG。</font><font style="vertical-align: inherit;">目前，您使用FME Desktop转换数据，向工作空间添加任何特殊请求，例如特定分辨率，特定感兴趣区域，甚至是标记在栅格上的矢量数据集。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">无论您对FME Workbench有多熟练，都需要时间来设置每个单独的请求。</font><font style="vertical-align: inherit;">如果其他部门可以自己处理栅格数据，并且内置所有特殊请求的选项，那将会好得多。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">当然，您很快就会意识到在FME Server上实施的数据下载系统将是一个理想的解决方案。</font></font></p>
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

如果您有丰富的FME Workbench经验 - </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果您的指导老师同意</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> - 只需打开上面标题中列出的工作空间并跳到第6步。但是一定要检查转换器和它们的参数，这样你就知道你在用什么了。

</font></font></td>
</tr>
</tbody></table>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）创建工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">让我们从创建基本FME工作空间开始，以转换和变换源栅格数据。</font><font style="vertical-align: inherit;">启动FME Workbench并选择Readers&gt; Add Reader。</font><font style="vertical-align: inherit;">出现提示时输入以下参数：</font></font></p>
<table>
<tbody><tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">读模块格式</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">GeoTIFF（地理参考标记图像文件格式）</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">读模块数据集</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Data\Orthophotos\06-07-LM.tif
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">读模块参数</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">要素类型名称：来自文件名称</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">工作流程选项</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单一合并要素类型</font></font></td>
</tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">使用“单一合并要素类型”选项很重要，因为有许多数据源瓦片，我们可能希望读取其中任何一个，而不必将它们添加为单独的要素类型。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">要素类型名称参数很重要，因为它将帮助我们以后允许用户选择要读取的图层。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）添加写模块</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在我们需要一个写模块。</font><font style="vertical-align: inherit;">从菜单栏中选择Writers&gt; Add Writer。</font><font style="vertical-align: inherit;">出现提示时输入以下参数：</font></font></p>
<table>
<tbody><tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">写模块格式</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">JPEG（联合图像专家组）</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">写模块数据集</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Output\Training
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">添加要素类型</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">从读模块复制</font></font></td>
</tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您的工作空间现在看起来像这样：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img3.200.Ex1.InitialWorkspace.png"><img src="./Images/Img3.200.Ex1.InitialWorkspace.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）添加转换器</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">我们将从工作空间开始使用两台转换器; </font><font style="vertical-align: inherit;">RasterResampler和RasterMosaicker。</font><font style="vertical-align: inherit;">所以放置其中一个并连接工作空间中的所有内容：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img3.201.Ex1.WorkspaceWithTransformers.png"><img src="./Images/Img3.201.Ex1.WorkspaceWithTransformers.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）设置转换器参数</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">检查RasterResampler的参数并设置：</font></font></p>
<table>
<tbody><tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">尺寸规格</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单元格大小</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">X单元格间距</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Y单元格间距</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5</font></font></td></tr>
</tbody></table>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img3.202.Ex1.RasterResamplerParams.png"><img src="./Images/Img3.202.Ex1.RasterResamplerParams.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您可以检查RasterMosaicker的参数，但目前没有任何需要更改的参数。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5）保存并运行工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">保存工作空间 - 只是为了确保在FME Workbench中运行良好。</font><font style="vertical-align: inherit;">结果应该是一个JPEG文件(06_07_LM.jpg)和一个world文件(06_07_LM.wld)。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img3.203.Ex1.TestOutput.png"><img src="./Images/Img3.203.Ex1.TestOutput.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6）发布工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在将工作空间发布到FME Server。</font><font style="vertical-align: inherit;">将其注册到数据下载服务。</font><font style="vertical-align: inherit;">如果您正在使用远程服务器（例如FME 云实例），则需要使用工作空间发布数据或将其上载到FME Server资源文件夹。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">7）运行工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">登录FME Server Web界面，找到工作空间并运行它。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">工作空间将运行，您将看到一个指向输出数据集的zip文件的超链接：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img3.204.Ex1.DataDownloadResult.png"><img src="./Images/Img3.204.Ex1.DataDownloadResult.png" alt="" style="max-width:100%;"></a></p>
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
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建工作空间以读取和写入栅格数据</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">使用数据下载服务发布和运行工作空间</font></font></li></ul>

</td>
</tr>
</tbody></table>   
</article>
  </div>
