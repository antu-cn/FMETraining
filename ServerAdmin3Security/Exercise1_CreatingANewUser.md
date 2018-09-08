  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习1
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
创建新用户并限制他们的操作
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数据</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">N / A</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">总体目标</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Server Web界面中创建具有有限权限的新用户</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Server中设置安全选项</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">贵公司最近聘请了一位将访问FME Server的新分析师。</font><font style="vertical-align: inherit;">新员工不太适合您现有的当前FME Server角色，因此您需要为他们创建新角色。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）连接到FME Server</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过Windows“开始”菜单上的“Web Interface”选项或直接在Web浏览器（</font></font><a href="http://localhost/fmeserver" rel="nofollow"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">http：// localhost / fmeserver</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">）中</font><font style="vertical-align: inherit;">打开FME Server Web界面</font><font style="vertical-align: inherit;">，然后使用用户名和密码</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">admin</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">登录</font><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击</font><font style="vertical-align: inherit;">左侧边栏上“管理”标题下的“ </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">安全性”</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">以展开菜单，然后选择“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">用户”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">以查看当前用户的列表。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）创建新用户</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">让我们为新分析师创建一个新的FME Server用户帐户。</font><font style="vertical-align: inherit;">单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">新建”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">以添加新用户：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/3.201.Ex1.CreateNewUser.png"><img src="./Images/3.201.Ex1.CreateNewUser.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">出现提示时，使用以下参数创建新用户：</font></font></p>
<ul>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">用户名：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> NewUser</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">全名：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> NewUser</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">密码：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> NewUser1</font></font></li>
</ul>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）配置权限</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在我们已经指定了新用户帐户的凭据，让我们为他们有权访问的FME Server中的功能和项目设置权限。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过选择“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">加载模板”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">按钮，您可以选择从现有角色复制权限。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/3.202.Ex1.NewUserLoadTemplate.png"><img src="./Images/3.202.Ex1.NewUserLoadTemplate.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">从“加载模板”选项中</font><font style="vertical-align: inherit;">选择</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">fmeguest</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">这有助于加快安全配置。</font><font style="vertical-align: inherit;">请注意，Run Workspace和Jobs现已被授予Access。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">配置权限以匹配以下内容：</font></font></p>
<ul>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">运行工作空间：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">访问</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">作业：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">访问</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">计划表：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">库：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">项目：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建</font></font></li>
</ul>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">请注意，通过选择Create，将自动授予Access权限。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在底部</font><font style="vertical-align: inherit;">选择</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">确定</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">以创建用户。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）测试新用户帐户</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">验证我们设置的选项是否合格非常重要。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">注销管理员帐户或打开新的私人浏览窗口，然后使用我们刚刚创建的新用户帐户的凭据登录。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">请注意该用户如何只看到一组有限的菜单选项：运行工作空间，作业，计划，库和项目。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/3.203.Ex1.NewUserHomepage.png"><img src="./Images/3.203.Ex1.NewUserHomepage.png" alt="" style="max-width:100%;"></a></p>
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
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Server安装上创建新用户</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">从现有FME Server角色设置权限</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">测试新创建的帐户以确保其正常运行</font></font></li></ul>

</td>
</tr>
</tbody></table>
</article>
  </div>
