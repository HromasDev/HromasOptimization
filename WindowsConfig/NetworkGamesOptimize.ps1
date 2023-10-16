if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

Set-ExecutionPolicy Unrestricted

Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Flow Control" -DisplayValue "Disabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "���������� �������" -DisplayValue "����"


Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Interrupt Moderation" -DisplayValue "Enabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "��������� ����������" -DisplayValue "���"


Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Receive Side Scaling" -DisplayValue "Enabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "��������� �������� ���������������" -DisplayValue "���"

$a=(Get-CimInstance -ClassName Win32_Processor | Measure-Object -Property NumberOfCores -Sum).Sum
if ($a -eq 8){
	Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Maximum Number of RSS Queues" -DisplayValue "4 Queues"
	Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "������������ ����� �������� RSS" -DisplayValue "4 �������"
}
else {
	Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Maximum Number of RSS Queues" -DisplayValue "2 Queues"
	Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "������������ ����� �������� RSS" -DisplayValue "2 �������"
}

Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Large Send Offload v2 (IPv4)" -DisplayValue "Disabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Large Send Offload v2 (IPv6)" -DisplayValue "Disabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "��������� ��� ������� �������� (IPv4)" -DisplayValue "����"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "��������� ��� ������� �������� (IPv6)" -DisplayValue "����"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "��������� ��� ������� �������� v2 (IPv4)" -DisplayValue "����"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "��������� ��� ������� �������� v2 (IPv6)" -DisplayValue "����"

Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "ARP Offload" -DisplayValue "Enabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "�������� ��������� ARP" -DisplayValue "���"

Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "NS Offload" -DisplayValue "Enabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "�������� ��������� NS" -DisplayValue "���"

Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "TCP Checksum Offload (IPv4)" -DisplayValue "Rx & Tx Enabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "TCP Checksum Offload (IPv6)" -DisplayValue "Rx & Tx Enabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "����������� ����� ��������� TCP (IPv4)" -DisplayValue "Rx & Tx ���"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "����������� ����� ��������� TCP (IPv6)" -DisplayValue "Rx & Tx ���"

Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "UDP Checksum Offload (IPv4)" -DisplayValue "Rx & Tx Enabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "UDP Checksum Offload (IPv6)" -DisplayValue "Rx & Tx Enabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "����������� ����� ��������� UDP (IPv4)" -DisplayValue "Rx & Tx ���"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "����������� ����� ��������� UDP (IPv4)" -DisplayValue "Rx & Tx ���"


Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Wake on Magic Packet" -DisplayValue "Disabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "�������� ��� ������������ ������� Magic Packet" -DisplayValue "����"


Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Wake on pattern match" -DisplayValue "Disabled"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "�������� ��� ���������� �������" -DisplayValue "����"
Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "�������� ��� ��������� ����������� ������" -DisplayValue "����"

Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Enable PME" -DisplayValue "Off"

Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Large Send Offload" -DisplayValue "Off"

Set-NetAdapterAdvancedProperty -Name "*" -DisplayName "Selective suspend" -DisplayValue "Off"