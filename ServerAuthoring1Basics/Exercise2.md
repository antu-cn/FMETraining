  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习1.2
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
每日数据库更新：运行工作空间
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数据</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">消防站(Firehalls)（GML）</font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">街区(Neighborhoods)（KML）</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">总体目标</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建工作空间以读取和处理部门数据并将其发布到FME Server</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">检查FME Server界面并运行工作空间</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">无</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">结束工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">无</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">对于本章的练习，您是当地城市GIS部门的技术分析师。</font><font style="vertical-align: inherit;">您拥有使用FME Desktop的丰富经验，您的部门正在调查FME Server以评估其功能。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">市内有许多部门，您的任务之一是从每个部门获取数据并将它们合并到一个公司数据库中。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">由于每个部门都以不同的格式和样式生成数据集，因此您可以使用FME执行此任务，并每周执行一次。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在创建工作空间以执行此转换并将其发布到FME Server之后，您现在希望登录到服务器以运行该工作空间。</font></font></p>
<hr>
 
<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
注意
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在开始本练习之前，</font><font style="vertical-align: inherit;">

您需要完成</font></font><a href="https://safe-software.gitbooks.io/fme-server-authoring-training-2018/content/ServerAuthoring1Basics/Exercise1.html" rel="nofollow"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">练习1.1</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">我们将运行已发布的Basics-Ex1-Complete.fmw工作空间（或任何您命名的工作空间）。 

</font></font></td>
</tr>
</tbody></table>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）连接到服务器</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">要登录FME Server Web界面，请从开始菜单中选择Web界面选项，或者 - 在Web浏览器中 - 输入FME Server的地址。</font></font></p>
<hr>
<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
技巧
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

当FME Server安装在物理或虚拟硬件上时，地址为http：// &lt;servername&gt; / fmeserver
 </font></font><br><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果您使用的是FME云，则地址为：http：// &lt;servername&gt; .fmecloud.com / fmeserver

</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">这将打开正在使用的FME服务器的Web界面登录屏幕。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）登录服务器</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在“用户登录”对话框中，输入FME Server帐户的用户名和密码。</font><font style="vertical-align: inherit;">用于培训安装的常用用户名/密码组合是admin / admin：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img1.217.Ex2.LogInWindow.png"><img src="./Images/Img1.217.Ex2.LogInWindow.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“登录”按钮。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）检查用户界面</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">欢迎使用FME Server Web界面。</font><font style="vertical-align: inherit;">花一点时间熟悉这个界面。</font><font style="vertical-align: inherit;">在右上角，您可以访问“帮助”菜单，您喜欢的工作空间列表和用户设置：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img1.218.Ex2.TopRightMenu.png"><img src="./Images/Img1.218.Ex2.TopRightMenu.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">侧边菜单是可以访问所有FME Server功能的地方。</font><font style="vertical-align: inherit;">如果您需要更多空间，可以折叠此菜单。</font><font style="vertical-align: inherit;">请注意，根据您登录的帐户，旁边的菜单会有所不同。</font><font style="vertical-align: inherit;">在下图中，用户以admin身份登录：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img1.219.Ex2.SidebarMenu.png"><img src="./Images/Img1.219.Ex2.SidebarMenu.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">最后，在FME Server主页上，您可以访问“最近的作业”，“最近的项目”，“上次发布的工作空间”和“收藏的工作空间”。</font><font style="vertical-align: inherit;">如果您点击此页面，只需点击顶角的FME徽标即可返回主页。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img1.220.Ex2.HomePageOverview.png"><img src="./Images/Img1.220.Ex2.HomePageOverview.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在“上次发布的工作空间”下，您应该能够找到练习1中发布的工作空间。单击此工作空间旁边的“星形”图标将其设置为收藏夹：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img1.221.Ex2.StarWorkspace.png"><img src="./Images/Img1.221.Ex2.StarWorkspace.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“星形”后，工作空间将显示在“收藏夹工作空间”面板中。</font><font style="vertical-align: inherit;">这允许从FME Server Web界面中的任何位置快速访问此工作空间：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img1.222.Ex2.StarredWorkspace.png"><img src="./Images/Img1.222.Ex2.StarredWorkspace.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">我们很快就会运行工作空间，但也许首先我们应该确保FME Server正常运行（我们可以登录的事实是一个好兆头）并且我们获得了许可且引擎也正在运行。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）确认许可</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击界面菜单的ADMIN部分上的Engines＆Licensing。</font><font style="vertical-align: inherit;">这将打开许可部分。</font><font style="vertical-align: inherit;">您应该看到一条消息，通知您FME Server已获得许可并且可用的引擎列表：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img1.223.Ex2.LicensingInfo.png"><img src="./Images/Img1.223.Ex2.LicensingInfo.png" alt="" style="max-width:100%;"></a></p>
<hr>
<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
技巧
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

如果您的机器未经许可或缺少引擎，请与您的教师联系以获取故障排除提示。

</font></font></td>
</tr>
</tbody></table>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5）运行工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击界面左上角的FME Server徽标，返回Web界面主页。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“收藏夹工作空间”面板中的已发布工作空间以打开此工作空间的网页。</font><font style="vertical-align: inherit;">如果在“收藏的工作空间”面板下未看到工作空间，则表示未在步骤3中单击该星形。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">工作空间页面显示了一些选项，第一个选项用于存储库，工作空间和服务。</font><font style="vertical-align: inherit;">这些应该已经填入了值，因为我们直接打开了工作空间。</font><font style="vertical-align: inherit;">如果我们通过Run Workspace页面打开工作空间，我们必须填写以下值：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img1.224.Ex2.RunWorkspaceDialog.png"><img src="./Images/Img1.224.Ex2.RunWorkspaceDialog.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">由于此工作空间具有一些已发布的参数，因此它们也会列出; </font><font style="vertical-align: inherit;">但是我们现在可以忽略这些（我们将在课程后期处理源数据集）。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“运行”按钮以运行工作空间。</font><font style="vertical-align: inherit;">工作空间将运行完成，并将显示该效果的消息：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img1.225.Ex2.RanWorkspace.png"><img src="./Images/Img1.225.Ex2.RanWorkspace.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6）检查作业页面</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击侧面菜单上的“作业”将其展开，然后单击“已完成”以查看已完成作业的列表。</font><font style="vertical-align: inherit;">将打开以前运行的作业列表，包括我们刚刚运行的作业。</font><font style="vertical-align: inherit;">请注意，您的“作业”页面看起来与下面的屏幕截图不同，一个DataTest.fmw工作空间运行显示为失败的作业：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img1.226.Ex2.JobsWindow.png?"><img src="./Images/Img1.226.Ex2.JobsWindow.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">请注意界面的一些有趣部分：</font></font></p>
<ol>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">有标签显示已完成作业（默认），排队作业和正在运行的作业。</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">有两个下拉列表：一种允许您过滤显示谁的作业，另一个允许您根据作业状态进行筛选。</font><font style="vertical-align: inherit;">在2018.1中，过滤器包含在一个下拉列表中。</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">不同的图标用于指示作业是成​​功还是失败。</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">作业按其完成的时间顺序显示（无论是否成功）。</font></font></li>
</ol>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击您的作业以更详细地检查结果。</font><font style="vertical-align: inherit;">您将在顶部看到摘要，显示已写入的要素数以及开始和结束的时间。</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">STATUS</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">下有更多的时间详细信息</font><font style="vertical-align: inherit;">，包括作业提交，排队等的时间。有关向FME服务器发出的特定请求的信息可以在</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">REQUEST DATA</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">下找到</font><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">转换的完整结果在</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">RESULT DATA下</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您还可以在此页面上检查FME转换日志文件。</font></font></p>
<hr>

<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
警察局长Webb-Mapp说......
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

请记住，此工作空间不会写入任何数据，只会将其发送给Null写模块。</font><font style="vertical-align: inherit;">因此，现在，要查看任何结果，请在日志文件中搜索摘要。

</font></font></td>
</tr>
</tbody></table>
<hr>

<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
高级练习
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

如果你想看到一个处于不同状态的作业，那么我们将不得不放慢一些工作空间。
</font></font><br><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Workbench中打开工作空间并添加Decelerator转换器（例如，在Reprojector之前）。</font><font style="vertical-align: inherit;">将其设置为每个要素延迟工作空间5秒。</font><font style="vertical-align: inherit;">将工作空间发布回FME Server并重新运行它。
</font></font><br><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在工作空间将需要30多秒才能运行，您应该能够在Running状态下找到它。</font><font style="vertical-align: inherit;">此外，如果您快速连续运行三到四次，那么您将拥有比引擎更多的作业，并能够在排队状态下找到一些作业。   

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
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">登录FME Server并检查它是否正在运行并获得许可</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">使用“上次发布”列表找到工作空间</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">运行工作空间并检查作业历史记录以确认其正确运行</font></font></li>

</ul></td>
</tr>
</tbody></table>
</article>
  </div>
