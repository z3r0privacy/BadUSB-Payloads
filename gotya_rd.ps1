$dom = $env:userdomain
$usr = $env:username
$name = ([adsi]"WinNT://$dom/$usr,user").fullname

$msg = "Hello $name. I am a script that has just been downloaded after you plugged in a malicious usb device. In the future, please be more careful!"
[System.Windows.MessageBox]::Show($msg)
