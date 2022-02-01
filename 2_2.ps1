# ��ᯮ�� � JSON
# a.	��ᯮ��஢��� � JSON ���ଠ�� � �������� ��᪠�.
# b.	�뢥�� ᮤ�ন��� 䠩�� �� �࠭.
# c.	������஢��� �����  �� JSON (�᫨ ���� �����������, � �� ��㣮� ��������, ��७��� �㤠 䠩� JSON) � �뢥�� ��� ��᪠ � ᢮������ ���� (� �� � %)


$pathToFolder = 'G:\PowerShell\Day4\Tasks\powershell_4_epam\'

# Get-PSDrive -PSProvider FileSystem | ConvertTo-Json > $($pathToFolder + '2_2.json') 
# Get-Content $($pathToFolder + '2_2.json')

$result = Get-Content $($pathToFolder + '2_2.json') | ConvertFrom-Json

foreach ($disk in $result) {
    Write-Host "Disk $($disk.Name), Free: $([math]::round($disk.Free / 1Gb,2)) Gb, Free: $([math]::round(100-$($disk.Used*100)/($disk.Free + $disk.Used))) %"
}