if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

Set-ExecutionPolicy Unrestricted

Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Flow Control" -DisplayValue "Disabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Управление потоком" -DisplayValue "Выкл"


Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Interrupt Moderation" -DisplayValue "Enabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Модерация прерывания" -DisplayValue "Вкл"


Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Receive Side Scaling" -DisplayValue "Enabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Получение бокового масштабирования" -DisplayValue "Вкл"

$a=(Get-CimInstance -ClassName Win32_Processor | Measure-Object -Property NumberOfCores -Sum).Sum
if ($a -eq 8){
	Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Maximum Number of RSS Queues" -DisplayValue "4 Queues"
	Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Максимальное число очередей RSS" -DisplayValue "4 Очереди"
}
else {
	Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Maximum Number of RSS Queues" -DisplayValue "2 Queues"
	Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Максимальное число очередей RSS" -DisplayValue "2 Очереди"
}

Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Large Send Offload v2 (IPv4)" -DisplayValue "Disabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Large Send Offload v2 (IPv6)" -DisplayValue "Disabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Разгрузка при большой отправке (IPv4)" -DisplayValue "Выкл"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Разгрузка при большой отправке (IPv6)" -DisplayValue "Выкл"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Разгрузка при большой отправке v2 (IPv4)" -DisplayValue "Выкл"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Разгрузка при большой отправке v2 (IPv6)" -DisplayValue "Выкл"

Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "ARP Offload" -DisplayValue "Enabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Выгрузка протокола ARP" -DisplayValue "Вкл"

Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "NS Offload" -DisplayValue "Enabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Выгрузка протокола NS" -DisplayValue "Вкл"

Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "TCP Checksum Offload (IPv4)" -DisplayValue "Rx & Tx Enabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "TCP Checksum Offload (IPv6)" -DisplayValue "Rx & Tx Enabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Контрольная сумма разгрузки TCP (IPv4)" -DisplayValue "Rx & Tx вкл"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Контрольная сумма разгрузки TCP (IPv6)" -DisplayValue "Rx & Tx вкл"

Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "UDP Checksum Offload (IPv4)" -DisplayValue "Rx & Tx Enabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "UDP Checksum Offload (IPv6)" -DisplayValue "Rx & Tx Enabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Контрольная сумма разгрузки UDP (IPv4)" -DisplayValue "Rx & Tx вкл"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Контрольная сумма разгрузки UDP (IPv4)" -DisplayValue "Rx & Tx вкл"


Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Wake on Magic Packet" -DisplayValue "Disabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Включить при срабатывании функции Magic Packet" -DisplayValue "Выкл"


Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Wake on pattern match" -DisplayValue "Disabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Включить при совпадении шаблона" -DisplayValue "Выкл"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Включить при получении магического пакета" -DisplayValue "Выкл"

Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Enable PME" -DisplayValue "Off"

Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Large Send Offload" -DisplayValue "Off"

Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Selective suspend" -DisplayValue "Off"