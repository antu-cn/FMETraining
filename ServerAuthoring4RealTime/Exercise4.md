  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习4.4
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
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">为更新提供电子邮件驱动的通知</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">电子邮件发布和通知服务</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAuthoring\RealTime-Ex4-Begin.fmw
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">结束工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAuthoring\RealTime-Ex4-Complete.fmw
</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">作为GIS部门的技术分析师，您参与了最近的任务，即为用户设置目录监视解决方案，以自动更新企业数据库。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">了解到并非所有用户都能够访问托管FME Server的内部网络，您认为应该可以设置使用基于电子邮件的自动化来处理相同更新的系统。</font></font></p>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）创建资源文件夹</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 
第一步是创建另一个资源文件夹，其中将保存所有电子邮件附件。</font><font style="vertical-align: inherit;">登录FME Server Web界面，导航到Resources&gt; Data，然后创建一个名为Emails的新文件夹。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）创建主题</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">接下来，导航到通知页面。</font><font style="vertical-align: inherit;">单击“发布”选项卡，然后选择“新建”。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">输入“Email Receiver”作为名称。</font><font style="vertical-align: inherit;">然后单击“要发布到的主题”下的文本框。</font><font style="vertical-align: inherit;">输入</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">ShapeIncomingEmail</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">并单击它以添加。</font><font style="vertical-align: inherit;">这将创建一个新的主题并将其分配给此发布。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.424.Ex4.CreateIncomingTopic.png"><img src="./Images/Img4.424.Ex4.CreateIncomingTopic.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">可以创建新的发布以使用电子邮件（SMTP）协议或电子邮件（IMAP）协议。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">SMTP更容易设置，但FME Server必须驻留在具有正确DNS记录的服务器上（所有FME 云和培训计算机都将具有此功能）。</font><font style="vertical-align: inherit;">当FME Server驻留在内部网络上时，IMAP是必需的。</font></font></p>
<hr>
<p><em><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">电子邮件协议</font></font></strong></em></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">要使用SMTP协议，请选择电子邮件（SMTP）作为发布协议。</font><font style="vertical-align: inherit;">这将打开“电子邮件用户名”参数。</font><font style="vertical-align: inherit;">输入接收电子邮件的名称，例如：</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">fmeshapeprocessing</font></font></em></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.425.Ex4.CreateSMTPPublication.png"><img src="./Images/Img4.425.Ex4.CreateSMTPPublication.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“确定”将创建一个电子邮件地址</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">fmeshapeprocessing @ &lt;hostname&gt;</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> - 例如：</font></font></p>
<table>
<tbody><tr><th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">主机</font></font></th><th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">示例电子邮件地址</font></font></th></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">FME云</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">fmeshapeprocessing@myfmeserver.fmecloud.com</font></font></td></tr>
<tr><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">亚马逊AWS</font></font></td><td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">fmeshapeprocessing@ec1-23-456-789-012.compute-1.amazonaws.com</font></font></td></tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在发送到该地址的所有电子邮件都将触发ShapeIncomingEmail主题。</font></font></p>
<hr>
<p><em><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">IMAP协议</font></font></strong></em></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">要使用IMAP协议，请选择电子邮件（IMAP）作为发布协议。</font><font style="vertical-align: inherit;">这将打开许多其他参数。</font><font style="vertical-align: inherit;">根据您的电子邮件帐户输入。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果有用，Gmail，Outlook和Yahoo!的服务器信息 </font><font style="vertical-align: inherit;">如下面所述：</font></font></p>
<table>
<tbody><tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">IMAP服务器主机</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">imap.gmail.com</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">imap-mail.outlook.com</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">imap.mail.yahoo.com</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">服务器端口</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">993</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">993</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">993</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">连接安全</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">SSL / TLS</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">SSL / TLS</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">SSL / TLS</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">验证SSL证书</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">是</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">是</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">是</font></font></td>
</tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您还需要检查电子邮件帐户中的设置，以确保IMAP已打开。</font><font style="vertical-align: inherit;">无论电子邮件提供商如何，您都应该按如下方式设置这些参数：</font></font></p>
<table>
<tbody><tr>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">参数</font></font></th>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">值</font></font></th>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">轮询间隔</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1分钟</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">电子邮件获取</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">仅限新电子邮件</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">下载附件</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您选择的资源文件夹</font></font></td>
</tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您可以选择要保存的附件的任何资源文件夹; </font><font style="vertical-align: inherit;">但是（如果您已经完成了练习1-3）请不要选择BuildingUpdates文件夹，否则您将导致每个电子邮件附件触发前面的主题！</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）测试发布</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在让我们测试发布。</font><font style="vertical-align: inherit;">在FME Server的“通知”页面中，单击标记为“主题”的选项卡。</font><font style="vertical-align: inherit;">设置主题监控以观察</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">ShapeIncomingEmail</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">主题</font><font style="vertical-align: inherit;">：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.426.Ex4.MonitorTopic.png"><img src="./Images/Img4.426.Ex4.MonitorTopic.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在发送一封电子邮件</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，其中附件</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">为为新发布选择的地址。</font><font style="vertical-align: inherit;">当FME Server（SMTP）收到电子邮件或FME Server收到该邮件（IMAP）时，将通过消息触发该主题。</font><font style="vertical-align: inherit;">（请记住，IMAP发布仅每60秒检查一次电子邮件，因此结果可能不会立即生效！）</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.427.Ex4.MonitorTopicResult.png"><img src="./Images/Img4.427.Ex4.MonitorTopicResult.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">回想一下，在上一个练习中，您使用Logger Protocol和Logger转换器来记录JSON格式的通知消息。</font><font style="vertical-align: inherit;">“主题监控”窗口中显示相同的信息。</font><font style="vertical-align: inherit;">因此，请复制“主题监控”窗口中的文本并将其粘贴到文本编辑器中，以便稍后在本练习中使用。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.428.Ex4.JSONNotificationMessage.png"><img src="./Images/Img4.428.Ex4.JSONNotificationMessage.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）更新工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您已经在FME Workbench中创建了一个工作空间来处理来自目录监视的传入通知。</font><font style="vertical-align: inherit;">让我们修改工作流程，以便它可以使用两种发布协议。</font><font style="vertical-align: inherit;">在FME Workbench中打开现有工作空间C：\ FMEData2018 \ Workspaces \ ServerAuthoring \ RealTime-Ex4-Begin.fmw。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">打开JSONFlattener参数，并</font><font style="vertical-align: inherit;">在Attributes to Expose下</font><font style="vertical-align: inherit;">添加</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">imap_publisher_attachment {0}</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">和</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">email_publisher_attachment {0}</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.429.Ex4.JSONFlattenerParameters.png"><img src="./Images/Img4.429.Ex4.JSONFlattenerParameters.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您可以看到这些是主题消息返回的两个可用属性。</font></font></p>

<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
分析师女士说......
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

添加imap_publisher_attachment和email_publisher_attachment会修改此工作空间，以便它可以同时使用电子邮件（SMTP）和电子邮件（IMAP）发布！

</font></font></td>
</tr>
</tbody></table>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5）添加AttributeManager</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">下一步是插入一个转换器，用于确定数据的来源（目录监视或电子邮件发布） - 这是条件语句非常宝贵的任务。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在JSONFlattener和FeatureReader之间添加AttributeManager转换器。</font><font style="vertical-align: inherit;">打开参数并添加</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">_dataset</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">作为新的输出属性。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">从下拉菜单中选择将属性设置为条件值的选项：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.430.Ex4.AttributeManagerParameters.png"><img src="./Images/Img4.430.Ex4.AttributeManagerParameters.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">配置条件值如下：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.431.Ex4.ConditionalDefinition.png"><img src="./Images/Img4.431.Ex4.ConditionalDefinition.png" alt="" style="max-width:100%;"></a></p>
<table>
<tbody><tr>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">属性</font></font></th>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">测试</font></font></th>
<th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将_dataset设置为</font></font></th>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">dirwatch_publisher_path</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">属性有一个值</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">dirwatch_publisher_path</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">email_publisher_attachment {0}</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">属性有一个值</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">email_publisher_attachment {0}</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">imap_publisher_attachment {0}</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">属性有一个值</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">imap_publisher_attachment {0}</font></font></td>
</tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">换一种说法：</font></font></p>
<ul>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">dirwatch_publisher_path</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">具有值，则将该值复制到</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">_dataset</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">属性中。</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">否则，如果</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">email_publisher_attachment {0}</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">具有值，则将该值复制到</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">_dataset</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">属性中。</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">否则，如果</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">imap_publisher_attachment {0}</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">具有值，则将该值复制到</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">_dataset</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">属性中。</font></font></li>
</ul>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">因此</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">_dataset</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">获取要处理的数据的位置，无论是来自目录监视通知还是任何类型的电子邮件通知。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6）编辑FeatureReader</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">最后一步是更改FeatureReader转换器中的数据集参数。</font><font style="vertical-align: inherit;">应该将其更改为指向新的_dataset属性，而不是指向dirwatch_publisher_path：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.432.Ex4.FeatureReaderParameters.png"><img src="./Images/Img4.432.Ex4.FeatureReaderParameters.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">工作流现在应该如下所示：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.433.Ex4.FinalWorkspace.png"><img src="./Images/Img4.433.Ex4.FinalWorkspace.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">7）编辑用户参数</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">与练习3一样，指定要写入FME Server资源文件夹的输出数据集。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">找到用户参数DestDataset_SPATIALITE（在“导航”窗口中的“用户参数”&gt;“已发布参数”下），然后双击它以打开编辑器对话框。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在该对话框中输入：</font></font></p>
<pre><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">    $（FME_SHAREDRESOURCE_DATA）/Output/building_footprints.sl3*
</font></font></pre>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.434.Ex4.DestinationDatasetUserParameter.png"><img src="./Images/Img4.434.Ex4.DestinationDatasetUserParameter.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">8）发布工作空间</font></font></strong>
<br><font style="vertical-align: inherit;">将此工作空间发布到FME Server，在通知服务下注册它。</font><font style="vertical-align: inherit;">选择通知服务后，它将以红色突出显示，表示需要配置其参数。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“编辑”按钮并</font><font style="vertical-align: inherit;">将“订阅主题”参数</font><font style="vertical-align: inherit;">设置为</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">ShapeIncomingEmail</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">将“获取主题消息的参数”设置为</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Source Text File(s)源文本文件</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img4.435.Ex4.PublishWorkspaceNotificationService.png"><img src="./Images/Img4.435.Ex4.PublishWorkspaceNotificationService.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">9）更新目录监视订阅（可选）</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果您已完成练习3，使用FME Server Web界面，您可以将“处理建筑更新”订阅设置为指向此新工作空间。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">10）测试工作空间</font></font></strong>
<br><font style="vertical-align: inherit;">通过向发布电子邮件地址发送电子邮件来测试工作空间。</font><font style="vertical-align: inherit;">请务必将C：\ FMEData2018 \ Data \ Engineering \ BuildingFootprints中的Shapefile数据集（.dbf，.prj，.shp，.shx）的zip文件附加到电子邮件中。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您可以通过在FME Server Web界面的Resources&gt; Data&gt; Output中选中Completed Jobs页面和SpatiaLite数据库的时间戳来验证工作流是否成功。</font></font></p>
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
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建电子邮件发布</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在发布过程中创建新的FME工作空间订阅</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">使用传入的电子邮件触发主题/通知</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">配置工作空间以处理多种发布类型的触发器</font></font></li></ul>

</td>
</tr>
</tbody></table>
</article>
  </div>
