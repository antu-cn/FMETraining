  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习4.5
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
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">提供电子邮件驱动的更新通知</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">电子邮件订阅</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAuthoring\RealTime-Ex5-Begin.fmw
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">结束工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAuthoring\RealTime-Ex5-Complete.fmw
</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在配置FME Server以使用目录监视和电子邮件发布处理建筑足迹更新后，您的主管想知道他们是否可以在更新企业数据库时收到电子邮件。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">使用外部电子邮件服务器，您认为可以在FME Server中配置另一个通知以满足此要求。</font></font></p>
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
这个练习在练习4结束的地方继续。你必须完成练习4才能进行这个练习。
</font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在本练习中，需要访问SMTP电子邮件服务器才能发送电子邮件。</font><font style="vertical-align: inherit;">Gmail，Outlook和Yahoo! </font><font style="vertical-align: inherit;">如果您无法访问内部电子邮件服务器，那么例如Gmail, Outlook, and Yahoo!都是可接受的基于Web的解决方案。
</font></font></td>
</tr>
</tbody></table>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）添加订阅</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">打开FME Server Web界面并导航到“通知”页面。</font><font style="vertical-align: inherit;">单击“订阅”选项卡，然后单击“新建”以创建新的订阅。</font><font style="vertical-align: inherit;">这将是一个电子邮件服务，通过该服务发送响应。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">为订阅命名，例如</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Send Building Update Email(发送建筑更新电子邮件)</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，并为其创建一个新主题，例如</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">BuildingUpdateEmail</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">（使用与以前练习不同的主题非常重要）。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将协议设置为“电子邮件”并设置SMTP电子邮件服务器参数。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果有用，Gmail的服务器信息如下：</font></font></p>
<table>
<tbody><tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">SMTP服务器主机</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">smtp.gmail.com</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">服务器端口</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">465</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">连接安全</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">SSL / TLS</font></font></td>
</tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">无论电子邮件提供商如何，您都应该按如下方式设置这些参数：</font></font></p>
<table>
<tbody><tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">电邮来自</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您的帐户名称（例如fmeshapeprocessing@gmail.com）</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">电子邮件主题</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">建筑足迹数据库已更新</font></font></td>
</tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">大多数常规设置（电子邮件收件人，电子邮件模板等）将由我们要提供的内容设置，因此一旦设置了上述内容，请单击确定以保存订阅。</font></font></p>

<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
注意
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

您可能需要创建特定于应用程序的密码才能允许FME Server登录该帐户，具体取决于您的Gmail安全设置。</font><font style="vertical-align: inherit;">如果您注意到连接到您帐户的错误，请参阅此文章：</font></font><a href="https://knowledge.safe.com/articles/394/imap-publisher-not-reading-emails-from-gmail.html" rel="nofollow"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">IMAP发布或电子邮件订阅不会从Gmail中读取电子邮件</font></font></a>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">另外，如果您无权访问电子邮件帐户，请将此订阅的协议更改为“Logger”。</font><font style="vertical-align: inherit;">当触发BuildingUpdateEmail主题时，这将在其中一个FME Server日志文件中添加一个条目。

</font></font></td>
</tr>
</tbody></table>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）编辑工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">从练习4（或上面列出的开始工作空间）打开工作空间。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">添加两个新转换器 - </font></font><a href="https://hub.safe.com/transformers/fmeserveremailgenerator" rel="nofollow"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">FMEServerEmailGenerator</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">（自定义转换器）和FMEServerNotifier  - 作为单独的数据流，连接到FeatureReader的&lt;Initiator&gt;输出端口：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.436.Ex5.WorkspaceWithNotifier.png"><img src="./Images/Img4.436.Ex5.WorkspaceWithNotifier.png" alt="" style="max-width:100%;"></a></p>
<p><em><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">注意：</font></font></strong></em> <em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将这两个转换器连接到FeatureReader的&lt;Initiator&gt;端口很重要，其中只会出现一个要素。</font><font style="vertical-align: inherit;">如果将它们连接到&lt;Generic&gt;输出端口，那么您将收到Shapefile数据集中每个要素的电子邮件！</font></font></em></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）编辑FMEServerEmailGenerator</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">检查</font><strong><font style="vertical-align: inherit;">FMEServerEmailGenerator</font></strong><font style="vertical-align: inherit;">的参数。</font><font style="vertical-align: inherit;">此转换器可用于覆盖步骤1中创建的电子邮件订阅中的配置。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">每个字段还可以接受允许动态配置电子邮件的属性。</font><font style="vertical-align: inherit;">为了我们在培训过程中的目的，请手动设置以下参数：</font></font></p>
<table>
<tbody><tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">发至</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">（您有权查看的电子邮件）</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">主题</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">建筑足迹数据库更新</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">内容</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">建筑足迹数据库已更新！</font></font></td>
</tr>
</tbody></table>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）检查FMEServerEmailGenerator输出</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> FMEServerEmailGenerator创建一个名为</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">text_line_data</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">的新属性</font><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">将Inspector转换器连接到FMEServerEmailGenerator并运行工作空间以查看该属性的内容。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">你会看到它创建一个像这样的JSON字符串：
</font></font><br><code>{ "email_to" : "fmeservertraining@safe.com","email_cc" : "", "email_bcc" : "", "email_from" : "", "email_replyto" : "", "email_subject" : "Building Footprints Database Updated", "subscriber_content" : "The Building Footprints database has been updated!" }</code></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">具有值集的每个关键字（例如email_to，email_subject和subscriber_content）将覆盖我们创建的电子邮件订阅中的设置。</font><font style="vertical-align: inherit;">这将允许我们根据工作空间内发生的事情动态更改发送的电子邮件的部分内容。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5）编辑FMEServerNotifier</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在编辑FMEServerNotifier转换器的参数。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">设置FME Server Connection参数，选择之前创建的主题（BuildingUpdateEmail），并为Content选择属性</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">text_line_data</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">（此属性由FMEServerEmailGenerator创建）：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.437.Ex5.FMEServerNotifierParameters.png"><img src="./Images/Img4.437.Ex5.FMEServerNotifierParameters.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6）发布工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">保存并发布工作空间。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您可以更新已发布的工作空间或重命名它。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Server中，导航到FME Workspace Subscriptions页面。</font><font style="vertical-align: inherit;">请注意，在上一个练习中使用通知服务注册工作空间时，将自动创建Subscription。</font><font style="vertical-align: inherit;">例如，如果工作空间名为RealTime-Ex4，则订阅名称将类似于admin.Training.RealTime-Ex44：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.438.Ex5.FindingSubscription.png"><img src="./Images/Img4.438.Ex5.FindingSubscription.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击此通知以更改其参数，并设置/确保Workspace参数指向刚刚发布的工作空间。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">7）测试工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过向发布电子邮件地址发送电子邮件来测试工作空间。请务必将C：\ FMEData2018 \ Data \ Engineering \ BuildingFootprints中的Shapefile数据集（.dbf，.prj，.shp，.shx）的zip文件附加到电子邮件中。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果工作流成功，您应该收到一封回复的电子邮件！</font></font></p>
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
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">设置外发电子邮件订阅</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过FMEServerNotifier转换器触发电子邮件订阅</font></font></li></ul>

</td>
</tr>
</tbody></table>
</article>
  </div>
