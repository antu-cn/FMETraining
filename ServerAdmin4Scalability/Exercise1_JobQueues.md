  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习1
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
作业队列
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数据</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">N / A</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">总体目标</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过特定的FME引擎发送作业</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建作业队列并将作业分配给队列</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">无</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">结束工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\FMEData2018\Workspaces\ServerAdmin\Scalability-Ex1-JobQueues-Complete.fmw
</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您的GIS部门全部使用FME Server并使用Web界面转换作业，但作业始终排队，即使是快速转换。</font><font style="vertical-align: inherit;">您想知道是否有办法将其中一个FME服务器引擎留出来进行快速转换，这样您和您的技术分析师就不必等待太长时间来完成较小的工作。</font><font style="vertical-align: inherit;">使用作业队列，您可以将特定引擎分配给特定任务。</font></font></p>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）创建作业队列</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Server Web界面中创建作业队列。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">登录FME Server Web界面，然后</font><font style="vertical-align: inherit;">在左侧栏中</font><font style="vertical-align: inherit;">选择</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">管理&gt;引擎和许可&gt;配置</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">向下滚动到“引擎和许可”页面的底部，然后选择“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建队列”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="https://github.com/domix2000/FMETraining-1/blob/Server-Admin-2018/ServerAdmin4Scalability/Images/4.201.Ex1.Create_JobQueue.png"><img src="./FMETraining-1 _ Exercise1_JobQueues_files/4.201.Ex1.Create_JobQueue.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将其命名为</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">快速转换</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，然后单击OK。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）分配FME引擎</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在已经创建了作业队列，可以将特定的FME引擎 - 和库 - 分配给队列。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">编辑按钮</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">为作业队列提供“FME Server Engine for Quick Translations”的描述，然后</font><font style="vertical-align: inherit;">从Engines的下拉选项中</font><font style="vertical-align: inherit;">选择</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">&lt;localhost&gt; _Engine1</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">接下来，将作业优先级指定为1。</font></font></p>

<p><a target="_blank" rel="noopener noreferrer" href="https://github.com/domix2000/FMETraining-1/blob/Server-Admin-2018/ServerAdmin4Scalability/Images/4.202.Ex1.JobQueue_SelectEngine.png"><img src="./FMETraining-1 _ Exercise1_JobQueues_files/4.202.Ex1.JobQueue_SelectEngine.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">要保存编辑，请再次单击编辑按钮。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）创建FME工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">要确认作业队列是否正常运行，我们可以在FME Server中运行指定</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">快速转换</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">队列</font><font style="vertical-align: inherit;">的工作空间</font><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">在本练习中，我们不需要复杂的工作空间，只需要运行的作业。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">打开FME Workbench并创建一个新的空白工作空间。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">添加</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Creator</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">转换器并将其连接到</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Logger</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">转换器。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="https://github.com/domix2000/FMETraining-1/blob/Server-Admin-2018/ServerAdmin4Scalability/Images/4.203.Ex1.JobQueue_Workspace.png"><img src="./FMETraining-1 _ Exercise1_JobQueues_files/4.203.Ex1.JobQueue_Workspace.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）发布到FME Server</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过</font><font style="vertical-align: inherit;">从FME Workbench的File菜单中</font><font style="vertical-align: inherit;">选择</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Publish to FME Server</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，将</font><font style="vertical-align: inherit;">工作空间</font><strong><font style="vertical-align: inherit;">发布到FME Server</font></strong><font style="vertical-align: inherit;">：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="https://github.com/domix2000/FMETraining-1/blob/Server-Admin-2018/ServerAdmin4Scalability/Images/4.204.Ex1.PublishToServer.png"><img src="./FMETraining-1 _ Exercise1_JobQueues_files/4.204.Ex1.PublishToServer.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在“发布到FME服务器向导”中提示时，连接到FME Server，然后将工作空间发布到：</font></font></p>
<ul>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">库名称：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Training</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">工作空间名称：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> JobQueue_TestJob.fmw</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">服务：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Job Submitter</font></font></li>
</ul>

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
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5）在作业队列中分配和运行工作空间</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">返回FME Server Web界面，一旦发布到FME Server，就可以运行</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">JobQueue_TestJob</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">工作空间并设置Job Queue参数。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Server Web界面的左侧栏中</font><font style="vertical-align: inherit;">选择</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">“运行工作空间”</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在“运行工作空间”页面上，填写如下参数：</font></font></p>
<ul>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">库：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Training</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">工作空间：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> JobQueue_TestJob</font></font></li>
</ul>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">接下来，展开“ </font><font style="vertical-align: inherit;">运行工作空间”页面上的“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">高级”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">选项。</font><font style="vertical-align: inherit;">将</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Job Queues</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">参数</font><font style="vertical-align: inherit;">设置</font><font style="vertical-align: inherit;">为</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">QuickTranslations</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">（步骤1中创建的队列的名称）：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="https://github.com/domix2000/FMETraining-1/blob/Server-Admin-2018/ServerAdmin4Scalability/Images/4.205.Ex1.RunWorkspace_JobQueue.png"><img src="./FMETraining-1 _ Exercise1_JobQueues_files/4.205.Ex1.RunWorkspace_JobQueue.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">“</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">运行工作空间”页面底部的“运行”。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6）验证作业队列配置</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您希望确保作业已路由到正确的引擎而不仅仅是第一个可用的引擎。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Server Web界面的左侧栏中，选择“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">作业”&gt;“已完成”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">选择刚刚运行的工作空间以打开“ </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">作业详细信息”</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">页面。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击以展开“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">请求数据（Request Data）”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">部分。</font><font style="vertical-align: inherit;">在</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">queue</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">参数</font><font style="vertical-align: inherit;">旁边</font><font style="vertical-align: inherit;">，您将看到指定作业队列的名称：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="https://github.com/domix2000/FMETraining-1/blob/Server-Admin-2018/ServerAdmin4Scalability/Images/4.206.Ex1.VerifyJobQueue_Success.png"><img src="./FMETraining-1 _ Exercise1_JobQueues_files/4.206.Ex1.VerifyJobQueue_Success.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">返回“ </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">作业”&gt;“已完成”</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">以验证作业是否已发送到正确的引擎。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="https://github.com/domix2000/FMETraining-1/blob/Server-Admin-2018/ServerAdmin4Scalability/Images/4.207.Ex1.CompletedJobQueue.png"><img src="./FMETraining-1 _ Exercise1_JobQueues_files/4.207.Ex1.CompletedJobQueue.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在测试时，您可以考虑多次提交作业以进行额外的验证步骤，并且安心，但这当然不是必要的！</font></font></p>
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
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建作业队列</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过特定引擎成功路由作业</font></font></li>
</ul>

</td>
</tr>
</tbody></table>
</article>
  </div>
