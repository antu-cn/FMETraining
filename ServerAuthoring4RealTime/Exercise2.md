  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习4.2
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
建筑更新通知系统
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数据</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">建筑足迹（Esri Shapefile）</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">总体目标</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">对数据库的实时更新</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">运行工作空间以响应通知</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">无</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">结束工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAuthoring\RealTime-Ex2-Complete.fmw
</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">作为GIS部门的技术分析师，您已经意识到将手动更新推送到公司数据库的相关开销。</font><font style="vertical-align: inherit;">阅读完FME Server中的通知后，您认为应该可以设置一个自动执行此过程的系统。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">到目前为止，您已经设置了一个系统，用于添加要由FME Server注册的文件通知。</font><font style="vertical-align: inherit;">现在，您必须创建一个工作空间来处理这些工作空间并将其发布到FME Server。</font><font style="vertical-align: inherit;">然后，必须通过通知主题触发工作空间。</font></font></p>
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
这个练习在练习1结束的地方继续。你必须完成练习1才能进行这个练习。
</font></font></td>
</tr>
</tbody></table>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）创建工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动FME Workbench并从空工作空间开始。</font><font style="vertical-align: inherit;">只需添加一个Creator和Logger转换器：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.408.Ex2.InitialWorkspace.png"><img src="./Images/Img4.408.Ex2.InitialWorkspace.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">这将为我们提供一个工作空间来响应新文件; </font><font style="vertical-align: inherit;">虽然还没有做多少。</font><font style="vertical-align: inherit;">我们只是创建它来检查我们是否可以使设置正常工作。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）保存并发布工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">保存工作空间并将其发布到FME Server。</font><font style="vertical-align: inherit;">我们只需要运行它（不做任何特殊操作），所以只能使用Job Submitter服务注册它。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）创建订阅</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">返回到FME Server Web界面并导航到“通知”页面。</font><font style="vertical-align: inherit;">单击“订阅”选项卡，然后单击“新建”以创建新的订阅。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">调用订阅“Process Building Updates”。</font><font style="vertical-align: inherit;">订阅ShapeIncomingFile主题：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.409.Ex2.CreateSubscription1.png"><img src="./Images/Img4.409.Ex2.CreateSubscription1.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在将协议设置为FME Workspace并选择上一步中上传的工作空间：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.410.Ex2.CreateSubscription2.png"><img src="./Images/Img4.410.Ex2.CreateSubscription2.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“确定”以创建订阅。</font><font style="vertical-align: inherit;">每次传入的Shape数据集触发ShapeIncomingFile主题时，这将导致工作空间运行。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）测试订阅</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在Windows资源管理器中，压缩update002.shp / .dbf / .shx / .prj文件。</font><font style="vertical-align: inherit;">然后返回FME Server，通过上传update002.zip文件测试订阅。</font></font></p>
<p><em><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">注意：</font></font></strong></em> <em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">由于我们将目录监视设置为仅监视新文件，因此上传的Shapefile应与第一个不同 - 或者至少具有不同的名称。</font></font></em></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">这一次，不是监视主题（虽然它会再次出现），请检查“作业”页面。</font><font style="vertical-align: inherit;">您应该看到已运行工作空间以响应新文件：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.411.Ex2.JobLogShowingTriggeredWorkspace.png"><img src="./Images/Img4.411.Ex2.JobLogShowingTriggeredWorkspace.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">这证明工作空间已经运行。</font></font></p>
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
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建新的FME工作空间订阅</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">配置订阅以运行工作空间以响应主题触发</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过在“已完成的作业”页面上验证其成功来测试通知系统</font></font></li></ul>

</td>
</tr>
</tbody></table>   
</article>
  </div>
