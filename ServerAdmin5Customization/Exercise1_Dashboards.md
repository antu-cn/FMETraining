  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习1
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
配置仪表板
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数据</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">N / A</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">总体目标</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">使用仪表板监控FME Server运行状况</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如何添加FME Server仪表板并对其进行故障排除</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAdmin\Customization-Ex1-JobHistoryStatisticsGathering.fmw
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">结束工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">无</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">作为FME Server管理员的角色，您负责管理和维护公司FME Server的运行状况。</font><font style="vertical-align: inherit;">为了轻松监控运行状况，FME Server具有可以启用的默认仪表板。</font></font></p>
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

如果您已完成配置HTTPS练习，则仅完成步骤1。</font><font style="vertical-align: inherit;">如果您未完成此练习，请转到步骤2。
</font></font></font></font></td>
</tr>
</tbody></table>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）更新工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">当您使用自签名证书配置FME Server时，仪表板将失败，这是一个众所周知的问题。</font><font style="vertical-align: inherit;">要解决此问题，我们需要重新发布在HTTPCallers中更改了参数的仪表板工作空间。</font><font style="vertical-align: inherit;">有关此问题的更多详细信息，请参阅</font></font><a href="https://knowledge.safe.com/articles/55053/fme-server-troubleshooting-fme-server-dashboards.html" rel="nofollow"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">FME Server仪表板故障排除</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">文章。</font></font></p>
<p><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Desktop中，打开Customization-Ex1-JobHistoryStatisticsGathering.fmw工作空间并将其发布到FME Server。</font><font style="vertical-align: inherit;">确保将存储库设置为仪表板并将工作空间重命名为JobHistoryStatisticsGathering.fmw。</font><font style="vertical-align: inherit;">发布时，将显示警告消息，单击“是”以覆盖现有工作空间。</font><font style="vertical-align: inherit;">这是控制器工作空间，现在它已更新，我们可以运行其他仪表板。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）登录FME服务器</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过Windows“开始”菜单上的“Web界面”选项或直接在Web浏览器中打开FME Server Web界面，然后使用用户名和密码</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">admin</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">登录</font><font style="vertical-align: inherit;">。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）运行仪表板工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">我们首先需要启用仪表板，然后它们才会显示在仪表板页面上。</font><font style="vertical-align: inherit;">FME Server附带五个默认仪表板，通过运行工作空间触发。</font></font></p>
<p><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在侧面菜单栏上单击“运行工作空间”。</font><font style="vertical-align: inherit;">在“运行工作空间”页面上，选择“仪表板”作为存储库。</font><font style="vertical-align: inherit;">然后选择JobHistoryStatisticsGathering.fmw作为工作空间。</font><font style="vertical-align: inherit;">在参数中将用户名和密码设置为</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">admin</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，然后单击“运行”：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.301.RunJobHistoryDashboard.png"><img src="./Images/5.301.RunJobHistoryDashboard.png" alt="" style="max-width:100%;"></a></p>
<p><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">工作空间运行完毕后，返回“运行工作空间”页面，然后运行另一个仪表板。</font><font style="vertical-align: inherit;">在“运行工作空间”页面上，选择DailyTotalRunningTime.fmw，然后单击“运行”。</font></font></p>
<p><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">再运行一个工作空间，以便我们查看一些数据。</font><font style="vertical-align: inherit;">在运行工作空间页面上，将Repository更改为Samples并选择austinApartments.fmw并单击运行。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）查看仪表板</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在侧面菜单栏上单击仪表板。</font><font style="vertical-align: inherit;">这是仪表板页面，可以查看已运行的任何仪表板。</font></font></p>
<p><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">选择DailyTotalRunningTime以查看仪表板。</font><font style="vertical-align: inherit;">由于我们只运行了一次austinApartments.fmw工作空间，我们的仪表板并没有告诉我们多少，但是超时仪表板成为服务器管理员的宝贵资源：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.302.TotalRunTime.png"><img src="./Images/5.302.TotalRunTime.png" alt="" style="max-width:100%;"></a></p>
<hr>

<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
高级练习
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

作为高级练习，请设置一个计划，以便每天运行一次所有仪表板，这样当您开始新的一天时，您将获得有关服务器性能的最新快照。

</font></font></font></font></td>
</tr>
</tbody></table>
<hr>

<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
恭喜
</font></font></font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

通过完成本练习，您已学会如何：
</font></font></font></font><br>
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">设置现有仪表板</font></font></font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Server中查看仪表板</font></font></font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">更新自签名证书的仪表板</font></font></font></font></li></ul>

</td>
</tr>
</tbody></table>
</article>
  </div>
