  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习6.1
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
最佳实践工作空间分析项目
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数据</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">工作空间文件文件</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">总体目标</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">导入FME Server项目</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">FME Server项目</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动工作空间文件</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">N / A</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">结束工作空间文件</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">N / A</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">最佳实践是FME工作空间的基本概念。</font><font style="vertical-align: inherit;">为了鼓励同事执行最佳实践，您希望安装一个允许分析工作空间的项目。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）浏览到项目</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">打开FME Server Web界面并使用具有管理员权限的帐户登录。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在主菜单上选择Projects以浏览到Projects页面：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.200.Ex1.ProjectsMenu.png"><img src="./Images/Img6.200.Ex1.ProjectsMenu.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）导入项目</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“导入”按钮以打开“导入”页面：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.201.Ex1.ImportButton.png"><img src="./Images/Img6.201.Ex1.ImportButton.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在“配置导入”部分下，确保将“导入自”设置为“上传”。</font><font style="vertical-align: inherit;">然后在配置参数后，单击“导入”按钮：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.202.Ex1.ImportConfig.png"><img src="./Images/Img6.202.Ex1.ImportConfig.png" alt="" style="max-width:100%;"></a></p>
<p><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">覆盖现有项</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">不太重要，因为项目应该还不存在对于需要覆盖的项来说。</font><font style="vertical-align: inherit;">同样，</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">暂停通知系统</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">并不重要，因为项目中的通知不太可能立即触发（它们用于处理传入的电子邮件）。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击Upload File按钮并浏览到Code Smells Workshop并选择BestPracticeAnalysis.fsproject：</font></font></p>
<pre><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C：\ FMEData2018 \资源\ CodeSmellsWorkshop \ BestPracticeAnalysis.fsproject
</font></font></pre>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">该项目将很快导入：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.203.Ex1.ImportComplete.png"><img src="./Images/Img6.203.Ex1.ImportComplete.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）检查日志</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“查看详细信息”按钮以检查“项目导入”日志。</font><font style="vertical-align: inherit;">成功导入将如下所示：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.204.Ex1.ImportSummary.png"><img src="./Images/Img6.204.Ex1.ImportSummary.png" alt="" style="max-width:100%;"></a></p>
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

项目下的历史页面将显示已导入系统的所有项目的完整历史记录。

</font></font></td>
</tr>
</tbody></table>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）检查组件</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在让我们检查一些应该导入的组件。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">再次单击菜单上的“项目”，然后选择最近导入的项目。</font><font style="vertical-align: inherit;">您现在应该看到导入内容的列表：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.205.Ex1.ProjectContents.png"><img src="./Images/Img6.205.Ex1.ProjectContents.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">使用菜单选项检查“存储库”，“通知”和“资源”页面，以确保导入的组件确实存在。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5）测试项目</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在让我们发送一封电子邮件到您的FME Server来测试项目。</font><font style="vertical-align: inherit;">此处假设您使用的是具有公共名称，域或地址的服务器。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">对于Safe的培训计算机上的FME Server，公共IP地址显示在桌面的右上角：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.206.Ex1.ServerIPAddress.png"><img src="./Images/Img6.206.Ex1.ServerIPAddress.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">电子邮件地址为BestPractice @ xxxx，其中xxxx是IP地址：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.207.Ex1.EmailTest.png"><img src="./Images/Img6.207.Ex1.EmailTest.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">设置主题行并附加工作空间文件文件。</font><font style="vertical-align: inherit;">单击“发送”按钮。</font><font style="vertical-align: inherit;">作为回应（可能需要一两分钟），您将收到有关该工作空间文件中使用的最佳实践的电子邮件报告：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.208.Ex1.BPReport.png"><img src="./Images/Img6.208.Ex1.BPReport.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">这表明项目已导入并正确设置。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6）清理项目</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">项目中不需要的一部分是用户帐户。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">因此，返回项目内容，选择marki User，然后将其删除。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.209.Ex1.RemoveAccount.png"><img src="./Images/Img6.209.Ex1.RemoveAccount.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">这将从项目中删除该帐户，但由于该项目已导入，因此该帐户也将存在于该计算机上。</font><font style="vertical-align: inherit;">因此，也可以转到Security&gt; Users页面并删除该用户。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">发送另一封电子邮件以确认项目仍在运行。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">7）导出项目</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在项目已经更新，将其导出，以便可以在其他地方以适当的形式导入。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">为此，请浏览到“项目”页面，选择项目（使用左侧的复选框），然后单击“导出”按钮。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在打开的对话框中，您可以选择是将项目文件保存到下载还是资源文件夹。</font><font style="vertical-align: inherit;">完成后，将显示以下消息：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img6.210.Ex1.ProjectExported.png"><img src="./Images/Img6.210.Ex1.ProjectExported.png" alt="" style="max-width:100%;"></a></p>
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
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">导入项目</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">检查项目历史记录并确认已成功导入项目</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">编辑项目的内容</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">导出项目</font></font></li></ul>

</td>
</tr>
</tbody></table>   
</article>
  </div>
