  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习2
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
添加Web连接
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数据</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Resources\ServerAdmin\DropboxWebConnection.xml
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">总体目标</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">验证FME Server的Web连接</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如何为Dropbox添加和验证Web连接</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">无</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">结束工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAdmin\Customization-Ex2-WebConnections-Complete.fmw
</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您的GIS部门正在与其他几个组织合作开展一个大型项目。</font><font style="vertical-align: inherit;">有很多要安排的事，因此每当有其他文件要共享时，每个组织都会将文件放入共享的Dropbox中，以便所有组织成员轻松访问。</font><font style="vertical-align: inherit;">您的任务是配置FME Server以访问Dropbox。</font></font></p>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）创建工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您必须首先创建Dropbox Web连接。</font><font style="vertical-align: inherit;">创建此Web连接的第一步是运行工作空间！</font><font style="vertical-align: inherit;">打开FME Workbench并创建一个新的空白工作空间。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">该</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">DropboxConnector</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">转换器可以访问Dropbox帐户，并执行删除，下载列表和上传的行动。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Creator</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">转换器和</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">DropboxConnector</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">转换器添加到工作空间。</font><font style="vertical-align: inherit;">把Creator连接到DropboxConnector。</font><font style="vertical-align: inherit;">添加一个</font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Logger</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">转换器连接到DropboxConnector的输出端口。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.201.Ex1.WebConnectionsWorkbench.png"><img src="./Images/5.201.Ex1.WebConnectionsWorkbench.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）配置DropboxConnector和创建Web连接</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">选择DropboxConnector并打开参数对话框或通过参数编辑器窗格查看它们。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Dropbox操作</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">更改</font><font style="vertical-align: inherit;">为</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">List</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">然后选择下拉</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Dropbox的连接</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，然后选择</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">添加Web连接...</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">将打开“Dropbox连接”对话框。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">设置</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">连接名称</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">为</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">DropboxWebConnection</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，然后单击</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">身份验证...</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.202.Ex1.AuthenticateConnection.png"><img src="https://github.com/domix2000/FMETraining-1/raw/Server-Admin-2018/ServerAdmin5Customization/Images/5.202.Ex1.AuthenticateConnection.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">这将打开一个新窗口，其中包含与Dropbox的直接安全连接。</font><font style="vertical-align: inherit;">填写</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Web服务身份验证</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">凭据，如下所示：</font></font></p>
<ul>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">电子邮件：</font></font></strong> <a href="mailto:fmedropbox@gmail.com"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">fmedropbox@gmail.com</font></font></a></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">密码：</font></font></strong> <em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">&lt;distributed_during_course&gt;</font></font></em></li>
</ul>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">...然后单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">登录”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">注意：上述电子邮件和密码应仅用于本练习。</font><font style="vertical-align: inherit;">您可以使用</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">自己的Dropbox帐户</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，但是对于本课程，我们提供了一个帐户供您使用。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">允许”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">以允许FME访问Dropbox帐户。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您的</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">DropboxConnector</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">参数现在应如下所示：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.203.Ex1.DropboxConnectorParameters.png"><img src="./Images/5.203.Ex1.DropboxConnectorParameters.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">确定”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">以应用更改。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）运行工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">最好先在FME Desktop中运行工作空间，然后再将其上传到FME Server。</font><font style="vertical-align: inherit;">如果工作空间未在FME Desktop中运行，则它将无法在FME Server中运行！</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">“运行”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">以确保转换成功。</font><font style="vertical-align: inherit;">现在我们准备将工作空间发布到FME Server。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）发布到FME Server</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">选择</font><font style="vertical-align: inherit;">“文件”菜单下的“ </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">发布到FME Server</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> ”。</font><font style="vertical-align: inherit;">使用“发布到FME Server向导”将工作空间放在“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">培训”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">存储库中。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在“上</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">载连接”</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">步骤中，选中“DropboxWebConnection”，然后单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">下一步”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">我们将使用FME Server Web界面授权我们的Web连接。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.204.Ex1.UploadConnections.png"><img src="./Images/5.204.Ex1.UploadConnections.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">确保使用</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Job Submitter</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> FME Server Service </font><font style="vertical-align: inherit;">注册工作空间</font><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">发布”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5）登录FME Server</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过Windows“开始”菜单上的“Web Interface”选项或直接在Web浏览器中打开FME Server Web界面，然后使用用户名和密码</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">admin</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">登录</font><font style="vertical-align: inherit;">。</font></font></p>
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
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6）配置Dropbox Web服务</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">从左侧边栏转到</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Connections&gt; Web Connections</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击</font><font style="vertical-align: inherit;">“Web连接”页面上的“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Manage Web Services</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> ”。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.205.Ex1.ManageServices.png"><img src="./Images/5.205.Ex1.ManageServices.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">选择</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Dropbox</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">将</font><font style="vertical-align: inherit;">打开</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">编辑Web服务“Dropbox”</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">页面。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">填写</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">客户信息</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">参数如下：</font></font></p>
<ul>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">客户端ID：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> lxx2amcu6xfs11r</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">客户端密钥：</font></font></strong> <em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">&lt;distributed_during_course&gt;</font></font></em></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">重定向Uri：</font></font></strong> <a href="https://localhost:8443/fmeoauth" rel="nofollow"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">https：// localhost：8443 / fmeoauth</font></font></a></li>
</ul>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">客户端ID和客户端密钥是您将客户端连接到Web服务的方式。</font><font style="vertical-align: inherit;">在为Web服务创建新的API应用程序时会生成它们。</font><font style="vertical-align: inherit;">REST API文档页面（例如</font></font><a href="https://www.dropbox.com/developers" rel="nofollow"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Dropbox的</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">这一页面）</font><font style="vertical-align: inherit;">详细介绍了Web服务应用程序的创建。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">确定”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">以保存这些更新。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.206.Ex1.EditWebConnection.png"><img src="./Images/5.206.Ex1.EditWebConnection.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">7）授权Web连接</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">返回</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Connections&gt; Web Connections</font></font></strong></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在Web连接列表中</font><font style="vertical-align: inherit;">选择</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">DropboxWebConnection</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在“ </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">编辑Edit”</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">页面上，单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">授权Authorize”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">按钮：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.207.Ex1.Authorize.png"><img src="./Images/5.207.Ex1.Authorize.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将打开一个窗口，其中包含Dropbox的登录屏幕。</font><font style="vertical-align: inherit;">登陆使用：</font></font></p>
<ul>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">电子邮件：</font></font></strong> <a href="mailto:fmedropbox@gmail.com"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">fmedropbox@gmail.com</font></font></a></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">密码：</font></font></strong> <em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">&lt;distributed_during_course&gt;</font></font></em></li>
</ul>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">窗口关闭，弹出一条消息：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/5.208.Ex1.AuthorizedSuccessfully.png"><img src="./Images/5.208.Ex1.AuthorizedSuccessfully.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您现在已成功授权FME Server中的Dropbox Web连接，以便您在工作空间中使用！</font></font></p>
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
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">访问Web服务</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">发布到FME Server的Web连接</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Server中配置Web服务</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Server上授权Web连接</font></font></li>
</ul>

</td>
</tr>
</tbody></table>
</article>
  </div>
