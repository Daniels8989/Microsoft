
  
#Conexion remota a host
#usuario y password dominio
$UsuarioDominio = 'Prueba'
$PasswordDominio = Read-Host -Prompt "1C$0cC0l0mb14*+" -AsSecureString 
$CredencialesDominio = New-Object System.Management.Automation.PSCredential ($UsuarioDominio, $PasswordDominio)
$RemoteComputers=@("20.114.153.6"
 
foreach ($computer in $RemoteComputers) {
 
    # Creamos la sesión remota.
    $Session1 = New-PSSession -ComputerName $computer -Credential $CredencialesDominio
}


$command = “cmd.exe /c C:\Users\Prueba\Documents\Instaladores\VSCodeUserSetup-x64-1.63.2.exe /s /v`”/qn”

$process = [WMICLASS]“\\PCName\ROOT\CIMV2:win32_process“

$process.Create($command)


$command = “cmd.exe /c C:\Users\Prueba\Documents\Instaladores\jdk-8u201-windows-x64.exe /s /v`”/qn”

$process = [WMICLASS]“\\PCName\ROOT\CIMV2:win32_process“

$process.Create($command)



