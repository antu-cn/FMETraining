  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习2
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
数据流系统
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数据</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">正射影像（GeoTIFF）</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">总体目标</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">为正射影像创建FME服务器数据流系统</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数据流</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAuthoring\SelfServe1-Ex2-Begin.fmw
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">结束工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAuthoring\SelfServe1-Ex2-Complete.fmw
</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">作为一个城市的GIS部门的技术分析师，您刚刚创建了一个系统，允许其他部门下载正射影像数据，而不是要求您为他们创建它。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">有时最终用户将数据下载为JPEG只是为了在浏览器或图像查看器中打开它来检查它。</font><font style="vertical-align: inherit;">您意识到，在这种情况下，他们可能能够使用数据流服务，而不是数据下载。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）打开工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">从练习1或上面列出的开始工作空间打开工作空间。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）发布到FME服务器</font></font></strong><br>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将工作空间重新发布到FME Server。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在发布向导的最后一个对话框中，选中复选框以使用数据下载和数据流注册工作空间（但不要单击“完成”）：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="https://github.com/domix2000/FMETraining-1/blob/Server-Authoring-2018/ServerAuthoring3SelfServeBasics/Images/Img3.205.Ex2.PublishToStreamService.png"><img src="./FMETraining-1_Exercise2.md1_files/Img3.205.Ex2.PublishToStreamService.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击Data Streaming服务的Edit按钮。</font><font style="vertical-align: inherit;">确保服务正在使用JPEG写模块的输出（现在我们将数据流限制为JPEG格式）：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="https://github.com/domix2000/FMETraining-1/blob/Server-Authoring-2018/ServerAuthoring3SelfServeBasics/Images/Img3.206.Ex2.StreamingParameters.png"><img src="./FMETraining-1_Exercise2.md1_files/Img3.206.Ex2.StreamingParameters.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）运行工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Server Web界面中找到新发布的工作空间并运行它。</font><font style="vertical-align: inherit;">在工作空间的参数中，请确保将Web服务设置为数据流而不是数据下载</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="https://github.com/domix2000/FMETraining-1/blob/Server-Authoring-2018/ServerAuthoring3SelfServeBasics/Images/Img3.207.Ex2.SelectStreamingService.png"><img src="./FMETraining-1_Exercise2.md1_files/Img3.207.Ex2.SelectStreamingService.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">此转换的结果不是流式JPEG文件。</font><font style="vertical-align: inherit;">相反，转换返回一个zip文件：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="https://github.com/domix2000/FMETraining-1/blob/Server-Authoring-2018/ServerAuthoring3SelfServeBasics/Images/Img3.208.Ex2.StreamedZipFile.png"><img src="./FMETraining-1_Exercise2.md1_files/Img3.208.Ex2.StreamedZipFile.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果您打开zip文件，您会看到它包含JPEG文件和wld（World）文件。</font><font style="vertical-align: inherit;">这就是FME返回一个zip文件的原因。</font><font style="vertical-align: inherit;">只要结果是多个文件，它就会压缩数据流服务的结果。</font></font></p>
 
<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
2018.1的新变化
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

额外的World文件不再影响2018.1中的数据流。</font><font style="vertical-align: inherit;">如果您正在FME Server 2018.1+上完成此练习，那么如果数据按预期流式传输，您可以在此处结束。</font><font style="vertical-align: inherit;">如果您收到了下载文件，请继续执行步骤4。 

</font></font></td>
</tr>
</tbody></table>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）关闭世界文件创建</font></font></strong><br>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">要真正流式传输数据，我们应该关闭工作空间中的世界文件创建。</font><font style="vertical-align: inherit;">检查JPEG写模块的要素类型的属性，并将Generate World File参数设置为No：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="https://github.com/domix2000/FMETraining-1/blob/Server-Authoring-2018/ServerAuthoring3SelfServeBasics/Images/Img3.209.Ex2.TurnOffWorldFile.png"><img src="./FMETraining-1_Exercise2.md1_files/Img3.209.Ex2.TurnOffWorldFile.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5）发布和运行工作空间</font></font></strong><br>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">重新发布工作空间并在FME Server上运行它。</font><font style="vertical-align: inherit;">您应该会发现转换结果将作为流式JPEG文件返回。</font><font style="vertical-align: inherit;">很可能它会直接在您的网络浏览器中打开：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="https://github.com/domix2000/FMETraining-1/blob/Server-Authoring-2018/ServerAuthoring3SelfServeBasics/Images/Img3.210.Ex2.JPEGOpenedInBrowser.png"><img src="./FMETraining-1_Exercise2.md1_files/Img3.210.Ex2.JPEGOpenedInBrowser.png" alt="" style="max-width:100%;"></a></p>
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
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">设置工作空间以在数据流服务中使用</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将工作空间发布到数据流服务</font></font></li></ul>

</td>
</tr>
</tbody></table>   
</article>
  </div>
