<!--Instructor Notes-->
<!--This exercise uses a basic amount of FME Workbench as a test for students-->
<!--If students have problems now, it is unlikely they will have much success at further exercises-->

<!--Exercise Section-->

  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习4
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
地震处理
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数据</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">地震（GeoJSON）</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">总体的目标</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建工作空间以读取和处理地震数据并将其发布到FME Server</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Server中设置安全性选项</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">启动工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">N / A</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">结束工作空间</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">N / A</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您是当地城市GIS部门的技术分析师。</font><font style="vertical-align: inherit;">您拥有使用FME Desktop的丰富经验，您的部门正在调查FME Server以评估其功能。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您已经创建了一个工作空间来读取提供的地震数据并将其发布到FME Server。</font><font style="vertical-align: inherit;">现在，您要确保其他用户有权运行它。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）连接到服务器</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过开始菜单上的Web用户界面选项或直接在Web浏览器中打开FME Server界面，然后登录。从菜单中选择“管理(Manage)”&gt;“管理(Administration)”&gt;“安全性(Security)”。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）创建用户</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">让我们为可能使用此工作空间的人创建一个新的用户帐户。</font><font style="vertical-align: inherit;">单击“用户”选项卡，然后单击“新建”按钮：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img1.60.Ex4.CreateNewUser.png"><img src="./Images/Img1.60.Ex4.CreateNewUser.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">出现提示时，使用以下参数创建新用户：</font></font></p>
<ul>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">用户名：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> WebGuest</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">全名：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> Web Interface Account</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">角色：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> fmeguest</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">密码：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> WebGuest1</font></font></li>
</ul>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）检查角色权限</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果该用户要访问Web界面，我们应该在安全设置中进行检查。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“角色策略”选项卡，然后选择要检查的fmeguest角色。</font><font style="vertical-align: inherit;">列表的最底部是FME Server Web用户界面的参数。</font><font style="vertical-align: inherit;">它将默认关闭。</font><font style="vertical-align: inherit;">这意味着此角色中的某个人无法通过Web界面访问工作空间。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">我们可以简单地打开该参数 - 但这会让每个访客用户都能够访问该界面，这可能不是一个好主意。</font><font style="vertical-align: inherit;">所以，让我们创建一个新角色。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）创建角色</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“角色”选项卡，然后选择fmeguest角色的复选框。</font><font style="vertical-align: inherit;">单击“复制”按钮以创建它的副本：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img1.62.Ex4.DuplicateGuestRole.png"><img src="./Images/Img1.62.Ex4.DuplicateGuestRole.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将此角色称为EmergencyPreparedness。</font><font style="vertical-align: inherit;">从此角色中删除guest帐户，然后单击“确定”以创建它。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5）设置角色权限</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在回到“角色策略”选项卡中，选择EmergencyPreparedness角色作为要检查的角色。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">首先检查管理存储库（Manage Repositories）选项。</font><font style="vertical-align: inherit;">这将让用户找到工作空间并运行它们。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">接下来，将Web界面访问的参数设置为“是”：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img1.61.Ex4.GuestWebInterfaceSetting.png"><img src="./Images/Img1.61.Ex4.GuestWebInterfaceSetting.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">同时向上滚动并检查Training存储库的设置。</font><font style="vertical-align: inherit;">此角色需要具有对此存储库的完全访问权限，如下所示：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/Img1.63.Ex4.TrainingRepSecurity.png"><img src="./Images/Img1.63.Ex4.TrainingRepSecurity.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“应用更改”按钮以保存所做的更改。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6）测试角色</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">退出Web界面（管理员&gt;注销），然后再次以新WebGuest帐户登录。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击菜单上的“运行”选项，然后运行地震工作空间。</font></font></p>
<hr>

<table>
<tbody><tr>
<td>
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
警察局长Webb-Mapp说......
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">

如果在菜单上没有看到“运行”选项，则可能在步骤5中错过了设置Manage Repositories = Yes。

</font></font></td>
</tr>
</tbody></table>
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
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Server安装上创建新用户和新角色</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">设置FME Server角色的权限</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">测试新创建的角色/帐户以确保其正常工作</font></font></li></ul>

</td>
</tr>
</tbody></table>
</article>
  </div>
