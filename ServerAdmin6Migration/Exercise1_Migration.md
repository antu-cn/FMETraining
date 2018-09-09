  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习1
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
备份和迁移
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数据</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">N / A</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">总体目标</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">执行FME Server安装的备份和还原操作</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">备份和恢复自动和手动FME Server配置</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您的组织已决定将FME Server升级到刚刚发布的最新版本。</font><font style="vertical-align: inherit;">您希望确保对当前FME Server所做的所有配置，设置和资源都将转移到新的FME Server安装中。</font><font style="vertical-align: inherit;">通过备份当前的FME Server，然后将配置和设置迁移到新版本，您将节省大量时间！</font></font></p>
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

如果您已完成Configure for HTTPS练习，请记住，连接到FME Server的URL现在是https：// localhost：8443 / fmeserver而不是http：// localhost / fmeserver！

</font></font></td>
</tr>
</tbody></table>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）连接到FME服务器</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 
通过Windows“开始”菜单上的“Web Interface”选项或直接在Web浏览器中打开FME Server Web界面，然后使用用户名和密码</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">admin</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">登录</font><font style="vertical-align: inherit;">。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）备份FME服务器</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 
迁移FME Server时，需要备份当前的FME Server配置。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在左侧边栏上，单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">备份和还原”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在“ </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">备份”</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">页面上，确保已设置默认参数：</font></font></p>
<ul>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">备份到：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">下载</font></font></li>
</ul>
<p><a target="_blank" rel="noopener noreferrer" href="https://github.com/domix2000/FMETraining-1/blob/Server-Admin-2018/ServerAdmin6Migration/Images/6.401.BackupFile.png"><img src="./FMETraining-1_Exercise1_Migration_files/6.401.BackupFile.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">下载”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">按钮以启动FME Server备份过程并将文件保存到您的计算机。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）备份配置文件</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">最佳做法是将已更改的任何FME Server配置文件手动备份到FME Server安装目录之外的安全位置。</font><font style="vertical-align: inherit;">某些配置不包含在主备份过程中，您可能希望引用对这些文件所做的更改。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在本培训课程中，如果您已完成所有练习，我们已修改</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">server.xml</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">web.xml</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">context.xml</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">cacerts</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，并</font><font style="vertical-align: inherit;">在配置FME Server for HTTPS练习中</font><font style="vertical-align: inherit;">创建了一个</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">tomcat.keystore</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">文件。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">因此，如果我们尝试迁移当前的FME Server配置，那么这些文件是我们以后在恢复FME服务器配置时需要有副本以供参考的。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">使用备份配置文件保存这些文件，以便在还原期间轻松找到。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）备份日志文件</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">与配置文件一样，不会自动备份FME Server日志文件。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">可以</font><font style="vertical-align: inherit;">在</font><em><font style="vertical-align: inherit;">Logs</font></em><font style="vertical-align: inherit;">文件夹中</font><font style="vertical-align: inherit;">Web界面</font><font style="vertical-align: inherit;">的“ </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">资源”</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">页面上</font><font style="vertical-align: inherit;">找到FME Server日志文件</font><font style="vertical-align: inherit;">。</font></font><em><font style="vertical-align: inherit;"></font></em><font style="vertical-align: inherit;"></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在本练习中，我们将仅备份几个日志文件。</font><font style="vertical-align: inherit;">转到</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">资源&gt;日志&gt;核心&gt;当前，</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">并在</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">fmeconfiguration.log</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">fmeconnection.log</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">和</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">fmeprocessmonitorcore.log</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">旁边的复选框中</font><em><font style="vertical-align: inherit;">打勾</font></em><font style="vertical-align: inherit;">。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="https://github.com/domix2000/FMETraining-1/blob/Server-Admin-2018/ServerAdmin6Migration/Images/6.402.SelectLogFiles.png"><img src="./FMETraining-1_Exercise1_Migration_files/6.402.SelectLogFiles.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">下载”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">并将这些日志文件保存在保存</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">BackupFMEServer</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">配置和配置文件</font><font style="vertical-align: inherit;">的相同位置</font><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">可以备份来自FME Server的日志文件，但</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">无法将其还原</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">到新的FME Server实例。</font><font style="vertical-align: inherit;">但是，备份日志文件仍然是一个好主意，以备日后需要引用它们时使用。</font><font style="vertical-align: inherit;">如果不备份日志文件，则在卸载FME Server时它们将消失。</font></font></p>
<hr>

<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
Workbench博士说......
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

如果要备份整个日志文件夹，可以在FME Server系统共享的“资源”文件夹内的文件系统中找到它。

</font></font></td>
</tr>
</tbody></table>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5）验证备份，安装FME Server，还原配置</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">此时，在常规迁移工作流程中，这是验证备份并安装新FME Server的时间。</font><font style="vertical-align: inherit;">为了本练习的目的，我们将在此结束练习。</font></font></p>
<p><font style="vertical-align: inherit;"></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">卸载FME Server </font><em><font style="vertical-align: inherit;">之前</font></em><font style="vertical-align: inherit;">，首先通过安装新的FME Server实例来验证FME Server备份至关重要</font><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">卸载后，除非您定期执行整个文件系统的备份，否则无法轻松回溯。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在还原手动备份的配置文件时，强烈建议您浏览每个配置文件，而不是简单地将旧配置文件复制到新的FME Server目录中 - 文件结构和参数可能在不同版本之间发生了变化！</font></font></p>
<hr>
 
<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
恭喜！
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

通过完成本练习，您已学会如何：
</font></font><br>
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">备份您的FME Server实例</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">备份其他配置文件</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">备份日志文件</font></font></li></ul>

</td>
</tr>
</tbody></table>
</article>
  </div>
