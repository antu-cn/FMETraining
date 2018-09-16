  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习5.1
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
数据下载系统：已发布的参数
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
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在数据下载中为用户控制创建已发布的参数</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAuthoring\SelfServe2-Ex1-Begin.fmw
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">结束工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAuthoring\SelfServe2-Ex1-Complete.fmw
</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">作为一个城市GIS部门的技术分析师，您刚开始采取措施允许其他部门下载正射影像数据，而不是要求您为他们创建正射影像数据。</font><font style="vertical-align: inherit;">他们的请求不仅会得到更快的处理，而且您还可以花更少的时间完成这项任务。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">到目前为止，您已经创建了一个简单的工作空间来将正射影像转换为JPEG格式，并将其发布到FME Server上的数据下载服务。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在，您需要开始自定义工作空间，以允许最终用户对输出进行一定程度的控制。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）打开工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">打开上面列出的起始工作空间。</font><font style="vertical-align: inherit;">你可以看到它由一个读模块，一个写模块和两个转换器组成。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在此步骤中，我们将让最终用户控制转换阶段。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）创建用户参数</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果查看RasterResampler转换器的参数，您将看到X单元间距和Y单元间距的参数。</font><font style="vertical-align: inherit;">我们应该让最终用户选择他们想要的间距。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">因此，在FME Workbench的导航器窗口中，找到标记为“用户参数”的部分。</font><font style="vertical-align: inherit;">右键单击那里并选择“创建用户参数”选项：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img5.200.Ex1.CreateParameter.png"><img src="./Images/Img5.200.Ex1.CreateParameter.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">打开的对话框允许我们创建一个新参数。</font><font style="vertical-align: inherit;">使用以下参数创建一个：</font></font></p>
<table>
<tbody><tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">类型</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数字</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">名称</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">CELLSPACING</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">发布的</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">是</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">可选的</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">没有</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">提示</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">输入分辨率（1-50）</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">配置</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">下限：大于值：0 </font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">上限：小于值：51 </font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">小数位数精度：0</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">默认值</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">50</font></font></td></tr>
</tbody></table>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img5.201.Ex1.CreateParameterDialog.png"><img src="./Images/Img5.201.Ex1.CreateParameterDialog.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“确定”关闭对话框。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）应用用户参数</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">目前我们已经创建了一个用户参数，但没有将其应用到任何地方。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">检查RasterResampler转换器的参数。</font><font style="vertical-align: inherit;">单击X Cell Spacing参数右侧的下拉箭头，然后选择User Parameter&gt; CellSpacing。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">对Y Cell Spacing参数执行相同操作。</font><font style="vertical-align: inherit;">该对话框现在看起来像这样：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img5.202.Ex1.PublishedRasterResamplerParams.png"><img src="./Images/Img5.202.Ex1.PublishedRasterResamplerParams.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">请注意，我们对X和Y单元格大小使用相同的值。</font><font style="vertical-align: inherit;">没关系。</font><font style="vertical-align: inherit;">虽然我们可以使用矩形（椭圆形）栅格单元，但在本练习中我们将使用正方形。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）创建用户参数</font></font></strong>
<br><font style="vertical-align: inherit;">我们可以给用户控制的另一个设置是文件压缩。</font><font style="vertical-align: inherit;">这不是在转换器中定义的，而是在写模块要素类型中定义的。</font><font style="vertical-align: inherit;">但是，我们仍然可以以相同的方式创建已发布的参数。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">因此，在“导航”窗口中右键单击“用户参数”，然后再次选择“添加参数”。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">这次我们会做一点点不同的事情。</font><font style="vertical-align: inherit;">压缩可以是从零到一百的值，但我们将为用户提供“无”，“低”，“中”和“高”选项。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">因此，使用以下内容创建参数：</font></font></p>
<table>
<tbody><tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">类型</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">别名选择</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">名称</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">压缩</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">发布的</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">是</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">可选的</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">无</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">提示</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">选择压缩级别</font></font></td></tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">对于配置字段，单击[...]浏览按钮。</font><font style="vertical-align: inherit;">在打开的对话框中，设置以下内容：</font></font></p>
<table>
<tbody><tr><th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">显示名称</font></font></th><th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">值</font></font></th></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">无</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">0</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">低</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">25</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">中</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">50</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">高</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">75</font></font></td></tr>
</tbody></table>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img5.203.Ex1.CreateChoiceParam.png"><img src="./Images/Img5.203.Ex1.CreateChoiceParam.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“确定”，再次单击“确定”关闭这些对话框并创建参数。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5）应用用户参数</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">要应用参数，请检查JPEG要素类型的参数。</font><font style="vertical-align: inherit;">展开“压缩”参数（如有必要），并将“压缩级别”参数设置为“用户参数”&gt;“压缩”。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img5.204.Ex1.SetFTCompression.png"><img src="./Images/Img5.204.Ex1.SetFTCompression.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“确定”关闭对话框。</font><font style="vertical-align: inherit;">如果您现在按下运行按钮 - 设置了提示选项 - 您将看到现在有两个新的单元格大小和压缩提示。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6）发布和运行工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在将工作空间发布到FME Server。</font><font style="vertical-align: inherit;">将其发布到Training存储库，然后将其注册到数据下载服务。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过FME Server Web界面找到工作空间并运行它。</font><font style="vertical-align: inherit;">这次，系统将提示您设置单元格大小和压缩。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img5.205.Ex1.RunWorkspace.png"><img src="./Images/Img5.205.Ex1.RunWorkspace.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">运行工作空间几次，改变单元大小和压缩，以确认参数是否有效。</font><font style="vertical-align: inherit;">输出文件的大小可以很好地指示进程是否正常工作。</font></font></p>
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
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建一个整数用户参数并将其应用于两个转换器参数</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建一个“选择”用户参数并将其应用于写模块要素类型参数</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">发布工作空间并使用已发布的参数</font></font></li></ul>

</td>
</tr>
</tbody></table>
</article>
  </div>
