  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习2
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
数据下载系统：格式和坐标系
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
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">控制数据下载中的输出格式和坐标系</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAuthoring\SelfServe2-Ex2-Begin.fmw
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">结束工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAuthoring\SelfServe2-Ex2-Complete.fmw
</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">作为一个城市GIS部门的技术分析师，您刚开始采取措施允许其他部门下载正射影像数据，而不是要求您为他们创建正射影像数据。</font><font style="vertical-align: inherit;">他们的请求不仅会得到更快的处理，而且您还可以花更少的时间完成这项任务。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">到目前为止，您已创建了一个简单的工作空间，用于将正射影像转换为JPEG格式，添加已发布的转换参数，并将其发布到FME Server上的数据下载服务。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在，您需要让最终用户控制输出格式和输出坐标系。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）打开工作空间</font></font></strong>
<br><font style="vertical-align: inherit;">从练习1或上面列出的开始工作空间打开工作空间。</font><font style="vertical-align: inherit;">您可以看到它包含一个读模块，一个写模块和两个转换器，以及一些已发布的参数。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在这一步中，我们将让最终用户控制格式和坐标系。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）添加写模块</font></font></strong>
<br><font style="vertical-align: inherit;">要控制格式，您需要一个通用格式写模块</font></strong><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">从菜单栏中选择Writers&gt; Add Writer。</font><font style="vertical-align: inherit;">出现提示时输入以下参数：</font></font></p>
<table>
<tbody><tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">写模块格式</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通用（任何格式）</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">写模块数据集</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Output
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">写模块参数</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">输出格式：JPEG</font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">MIME类型：image / jpeg</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">添加要素类型</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">从读模块复制</font></font></td>
</tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">MIME类型设置不适用于数据下载服务，但无论如何我们都会设置它。</font><font style="vertical-align: inherit;">不会有什么损害。</font><font style="vertical-align: inherit;">您的工作空间现在看起来像这样：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img5.206.Ex2.AddedWriter.png"><img src="./Images/Img5.206.Ex2.AddedWriter.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">未连接的要素类型属于通用写模块（Generic Writer）。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）切换要素类型</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">我们要写入通用写模块而不是JPEG写模块，因此将连接从JPEG要素类型切换到通用要素类型。</font><font style="vertical-align: inherit;">它们都标有相同的名称，因此请务必检查其属性以检查是否需要。</font><font style="vertical-align: inherit;">你也可以(应该?)给它们添加注释，把它们区分开来。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">请勿删除JPEG写模块或其要素类型。</font><font style="vertical-align: inherit;">我们需要这些，理由稍后解释。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）创建用户参数</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">要控制格式，需要发布参数。</font><font style="vertical-align: inherit;">因此，在FME Workbench的导航窗口中，找到标记为用户参数的部分。</font><font style="vertical-align: inherit;">右键单击那里并选择“创建用户参数”选项。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">设置参数值如下：</font></font></p>
<table>
<tbody><tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">类型</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">别名选择</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">名称</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">OutputFormat</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">发布的</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">是</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">可选的</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">没有</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">提示</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">选择输出格式</font></font></td></tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">对于配置字段，单击[...]浏览按钮。</font><font style="vertical-align: inherit;">在打开的对话框中，单击“导入”&gt;“写模块格式”：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img5.207.Ex2.WriterFormatsParam.png"><img src="./Images/Img5.207.Ex2.WriterFormatsParam.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">这将打开FME支持的格式列表。</font><font style="vertical-align: inherit;">选择一些简单的栅格格式，如JPEG，PNG和GeoTIFF。</font><font style="vertical-align: inherit;">单击“确定”关闭对话框并返回上一个对话框：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img5.208.Ex2.WriterFormatsImported.png"><img src="./Images/Img5.208.Ex2.WriterFormatsImported.png" alt="" style="max-width:100%;"></a></p>
<hr>

<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
警告
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

请务必使用名为PNGRASTER的PNG格式。</font><font style="vertical-align: inherit;">不要选择称为PNG Rasterizer（PNG）的格式，因为它用于栅格化矢量数据，而不是写入栅格数据。

</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“确定”，再次单击“确定”关闭这些对话框并创建参数。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5）应用用户参数</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在我们已经创建了一个用户参数，我们必须应用它。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在Navigator窗口中找到Generic Writer，展开其参数并找到名为Output Format的参数。</font><font style="vertical-align: inherit;">这已经链接到了FME自动创建的已发布参数，但我们想忽略它并使用我们自己的参数。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">因此，右键单击“输出格式”并选择“链接到用户参数”选项：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img5.209.Ex2.GenericLinkOption.png"><img src="./Images/Img5.209.Ex2.GenericLinkOption.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">出现提示时，选择我们刚刚创建的OutputFormat参数：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img5.210.Ex2.SelectUserParameter.png"><img src="./Images/Img5.210.Ex2.SelectUserParameter.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建的参数FME（GENERIC_OUT_FORMAT_GENERIC）将被自动删除。</font><font style="vertical-align: inherit;">FME意识到我们不再需要它了，因为它在其他任何地方都没有使用，所以会删除它。</font></font></p>
<p><em><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">注意：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果没有为OutputFormat用户参数设置默认值，则通用写模块参数将变为红色（标记为不完整）。</font><font style="vertical-align: inherit;">这没什么好担心的。</font><font style="vertical-align: inherit;">它将在运行时设置。</font></font></em></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6）创建用户</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">参数所需的下一个参数是控制输出坐标系。</font><font style="vertical-align: inherit;">该过程与格式非常相似。</font><font style="vertical-align: inherit;">在FME Workbench的“导航”窗口中，找到标记为“用户参数”的部分。</font><font style="vertical-align: inherit;">右键单击那里并选择“创建用户参数”选项。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">设置参数值如下：</font></font></p>
<table>
<tbody><tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">类型</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">别名选择</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">名称</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">OutputCoordSys</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">发布的</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">是</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">可选的</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">无</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">提示</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">选择输出坐标系</font></font></td></tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">对于配置字段，单击[...]浏览按钮。</font><font style="vertical-align: inherit;">在打开的对话框中，单击“导入”&gt;“坐标系”。</font><font style="vertical-align: inherit;">这将打开FME坐标系列表。</font><font style="vertical-align: inherit;">选择一些适用于加拿大这一地区的简单系统，例如LL84，BCALB-83和UTM83-10。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“确定”关闭对话框并返回上一个对话框：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img5.211.Ex2.ImportedCoordSys.png"><img src="./Images/Img5.211.Ex2.ImportedCoordSys.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“确定”，再次单击“确定”关闭这些对话框并创建参数。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">7）应用用户参数</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">再一次，现在我们已经创建了一个用户参数，我们必须应用它。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在Navigator窗口中找到Generic Writer，这次查找名为Coordinate System的参数：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img5.212.Ex2.GenericCoordSysParam.png"><img src="./Images/Img5.212.Ex2.GenericCoordSysParam.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">右键单击此参数，然后选择“链接到用户参数”。</font><font style="vertical-align: inherit;">出现提示时，选择我们刚刚创建的名为OutputCoordSys的已发布参数。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果现在使用Workbench中的“运行”按钮，您将看到这两个参数现在都已发布。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">8）发布到FME Server</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">保存工作空间并将其发布到FME Server。</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">然而！</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在数据下载服务中注册时，请务必单击“编辑”按钮以编辑服务属性。</font><font style="vertical-align: inherit;">在该对话框中，您必须将写模块设置为“Output [GENERIC]”（而不是“Output [JPEG]”）。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img5.213.Ex2.PublishDataDownloadParams.png"><img src="./Images/Img5.213.Ex2.PublishDataDownloadParams.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果不这样做，那么数据下载将包含JPEG写模块的输出。</font><font style="vertical-align: inherit;">既然没有连接，就没有输出，所以没有zip文件！</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">发布后，在FME Server Web界面中找到工作空间并运行它。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">为输出格式和坐标系选择不同的选项，以查看输出中发生的情况。</font></font></p>
<hr>

<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
空间FME教授，ETL说......
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

现在我想你有一些问题！
</font></font><br><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">问）为什么我们在添加通用写模块时不删除原始的JPEG写模块？</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">A）这是因为我们有一个为JPEG压缩发布的参数。</font><font style="vertical-align: inherit;">如果我们删除了JPEG写模块，我们将无法再访问该参数。
</font></font><br><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">问）但我们甚至不再使用JPEG 写模块，那么该参数将如何工作？</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">A）因为通用写模块从任何该格式的写模块中获取其正在写入的格式的参数!</font><font style="vertical-align: inherit;">所以你可以添加一个伪PNG格式的写模块，而通用写模块在写入PNG时会使用虚拟参数。

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
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">添加通用写模块并设置其格式和MIME类型参数</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建输出格式用户参数并将其应用于通用写模块</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建输出坐标系用户参数并将其应用于通用写模块</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将伪写模块中的参数应用于通用写模块</font></font></li></ul>

</td>
</tr>
</tbody></table>
</article>
  </div>
