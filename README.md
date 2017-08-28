<pre>
https://segmentfault.com/a/1190000004136351

Start the Keychain Access application (in /Applications/Utilities/Keychain Access.app)  
Select the Keychain Access -> Certificate Assistant -> Create a Certificate... menu  
Then:  
Choose a name for the new certificate (this procedure will use "gdb-cert" as an example)  
Set "Identity Type" to "Self Signed Root"  
Set "Certificate Type" to "Code Signing"  
Activate the "Let me override defaults" option  
Click several times on "Continue" until the "Specify a Location For The Certificate" screen appears, then set "Keychain" to "System"  
Click on "Continue" until the certificate is created  
Finally, in the view, double-click on the new certificate, and set "When using this certificate" to "Always Trust"  
Exit the Keychain Access application and restart the computer (this is unfortunately required)  


打开 Keychain Access 应用程序（/Applications/Utilities/Keychain Access.app）
执行菜单 钥匙串访问 -> 证书助理 -> 创建证书
填写如下信息：
	名称：gdb_codesign
	身份类型：自签名根证书
	证书类型：代码签名
	钩选：让我覆盖这些默认设置

一路确定，直到指定证书位置的步骤，选择系统

点击“创建”，会提示用输入系统登录密码，创建完成

在钥匙串访问程序中，选择左侧栏的系统和我的证书，找到你刚刚创建的gdb_codesign证书并双击打开证书信息窗口，展开信任项，设置使用此证书时：为始终信任。

codesign -fs gdb-cert "$(which gdb)"
</pre>

<pre>
During startup program terminated with signal ?, Unknown signal

Create a .gdbinit file in your home-direcetory and write "set startup-with-shell off" in it.
vim ~/.gdbinit
</pre>

<pre>
make:
http://www.delorie.com/gnu/docs/make/make.html#SEC_Top
http://www.gnu.org/software/make/manual/make.html
</pre>