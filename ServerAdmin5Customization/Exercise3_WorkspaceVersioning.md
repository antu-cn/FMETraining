  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习2
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
版本控制工作空间
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">总体目标</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">版本控制工作空间</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如何对已发布到FME Server的工作空间进行版本控制。</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAdmin\Customization-Ex3-Versioning-Begin.fmw
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">结束工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAdmin\Customization-Ex3-Versioning-Complete.fmw
</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您的GIS部门有两名工作人员，他们会在必要时定期创作并更改自己的工作空间和其他工作空间。</font><font style="vertical-align: inherit;">在某些情况下，对工作空间进行了更改，导致工作空间在编辑后失败。</font><font style="vertical-align: inherit;">原来工作的工作空间未备份且丢失。</font><font style="vertical-align: inherit;">这导致需要额外的时间来发现原因并恢复以前工作的工作空间。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您的管理层已了解FME Server中的新版本控制功能，并想知道它是否可以减少这些问题的发生。</font><font style="vertical-align: inherit;">您的任务是启用版本控制并确保其正常运行。</font></font></p>
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
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）登录FME服务器</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过Windows“开始”菜单上的“Web Interface”选项或直接在Web浏览器中打开FME Server Web界面，然后使用用户名和密码</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">admin</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">登录</font><font style="vertical-align: inherit;">。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）启用版本控制</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 
您可以通过“系统配置”页面在FME Server中启用版本控制。</font><font style="vertical-align: inherit;">选择“功能（Features）”，然后单击“版本控制”旁边的切换。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.210.Ex2.EnableVersionControl.png"><img src="./Images/5.210.Ex2.EnableVersionControl.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">切换将变为绿色指示已启用。</font><font style="vertical-align: inherit;">我们无需更新</font><font style="vertical-align: inherit;">基本的本地版本控制功能</font><font style="vertical-align: inherit;">的</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">远程设置</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.211.Ex2.EnabledVersionControl.png"><img src="./Images/5.211.Ex2.EnabledVersionControl.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）创建工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">接下来，您必须创建一个简单的工作空间，您可以使用它来测试版本控制功能。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">打开FME Workbench并创建一个新的空白工作空间。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Creator</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">转换器</font><font style="vertical-align: inherit;">添加</font><font style="vertical-align: inherit;">到工作空间。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.212.Ex2.SimpleWorksapce.png"><img src="./Images/5.212.Ex2.SimpleWorksapce.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">保存工作空间。</font></font></p>
<p><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）运行工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">最好先在FME Desktop中运行工作空间，然后再将其上传到FME Server。</font><font style="vertical-align: inherit;">如果工作空间未在FME Desktop中运行，则它将无法在FME Server中运行！</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">“运行”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">以确保转换成功。</font><font style="vertical-align: inherit;">现在我们准备将工作空间发布到FME Server。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5）发布到FME Server</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">选择</font><font style="vertical-align: inherit;">“文件”菜单下的“ </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">发布到FME Server</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> ”。</font><font style="vertical-align: inherit;">使用“发布到FME Server向导”将工作空间放在名为“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">版本测试(Version Test)”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">的新存储库中</font><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">如果不存在</font><font style="vertical-align: inherit;">，请单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">新建...”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">按钮</font><font style="vertical-align: inherit;">创建新的存储库</font><font style="vertical-align: inherit;">。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.213.Ex2.CreateRepository.png"><img src="./Images/5.213.Ex2.CreateRepository.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“确定”以创建新存储库并返回“发布到FME Server”对话框。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">接下来，您应该在“发布到FME Server”对话框中看到一个名为</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Commit ...</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">的新按钮</font><font style="vertical-align: inherit;">。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.214.Ex2.CommitButton.png"><img src="./Images/5.214.Ex2.CommitButton.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Commit</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">按钮，将出现以下对话框：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.215.Ex2.VersionOptions1.png"><img src="./Images/5.215.Ex2.VersionOptions1.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击复选框，使用</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">版本0.1初始工作空间(Version 0.1 Initial Workspace)</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">填充文本框，</font><font style="vertical-align: inherit;">然后单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">确定”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.216.Ex2.VersionOptions2.png"><img src="./Images/5.216.Ex2.VersionOptions2.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">确定”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">关闭“版本选项”对话框，然后返回“发布到FME Server”对话框。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.217.Ex2.PublishtoFMEServer1.png"><img src="./Images/5.217.Ex2.PublishtoFMEServer1.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">下一步</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 
”确保已使用“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">作业提交者Job Submitter</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> FME Server服务" </font><font style="vertical-align: inherit;">注册工作空间</font><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">发布”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6）在Web UI中查看版本历史记录</font></font></strong></p>
<p><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过Windows“开始”菜单上的“Web Interface”选项或直接在Web浏览器中打开FME Server Web界面，然后使用用户名和密码</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">admin</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">登录</font><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击</font><font style="vertical-align: inherit;">左侧菜单中的</font><font style="vertical-align: inherit;">“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">存储库</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> ”。</font><font style="vertical-align: inherit;">这将列出所有存储库。</font><font style="vertical-align: inherit;">接下来，单击</font><font style="vertical-align: inherit;">您在步骤5中创建</font><font style="vertical-align: inherit;">的存储库</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">版本测试</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">旁边的复选框</font><font style="vertical-align: inherit;">，然后单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">历史记录”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">按钮。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.218.Ex2.RespositoryVersion.png"><img src="./Images/5.218.Ex2.RespositoryVersion.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">应显示以下对话框，显示此存储库的最新版本控制条目。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.219.Ex2.RespositoryVersionHistory.png"><img src="./Images/5.219.Ex2.RespositoryVersionHistory.png" alt="" style="max-width:100%;"></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">确定”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">关闭对话框。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6）下载版本控制工作空间</font></font></strong></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果需要下载版本控制工作空间，并且要检索特定版本，则必须从Web UI执行此操作。</font><font style="vertical-align: inherit;">FME Workbench无法通过下载向导选择版本控制工作空间。</font><font style="vertical-align: inherit;">下载我们刚刚发布的工作空间版本0.1。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">以</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">管理员</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">身份重新登录到FME Server </font><font style="vertical-align: inherit;">，在FME Server Web UI中，单击</font><font style="vertical-align: inherit;">左侧菜单中</font><font style="vertical-align: inherit;">的</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Repositories</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">这将列出所有存储库。</font><font style="vertical-align: inherit;">接下来单击</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Version Test</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">存储库。</font><font style="vertical-align: inherit;">这将显示此存储库中的工作空间。</font><font style="vertical-align: inherit;">您应该只看到名为</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">VersionControlTest.fmw的</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">工作空间</font><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">让我们再次查看版本历史记录。</font><font style="vertical-align: inherit;">单击工作空间旁边的复选框，然后单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">历史记录”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">按钮。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.220.Ex2.WorkspaceVersionHistory.png"><img src="./Images/5.220.Ex2.WorkspaceVersionHistory.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">这将返回以下对话窗口列表中的可用版本。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.221.Ex2.ViewWorkspaceVersions.png"><img src="./Images/5.221.Ex2.ViewWorkspaceVersions.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">让我们下载这个工作空间并在FME Desktop中打开它。</font><font style="vertical-align: inherit;">在下面的对话框中，单击</font><font style="vertical-align: inherit;">您希望下载的工作空间旁边</font><font style="vertical-align: inherit;">的“ </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">下载”</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">图标。</font><font style="vertical-align: inherit;">在此示例中，</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">VersionControlTest.fmw＆Version 0.1  -  Initial Workspace</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">如果您选择了其他位置，请记住保存工作空间的位置，然后是默认位置。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.222.Ex2.DownloadVersionWorksapce.png"><img src="./Images/5.222.Ex2.DownloadVersionWorksapce.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">7）编辑工作空间并重新发布相同的工作空间</font></font></strong></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">接下来，我们要对工作空间进行小编辑，然后将其重新发布到FME Server。</font><font style="vertical-align: inherit;">然后，我们将访问Web UI并对工作区进行版本化，然后成功地测试它能正常工作。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">打开我们在步骤6中下载的工作空间。默认下载位置为</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C：\ Users \ Administrator \ Downloads</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，并且工作空间应叫做</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">VersionControlTest.fmw</font></font></em></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Workbench中打开工作空间后，将</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Logger</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">添加</font><font style="vertical-align: inherit;">到</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Creator</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">转换器。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.223.Ex2.SimpleWorkspaceUpdate.png"><img src="./Images/5.223.Ex2.SimpleWorkspaceUpdate.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">保存工作空间并运行工作空间。</font><font style="vertical-align: inherit;">接下来，让我们将它发布到FME Server。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">这次，</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">请勿</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">使用发布向导上的提交( commit )按钮。</font><font style="vertical-align: inherit;">您将收到存储库中已存在工作空间的警告，这是正常的，因为我们已启用版本控制。</font><font style="vertical-align: inherit;">单击"是"以</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">重写</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">工作空间。</font><font style="vertical-align: inherit;">我们将在下一步中使用Web UI提交工作空间。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.224.Ex2.PublishtoFMEServer2.png"><img src="./Images/5.224.Ex2.PublishtoFMEServer2.png" alt="" style="max-width:100%;"></a></p>
<p><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">8）使用FME Server Web UI对Workspace进行版本控制</font></font></strong></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">我们已经发布了工作空间，我们的同事已确认工作空间运行。</font><font style="vertical-align: inherit;">现在，我们将使用Web UI为工作空间创建新版本。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">使用</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">admin</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">用户</font><font style="vertical-align: inherit;">登录FME Server Web UI </font><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">再次查看工作空间的版本历史记录。</font><font style="vertical-align: inherit;">单击</font><font style="vertical-align: inherit;">左侧菜单中的</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Repositories</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">并导航到</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Version Test</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">存储库，最后单击存储库名称以查看内容。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">应该有一个名为</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">VersionControlTest.fmw的</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">工作空间</font><font style="vertical-align: inherit;">。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.225.Ex2.Workspace.png"><img src="./Images/5.225.Ex2.Workspace.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">接下来，选择工作空间并单击Commit按钮。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">这将打开“ </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">提交项（Commit Item）”</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">对话框。</font><font style="vertical-align: inherit;">输入提交注释，然后单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">提交”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">按钮。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.226.Ex2.WebUIWorkspaceVersion.png"><img src="./Images/5.226.Ex2.WebUIWorkspaceVersion.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您应该收到以下成功确认，即创建版本。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.227.Ex2.WebUIVersionSuccess.png"><img src="./Images/5.227.Ex2.WebUIVersionSuccess.png" alt="" style="max-width:100%;"></a></p>

<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">（注意：如果您收到错误，可能是工作空间没有对其进行任何更改。从FME Workbench重新发布工作空间并确保编辑并保存在工作空间中。）</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">查看工作空间的版本历史记录，这次您应该看到列出的新版本。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.228.Ex2.WorkspaceVersionHistory2.png"><img src="./Images/5.228.Ex2.WorkspaceVersionHistory2.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您已成功启用并测试了FME Server的版本控制。</font></font></p>
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

如果自上次提交后工作空间没有任何更改，您将收到通知。
</font><font style="vertical-align: inherit;">这确认了工作空间的版本已存在。

</font></font><br><br><a target="_blank" rel="noopener noreferrer" href="./Images/5.229.Ex2.WebUI_VersionNoChanges.png"><img src="./Images/5.229.Ex2.WebUI_VersionNoChanges.png" style="max-width:100%;"></a>
<br><br><font style="vertical-align: inherit;"></font></td>
</tr>
</tbody></table>
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
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启用版本控制 </font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">来自FME Workbench的测试版本控制</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">下载一个版本控制的工作空间</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Server的Web UI中对工作空间进行了版本控制</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">查看了版本控制的工作空间的历史记录</font></font></li>
</ul>

</td>
</tr>
</tbody></table>
<hr>
</article>
  </div>
