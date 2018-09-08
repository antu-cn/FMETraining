  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习2
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
更改FME Server数据库提供程序
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数据</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C：\ Program Files \ FMEServer \ Server \ database \ sqlserver \ sqlserver_createDB.sql
 </font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C：\ Program Files \ FMEServer \ Server \ database \ sqlserver \ sqlserver_createUser.sql</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">总体目标</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">更改FME Server的数据库提供程序</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">配置新的SQL Server数据库</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您的公司已经安装了FME Server快速安装，但您的数据库管理员刚刚通知您，该公司将其数据库提供程序从默认FME数据库切换到SQL Server数据库，以便更好地控制数据库安全性。</font></font></p>
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

如果您已完成配置HTTPS练习，请记住连接到FME Server的URL现在是https：// localhost：8443 / fmeserver而不是http：// localhost / fmeserver！

</font></font></td>
</tr>
</tbody></table>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）备份FME服务器</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在执行任何安装后配置之前，备份当前的FME Server实例是一个重要步骤。</font><font style="vertical-align: inherit;">更改数据库提供程序后，可以一次性还原FME Server配置，而无需完成手动更改任何设置，重新发布工作空间等的过程。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">注意：如果您</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">已创建FME Server备份</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，则可以使用此现有.fsconfig文件并继续执行步骤2。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">通过Windows“开始”菜单上的“Web Interface”选项或直接在Web浏览器中打开FME Server Web界面，然后使用用户名和密码</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">admin</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">登录</font><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在左侧栏中的FME Server Web界面的Admin标题下</font><font style="vertical-align: inherit;">找到</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">备份＆恢复</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，然后单击以展开，然后单击</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">备份</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">选择</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">下载</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">以保存FME Server的备份文件 - 这可以被视为“快照”。</font><font style="vertical-align: inherit;">在后台运行进程以编译FME Server备份需要很短的时间，一旦完成，它将自动保存到本地下载文件夹。</font></font></p>
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

如果您安装了PostgreSQL而不是SQLServer，则可以按照</font></font><a href="https://safe-software.gitbooks.io/fme-server-administration-training-2017/content/ServerAdmin4Scalability/Exercise2_SwitchingToAPostgreSQLDatabaseWithWindowsSystem.html" rel="nofollow"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">服务器管理员2017课程</font></font></a><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">中的说明进行操作</font><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">请注意，从2017年到2018年，路径名称可能略有变化。

</font></font></td>
</tr>
</tbody></table>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）初始数据库配置</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">出于本练习的目的，已为Training Machines安装了单独的SQL Server数据库。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">我们将用于此步骤和下一步（3）的两个SQL脚本可以在以下位置找到：* </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C：\ Program Files \ FMEServer \ Server \ database \ sqlserver *</font></font></em></p>
<ul>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">sqlserver_createDB.sql</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">sqlserver_createUser.sql</font></font></li>
</ul>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">我们需要通过为FME Server配置本地SQL Server数据库来创建FMESERVER数据库模式。</font><font style="vertical-align: inherit;">从Windows“开始”菜单中打开</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">命令提示符</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>

<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">首先，使用sqlserver_createDB.sql脚本创建一个新数据库。</font><font style="vertical-align: inherit;">如果愿意，您可以在文本编辑器中查看SQL脚本，但这不是必需的。</font><font style="vertical-align: inherit;">在</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">命令提示符中</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">运行以下</font><strong><font style="vertical-align: inherit;">命令</font></strong><font style="vertical-align: inherit;">：</font></font></p>
<pre><code>sqlcmd -S FMETRAINING -i "C:\Program Files\FMEServer\Server\database\sqlserver\sqlserver_createDB.sql"
</code></pre>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/4.211.Ex2.CommandPrompt1_fmeserver.png"><img src="./Images/4.211.Ex2.CommandPrompt1_fmeserver.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在，在</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">命令提示符</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">窗口中</font><font style="vertical-align: inherit;">，输出应如下所示</font><font style="vertical-align: inherit;">：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/4.212.Ex2.CommandPrompt2_fmeserver.png"><img src="./Images/4.212.Ex2.CommandPrompt2_fmeserver.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">这确认了新的数据库“fmeserver”已创建。</font><font style="vertical-align: inherit;">此SQL脚本创建所有与FME Server相关的表，索引，视图和触发器。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）创建FME Server数据库用户</font></font></strong></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">接下来，我们将创建新的用户</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">fmeserver</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">并向</font><font style="vertical-align: inherit;">新用户</font><font style="vertical-align: inherit;">授予所有必要的权限。</font><font style="vertical-align: inherit;">该SQL脚本创建新的用户</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">fmeserver</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">与密码</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">fmeserver</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">它使用sqlserver_createUser.sql脚本。</font></font></p>
<pre><code>sqlcmd -S FMETRAINING -i "C:\Program Files\FMEServer\Server\database\sqlserver\sqlserver_createUser.sql"
</code></pre>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将使用适当的登录名和权限创建新用户以访问</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">fmeserver</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数据库。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/4.213.Ex2.CommandPrompt3_fmeserver.png"><img src="./Images/4.213.Ex2.CommandPrompt3_fmeserver.png" alt="" style="max-width:100%;"></a></p>
<p><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">退出</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">命令提示符</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>

<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5）配置数据库连接</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">打开</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">fmeCommonConfig.txt</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">文件，位于</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C:\Program Files\FMEServer\Server\</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">目录，使用管理员模式下的文本编辑器。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在标题为</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">FME SERVER SETTINGS START下</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，找到名为</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Database Connection</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">的部分</font><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">我们要禁用与Postgres数据库的默认连接，并指示FME Server连接到SQL Server数据库。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">注释掉</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">DB_TYPE = postgresql</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">部分，在每行前面添加一个数字符号（＃），并取消注释</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">DB_TYPE = sqlserver</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">部分。</font><font style="vertical-align: inherit;">最终编辑应如下所示：</font></font></p>
<pre><code>#DB_TYPE=postgresql<font></font>
#DB_DRIVER=org.postgresql.Driver<font></font>
#DB_JDBC_URL=jdbc:postgresql://localhost:7082/fmeserver<font></font>
#DB_USERNAME=fmeserver<font></font>
#DB_PASSWORD=fmeserver<font></font>
#DB_CONNECT_EXPIRY=60<font></font>
#DB_SQLSTMTS_PATH=C:/Program Files/FMEServer/Server/database<font></font>
<font></font>
DB_TYPE=sqlserver<font></font>
DB_DRIVER=com.microsoft.sqlserver.jdbc.SQLServerDriver<font></font>
DB_JDBC_URL=jdbc:sqlserver://localhost:1433;databaseName=fmeserver<font></font>
DB_USERNAME=fmeserver<font></font>
DB_PASSWORD=$FME$1ser$ver<font></font>
DB_CONNECT_EXPIRY=60<font></font>
DB_SQLSTMTS_PATH=C:/Program Files/FMEServer/Server/database<font></font>
</code></pre>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">保存并关闭</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">fmeCommonConfig.txt</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">文件。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6）SQL Server修改</font></font></strong></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">从“开始”菜单中，打开</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Microsoft SQL Server 2016&gt; SQL Server Management Studio</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 
接受默认服务器名称</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">FMETRAINING</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">和</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Windows身份验证</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，然后单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">连接”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/4.214.Ex2.SQLServer_Login.png"><img src="./Images/4.214.Ex2.SQLServer_Login.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">第一步是将数据库服务器设置为允许SQL Server身份验证。</font><font style="vertical-align: inherit;">这将允许新的</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">fmeserver</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">用户连接到数据库。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">对象资源管理器</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">树中，右键单击</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">FMETRAINING</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">并选择 </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">属性Properties</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/4.216.Ex2.SQLServer_Properties2.png"><img src="./Images/4.216.Ex2.SQLServer_Properties2.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在结果对话框中单击 </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">"安全性"，</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">然后选择 </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">"SQL Server和Windows身份验证"</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">选项。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/4.217.Ex2.SQLServer_Properties3.png"><img src="./Images/4.217.Ex2.SQLServer_Properties3.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">单击“确定”，确认SQL Server需要重新启动。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/4.218.Ex2.SQLServer_Properties4.png"><img src="./Images/4.218.Ex2.SQLServer_Properties4.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">对象资源管理器</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">树中，右键单击</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">FMETRAINING</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">并选择 </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">"重新启动”</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/4.219.Ex2.SQLServer_Properties5.png"><img src="./Images/4.219.Ex2.SQLServer_Properties5.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">出现提示时，单击</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">是</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/4.220.Ex2.SQLServer_Properties6.png"><img src="./Images/4.220.Ex2.SQLServer_Properties6.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">最后，</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">重启FME Server</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">从开始菜单中选择</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">FME Server 2018.0.0.3&gt;重新启动FME Server</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6）配置后脚本</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">从2018.0开始，配置后脚本现在由核心在连接到新的FME Server 系统数据库时运行。</font><font style="vertical-align: inherit;">有一个脚本仍然需要运行（步骤跟在“添加队列”后面）。</font><font style="vertical-align: inherit;">允许脚本运行几分钟并完成将新元数据加载到数据库中。</font><font style="vertical-align: inherit;">在此期间尝试登录可能会导致Web UI出现不完整。</font><font style="vertical-align: inherit;">稍等片刻，然后刷新浏览器。
</font></font><br> <br>
<strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">添加作业队列元数据</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">：仍有一个脚本需要手动运行（这在2018.1中得到解决）。</font><font style="vertical-align: inherit;">打开* C：\ Program Files \ FMEServer \ Clients \ utilities *，</font><font style="vertical-align: inherit;">通过右键单击该文件并选择</font><em><font style="vertical-align: inherit;">以管理员身份运行</font></em><font style="vertical-align: inherit;">来</font><font style="vertical-align: inherit;">调用</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">addQueueNode.bat</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font><strong><font style="vertical-align: inherit;">（仅适用于2018.0）</font></strong></font><em><font style="vertical-align: inherit;"></font></em><font style="vertical-align: inherit;"></font><strong><font style="vertical-align: inherit;"></font></strong></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">此脚本将花费一些时间来运行并创建默认作业队列。</font><font style="vertical-align: inherit;">接下来，</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">重新启动FME Server</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">从开始菜单中选择</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">FME Server 2018.0.0.3&gt;重新启动FME Server</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">7）恢复FME Server配置</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">由于在步骤1中创建了FME Server的备份，我们现在可以恢复包含所有以前的FME Server配置设置的同一FME Server实例。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">登录FME Server Web界面，然后</font><font style="vertical-align: inherit;">从左侧边栏中</font><font style="vertical-align: inherit;">选择“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">备份和还原”&gt;“还原”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">从本练习开始上传您保存的备份配置文件。</font><font style="vertical-align: inherit;">导航到</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C：\ Users \ Administrator \ Downloads \</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">并找到FME Server备份文件（提示：它具有</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">.fsconfig</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">扩展名！）。</font><font style="vertical-align: inherit;">将此文件拖放到FME Server Restore页面：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/4.209.Ex2.RestoreConfiguration.png"><img src="./Images/4.209.Ex2.RestoreConfiguration.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果还原成功，FME Server Web界面将报告。</font><font style="vertical-align: inherit;">如果不成功，则如果需要进一步调查，可以从该页面轻松访问日志文件。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/4.210.Ex2.RestoreSuccess.png"><img src="./Images/4.210.Ex2.RestoreSuccess.png" alt="" style="max-width:100%;"></a></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">8）将服务URL更新为HTTPS</font></font></strong><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> 
最后，由于恢复配置不会更新服务URL，我们必须重做第3章练习3中的步骤。</font><font style="vertical-align: inherit;">恢复配置时服务URL未更新的原因是我们可能正在恢复到具有不同URL的完全不同的系统。</font></font></p>
<p><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">要为FME Server服务启用SSL，请登录FME Server Web界面（用户名和密码</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">admin</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">），然后选择</font><font style="vertical-align: inherit;">左侧栏上的“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">服务</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> ”。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/4.221.Ex2.ServicesButton.png"><img src="./Images/4.221.Ex2.ServicesButton.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在“ </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">服务”</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">页面上，您可以一次更新特定服务或所有服务。</font><font style="vertical-align: inherit;">让我们更新所有服务。</font><font style="vertical-align: inherit;">单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">更改所有主机”</font></font></strong></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/4.222.Ex2.ChangeAllHosts.png"><img src="./Images/4.222.Ex2.ChangeAllHosts.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将</font><font style="vertical-align: inherit;">打开</font><font style="vertical-align: inherit;">“ </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">更改所有主机”</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">对话框。</font><font style="vertical-align: inherit;">确保将</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Host</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">设置为</font></font><em><a href="https://localhost:8443/" rel="nofollow"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">https：// localhost：8443</font></font></a></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，然后单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">确定”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/4.223.Ex2.ChangeAllHosts2.png"><img src="./Images/4.223.Ex2.ChangeAllHosts2.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">URL将在“服务”页面上更新为新的正确值。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/4.224.Ex2.NewServiceURLs.png"><img src="./Images/4.224.Ex2.NewServiceURLs.png" alt="" style="max-width:100%;"></a></p>
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
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">更改FME Server的数据库提供程序</font></font></li></ul>

</td>
</tr>
</tbody></table>
</article>
  </div>
