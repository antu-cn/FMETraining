  <div id="readme" class="readme blob instapaper_body">
    <article class="markdown-body entry-content" itemprop="text">
<table>
<tbody><tr>
<td width="25%">
<i></i><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
练习3
</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
为HTTPS配置FME Server
</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">数据</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C：\ FMEData2018 \ Resources \ ServerAdmin \ server.xml </font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C：\ FMEData2018 \ Resources \ ServerAdmin \ web.xml </font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C：\ FMEData2018 \ Resources \ ServerAdmin \ context.xml</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">总体目标</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将对FME Server Web界面的访问权限更改为HTTPS</font></font></td>
</tr>
<tr>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">演示</font></font></td>
<td><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建自签名证书并导入FME Server密钥库</font></font></td>
</tr>
</tbody></table>
<hr>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">贵公司正在迅速扩张并雇用许多新员工。</font><font style="vertical-align: inherit;">现在，您没有让所有人都能访问FME Server，而是设置了登录，因此只有受信任的人员才能访问。</font><font style="vertical-align: inherit;">您还需要设置额外的预防措施，以确保传输的信息安全。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">HTTPS确保客户端和服务器之间的通信是加密的，因此如果被截获，第三方就无法轻松查看或使用该信息。</font><font style="vertical-align: inherit;">对于FME Server，您可以使用HTTPS来确保不公开敏感登录信息。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">对于任何HTTPS（SSL）页面，都需要证书。</font><font style="vertical-align: inherit;">出于开发和测试目的，支持自签名证书。</font><font style="vertical-align: inherit;">对于生产用途，我们建议您使用经过验证的SSL证书颁发机构（CA）的SSL证书。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1）创建密钥库文件</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">首先，您必须使用Java Developer Kit（JDK）中的Java Keytool生成包含证书链的密钥库。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">以管理员身份</font><font style="vertical-align: inherit;">打开</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">命令提示符</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">导航到FME Server Java bin目录：</font></font></p>
<pre><code>cd C:\Program Files\FMEServer\Utilities\jre\bin\
</code></pre>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">运行以下命令以创建新的密钥库文件：</font></font></p>
<pre><code>keytool -genkey -alias tomcat -keyalg RSA -keystore tomcat.keystore
</code></pre>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">出现提示时设置以下值：</font></font></p>
<ul>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">密钥库密码：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> tomcat</font></font></li>
<li><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">名字和姓氏：</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> localhost</font></font></li>
<li><em><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">&lt;剩余参数&gt;：</font></font></strong></em> <em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> &lt;leave_blank&gt;</font></font></em></li>
</ul>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">如果输入正确，则在提示时</font><font style="vertical-align: inherit;">输入</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">yes</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">当提示输入&lt;tomcat&gt;的密钥密码时，请按RETURN。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/3.204.Ex3.ConfigureForHTTPS_createKeytool.png"><img src="./Images/3.204.Ex3.ConfigureForHTTPS_createKeytool.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在</font><em><font style="vertical-align: inherit;">C：\ Program Files \ FMEServer \ Utilities \ jre \ bin \中</font></em><font style="vertical-align: inherit;">创建一个新的密钥库</font></font><em><font style="vertical-align: inherit;"></font></em></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将新密钥库文件复制到FME Server安装中的tomcat目录：</font></font></p>
<pre><code>copy tomcat.keystore "C:\Program Files\FMEServer\Utilities\tomcat\tomcat.keystore"
</code></pre>
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

确保密钥库文件</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">未被</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">移动。
</font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在使用分布式FME Server核心和FME Server Web应用程序时，这一点非常重要。

</font></font></td>
</tr>
</tbody></table>
<hr>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2）使用证书</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">必须将新密钥库导入FME Server密钥库以获取可信证书。</font><font style="vertical-align: inherit;">在命令提示符中，输入以下命令：</font></font></p>
<pre><code>keytool -importkeystore -srckeystore tomcat.keystore -destkeystore "C:\Program Files\FMEServer\Utilities\jre\lib\security\cacerts"
</code></pre>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">系统将提示您输入两个密码。</font><font style="vertical-align: inherit;">一个用于目标密钥库，另一个用于源密钥库。</font><font style="vertical-align: inherit;">目标密钥库的密码是</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">changeit</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font><font style="vertical-align: inherit;">源密钥库的密码是</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">tomcat</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/3.205.Ex3.ConfigureForHTTPS_selfSignedCertificate.png"><img src="./Images/3.205.Ex3.ConfigureForHTTPS_selfSignedCertificate.png" alt="" style="max-width:100%;"></a></p>
<hr>
<p><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">配置Tomcat</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在接下来的步骤中，我们需要修改Apache Tomcat的三个配置文件。</font><font style="vertical-align: inherit;">所有这三个文件都位于FME Server安装目录中：</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C：\ Program Files \ FMEServer \ Utilities \ tomcat \ conf \</font></font></em></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">最好制作要更改的任何文件的副本，并将它们放在单独的目录中，直到您确认编辑正在成功运行为止。</font></font></p>
<hr>
<p><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3）配置server.xml</font></font></strong>
<font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在管理员模式下，在文本编辑器中</font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">打开</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">C：\ Program Files \ FMEServer \ Utilities \ tomcat \ conf \ server.xml</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">文件。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在</font><em><font style="vertical-align: inherit;">&lt;Listener&gt;</font></em><font style="vertical-align: inherit;">元素中</font><font style="vertical-align: inherit;">找到</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">SSLEngine</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">设置</font><font style="vertical-align: inherit;">，包括</font><em><font style="vertical-align: inherit;">className =“org.apache.catalina.core.AprLifecycleListener”</font></em><font style="vertical-align: inherit;">，并将</font><em><font style="vertical-align: inherit;">“on”</font></em><font style="vertical-align: inherit;">值</font><font style="vertical-align: inherit;">更改</font><font style="vertical-align: inherit;">为</font><em><font style="vertical-align: inherit;">“off”</font></em><font style="vertical-align: inherit;">。</font></font><em><font style="vertical-align: inherit;"></font></em><font style="vertical-align: inherit;"></font><em><font style="vertical-align: inherit;"></font></em><font style="vertical-align: inherit;"></font><em><font style="vertical-align: inherit;"></font></em><font style="vertical-align: inherit;"></font><em><font style="vertical-align: inherit;"></font></em><font style="vertical-align: inherit;"></font></p>
<pre><code>&lt;Listener className="org.apache.catalina.core.AprLifecycleListener" SSLEngine="off" /&gt;
</code></pre>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">找到</font><font style="vertical-align: inherit;">包含</font><em><font style="vertical-align: inherit;">protocol =“org.apache.coyote.http11.Http11NioProtocol”</font></em><font style="vertical-align: inherit;">的</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">&lt;Connector&gt;</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">元素，</font><font style="vertical-align: inherit;">并将其替换为以下内容：</font></font><em><font style="vertical-align: inherit;"></font></em><font style="vertical-align: inherit;"></font></p>
<pre><code>&lt;Connector protocol="org.apache.coyote.http11.Http11NioProtocol"<font></font>
	port="8443" minSpareThreads="5"<font></font>
	enableLookups="true" disableUploadTimeout="true"<font></font>
	acceptCount="100" maxThreads="200"<font></font>
	scheme="https" secure="true" SSLEnabled="true"<font></font>
	keystoreFile="C:\Program Files\FMEServer\Utilities\tomcat\tomcat.keystore"<font></font>
	keystorePass="tomcat"<font></font>
	clientAuth="false" sslEnabledProtocols="TLSv1,TLSv1.1,TLSv1.2"<font></font>
	sslImplementationName="org.apache.tomcat.util.net.jsse.JSSEImplementation"<font></font>
	ciphers="TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256,TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA,<font></font>
	TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384,TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA,<font></font>
	TLS_RSA_WITH_AES_128_GCM_SHA256,TLS_RSA_WITH_AES_256_GCM_SHA384,<font></font>
	TLS_RSA_WITH_AES_128_CBC_SHA256,TLS_RSA_WITH_AES_256_CBC_SHA256,<font></font>
	TLS_RSA_WITH_AES_128_CBC_SHA,TLS_RSA_WITH_AES_256_CBC_SHA,<font></font>
	SSL_RSA_WITH_3DES_EDE_CBC_SHA"<font></font>
	URIEncoding="UTF8" /&gt;<font></font>
<font></font>
&lt;Connector port="80" protocol="HTTP/1.1"<font></font>
	redirectPort="8443"/&gt;<font></font>
</code></pre>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">保存并关闭</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">server.xml</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">文件。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">4）配置web.xml</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">以管理员模式在文本编辑器中打开</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">web.xml</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">文件。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在结束</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">&lt;/ web-app&gt;</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">元素</font><font style="vertical-align: inherit;">之前，将以下代码块添加到文件末尾</font><font style="vertical-align: inherit;">：</font></font></p>
<pre><code>&lt;security-constraint&gt;<font></font>
	&lt;web-resource-collection&gt;<font></font>
		&lt;web-resource-name&gt;HTTPSOnly&lt;/web-resource-name&gt;<font></font>
		&lt;url-pattern&gt;/*&lt;/url-pattern&gt;<font></font>
	&lt;/web-resource-collection&gt;<font></font>
	&lt;user-data-constraint&gt;<font></font>
		&lt;transport-guarantee&gt;CONFIDENTIAL&lt;/transport-guarantee&gt;<font></font>
	&lt;/user-data-constraint&gt;<font></font>
&lt;/security-constraint&gt;<font></font>
</code></pre>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">保存并关闭</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">web.xml</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">文件。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">5）配置context.xml</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">以管理员模式在文本编辑器中打开</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">context.xml</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">文件。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将以下内容添加到文件的末尾，就在结尾的</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">&lt;/ context&gt;</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">元素之前：</font></font></p>
<pre><code>&lt;Valve className="org.apache.catalina.authenticator.SSLAuthenticator"<font></font>
	disableProxyCaching="false" /&gt;<font></font>
</code></pre>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">保存并关闭</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">context.xml</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">文件。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">6）验证配置</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">现在我们已经进行了更改，我们想验证是否为FME Server正确配置了HTTPS。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">从</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">开始菜单&gt;FME Server 2018.0&gt;重新启动FME服务器</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">重新启动FME Server应用程序服务</font><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">打开浏览器并导航到</font></font><em><a href="https://localhost:8443/fmeserver" rel="nofollow"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">https：// localhost：8443 / fmeserver</font></font></a></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">您应该会看到安全格式的FME服务器登录页面。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/3.206.Ex3.verifyConfiguration.png"><img src="./Images/3.206.Ex3.verifyConfiguration.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">注意：如果使用自签名证书进行测试，您的浏览器可能会将该页面报告为不安全：</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/3.207.Ex3.ConnectionNotSecure_Warning.png"><img src="./Images/3.207.Ex3.ConnectionNotSecure_Warning.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">对于自签名证书，某些浏览器允许您为</font></font><em><a href="https://localhost:8443/" rel="nofollow"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">https：// localhost：8443 /</font></font></a></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">添加例外</font><font style="vertical-align: inherit;">。</font></font></p>
<p><br><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">7）修改服务URL以使用HTTPS</font></font></strong>
<br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">要为FME Server服务启用SSL，请登录FME Server Web界面（用户名和密码</font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">admin</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">），然后选择</font><font style="vertical-align: inherit;">左侧栏上的“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">服务</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"> ”。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/3.208.Ex3.ServicesButton.png"><img src="./Images/3.208.Ex3.ServicesButton.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在“ </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">服务”</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">页面上，您可以一次更新特定服务或所有服务。</font><font style="vertical-align: inherit;">让我们更新所有服务。</font><font style="vertical-align: inherit;">单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">更改所有主机”</font></font></strong></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/3.209.Ex3.ChangeAllHosts.png"><img src="./Images/3.209.Ex3.ChangeAllHosts.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将</font><font style="vertical-align: inherit;">打开</font><font style="vertical-align: inherit;">“ </font></font><em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">更改所有主机”</font></font></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">对话框。</font><font style="vertical-align: inherit;">确保将</font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Host</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">设置为</font></font><em><a href="https://localhost:8443/" rel="nofollow"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">https：// localhost：8443</font></font></a></em><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">，然后单击“ </font></font><strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">确定”</font></font></strong><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/3.210.Ex3.ChangeAllHosts2.png"><img src="./Images/3.210.Ex3.ChangeAllHosts2.png" alt="" style="max-width:100%;"></a></p>
<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">URL将在“服务”页面上更新为新的正确值。</font></font></p>
<p><a target="_blank" rel="noopener noreferrer" href="./Images/3.211.Ex3.NewServiceURLs.png"><img src="./Images/3.211.Ex3.NewServiceURLs.png" alt="" style="max-width:100%;"></a></p>
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

如果您正在使用带有FME Server的WebSockets，请查看“FME Server管理指南”和标题为“ </font></font><a href="http://docs.safe.com/fme/2018.0/html/FME_Server_Documentation/Content/AdminGuide/configuring_for_https.htm" rel="nofollow"><font style="vertical-align: inherit;">在WebSocket服务器上启用SSL（可选）</font></a><font style="vertical-align: inherit;"> 的部分</font>

</td>
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
<ul><li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">创建自签名证书</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">在FME Server Java密钥库中导入证书</font></font></li>
<li><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">将FME Server Web服务更改为使用HTTPS URL</font></font></li></ul>

</td>
</tr>
</tbody></table>
</article>
  </div>
