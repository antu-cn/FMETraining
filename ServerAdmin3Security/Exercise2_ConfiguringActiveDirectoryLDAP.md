  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习2
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
为活动目录配置FME Server（LDAP）
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数据</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">N / A</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">总体目标</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将FME Server连接到现有的活动目录服务</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Server中配置活动目录，导入用户和组</font></font></td>
</tr>
</tbody></table>
<hr>

<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
此练习仅用于演示目的
</font></font></td>
</tr>
</tbody></table>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">此实验需要Windows域控制器，并且可以从FME Server系统连接。</font><font style="vertical-align: inherit;">今天使用的培训环境无法访问域控制器。</font><font style="vertical-align: inherit;">以下步骤和视频将作为配置典型活动目录以与FME Server配合使用的指南。</font><font style="vertical-align: inherit;">它不包括特定活动目录可能需要的所有可能配置。</font></font></p>
<hr>

<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
Intuitive修女说......
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

由于安全要求和限制，无法完成此练习。</font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
相反，请观看</font></font><a href="https://youtu.be/XzoCR-X5TKQ" rel="nofollow"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">此视频演示练习</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。

</font></font></td>
</tr>
</tbody></table>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）连接到FME服务器</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过Windows“开始”菜单上的Web界面选项或直接在Web浏览器http：// &lt;your fmeserver host&gt;/ fmeserver中打开FME Server Web界面，然后使用管理员帐户登录。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击</font><font style="vertical-align: inherit;">左侧边栏上“管理”标题下的“ </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">安全性”</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，然后选择“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">活动目录”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）创建与活动目录的连接</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过创建新连接，您可以将组织的活动目录用户和组合并到FME Server安全配置中。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">要开始使用，请选择“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">新建”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">以打开“创建新服务器连接”页面。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">输入以下信息：</font></font></p>
<ul>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">名称：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> FME 活动目录</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">主机：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> dc.fme.com</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">端口：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 389</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">搜索帐户名称：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> DC \ Administrator</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">搜索帐户密码：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> dcAdmin2017</font></font></li>
</ul>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">确定”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">以保存新的活动目录连接。</font><font style="vertical-align: inherit;">您将返回到活动目录页面。</font><font style="vertical-align: inherit;">等待状态从黄色变为绿色，表示连接成功。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）导入用户</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在已建立连接，选择“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">导入用户”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">图标以从活动目录连接添加用户。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在“浏览用户”页面上，键入</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">mvector</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，然后按Enter键。</font><font style="vertical-align: inherit;">选择Miss Vector的用户，然后单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">导入”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Web浏览器窗口右上角会显示一条通知，表明用户已成功导入。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">注意：如果Miss Vector属于任何活动目录组，我们可以将其作为FME服务器角色导入 - 并且将自动导入所有成员用户。</font></font></p>

<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
提示：导入错误
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

从活动目录导入用户时，您可能会遇到此消息。</font><font style="vertical-align: inherit;">这是因为SYSTEM用户中已存在相同值的用户名。
</font><font style="vertical-align: inherit;">建议您删除SYSTEM用户帐户，然后重新导入活动目录用户。  
</font><font style="vertical-align: inherit;">如果要从包含</font><font style="vertical-align: inherit;">与第一个域相同的命名用户</font><font style="vertical-align: inherit;">的第二个域导入用户，也会发生此错误
 </font><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">在这种情况下，需要</font><font style="vertical-align: inherit;">在此对话框上</font><font style="vertical-align: inherit;">提供
 </font><font style="vertical-align: inherit;">不同的用户名，以表示来自第二个域的用户。  
</font><strong><font style="vertical-align: inherit;">注意</font></strong><font style="vertical-align: inherit;">：FME Server为导入的用户名创建别名，并将其链接到</font><font style="vertical-align: inherit;">活动目录中</font><font style="vertical-align: inherit;">的
 </font><font style="vertical-align: inherit;">用户帐户。

</font></font><br>
<br><br><a target="_blank" rel="noopener noreferrer" href="./Images/3.215.Ex2.ImportUserError.png"><img src="./Images/3.215.Ex2.ImportUserError.png" style="max-width:100%;"></a>
<br><br><font style="vertical-align: inherit;"></font><br><font style="vertical-align: inherit;"></font><br><font style="vertical-align: inherit;"></font><br><font style="vertical-align: inherit;"></font><br><strong><font style="vertical-align: inherit;"></font></strong><font style="vertical-align: inherit;"></font><br><font style="vertical-align: inherit;"></font></td>
</tr>
</tbody></table>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）配置用户权限</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将活动目录用户导入FME Server后，必须配置权限。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Server Web界面左侧栏的Admin标题下</font><font style="vertical-align: inherit;">选择Security&gt; </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Users</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">单击</font><font style="vertical-align: inherit;">刚刚创建</font><font style="vertical-align: inherit;">的</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Miss Vector</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">用户以打开“编辑用户”页面。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">分配的安全角色</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">的文本框区域，</font><font style="vertical-align: inherit;">然后选择</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">fmeauthor</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">请注意现在已选中的fmeauthor Role的所有继承权限。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">选择</font><font style="vertical-align: inherit;">底部的“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">确定</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> ”以应用更改。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5）</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过以Miss Vector身份登录FME Server，</font><strong><font style="vertical-align: inherit;">测试新用户帐户</font></strong><font style="vertical-align: inherit;">测试导入和分配权限是否成功。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">注销管理员帐户或打开新的私人浏览窗口，然后使用以下凭据登录：</font></font></p>
<ul>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">用户名：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> mvector</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">密码：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> dcFME2017</font></font></li>
</ul>
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
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将FME Server连接到现有的活动目录配置</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">从活动目录导入用户和组</font></font></li></ul>

</td>
</tr>
</tbody></table>
</article>
  </div>
