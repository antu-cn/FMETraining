  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习1.4
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
每日数据库更新：添加到版本历史记录
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数据</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">消防站Firehalls（GML）</font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">街区Neighborhoods（KML）</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">总体目标</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将先前练习中构建的工作空间的副本提交到FME Server上的版本历史记录。</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">与版本历史工具交互</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动工作区</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">无</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">结束工作区</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">无</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您已经（在练习1,2和3中）创建了一个工作空间来执行此转换，将其发布到FME Server，运行它以确认它是否正常工作并安排它每天运行。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您现在想要“检查点”工作空间的这个工作版本，以确保如果将来对其进行任何编辑，您始终可以返回到此状态。</font></font></p>
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

在工作场所中，您必须先让FME Server管理员启用版本控制，然后才能开始使用它。

</font></font></td>
</tr>
</tbody></table>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）连接到服务器</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">浏览到FME Server界面的登录页面，然后使用管理员帐户（admin / admin）登录。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）打开版本控制</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">版本控制将默认关闭，因此您需要先打开它才能使用它。</font><font style="vertical-align: inherit;">单击侧面菜单上的“系统配置”以展开菜单，然后在界面菜单的“管理”部分中单击“常规”。</font><font style="vertical-align: inherit;">在“系统配置常规”页面上，找到“版本控制”设置以切换开关以打开“版本控制”，启用该功能时，开关将为绿色。</font></font></p>
<hr>

<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
2018.1新的变化
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

在FME Server 2018.1中，系统配置已压缩，并且可以在“系统配置”菜单的“常规”页面中找到“版本控制”。

</font></font></td>
</tr>
</tbody></table>
<hr>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img1.238.Ex4.VersionControl.png"><img src="./Images/Img1.238.Ex4.VersionControl.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">不要担心该页面上的其他设置，现在，只需将它们保留为默认值即可。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）将工作空间添加到版本历史记录</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">由于Basics-Ex1-Complete.fmw工作空间已发布到FME Server，您可以从Web界面将其添加到版本历史记录中。</font><font style="vertical-align: inherit;">转到“存储库”页面并打开“培训存储库”。</font><font style="vertical-align: inherit;">选中工作空间旁边的复选框，然后单击Commit提交。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img1.239.Ex4.CommitFromRepo.png"><img src="./Images/Img1.239.Ex4.CommitFromRepo.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">为此版本的工作空间添加有意义的提交注释，然后单击“提交”将其添加到历史记录中。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）检查版本历史记录</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">确认已将此新版本添加到版本历史记录中。</font><font style="vertical-align: inherit;">转到“存储库”页面并打开“培训存储库”。</font><font style="vertical-align: inherit;">选中工作空间旁边的复选框，然后单击“历史记录”按钮以查看有关您刚刚提交的工作空间版本的信息。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img1.240.Ex4.ViewHistory.png"><img src="./Images/Img1.240.Ex4.ViewHistory.png" alt="" style="max-width:100%;"></a></p>
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
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将新版本的工作空间提交到版本历史记录</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">查看存储库的版本历史记录</font></font></li>

</ul></td>
</tr>
</tbody></table>
</article>
  </div>
