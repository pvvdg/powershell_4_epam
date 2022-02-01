# Экспорт в JSON
# a.	Экспортировать в JSON информацию о локальных дисках.
# b.	Вывести содержимое файла на экран.
# c.	Импортировать данные  из JSON (если есть возможность, то на другом компьютере, перенеся туда файл JSON) и вывести имя диска и свободное место (в ГБ и %)


$pathToFolder = 'G:\PowerShell\Day4\Tasks\powershell_4_epam\'

# Get-PSDrive -PSProvider FileSystem | ConvertTo-Json > $($pathToFolder + '2_2.json') 
# Get-Content $($pathToFolder + '2_2.json')

$result = Get-Content $($pathToFolder + '2_2.json') | ConvertFrom-Json

foreach ($disk in $result) {
    Write-Host "Disk $($disk.Name), Free: $([math]::round($disk.Free / 1Gb,2)) Gb, Free: $([math]::round(100-$($disk.Used*100)/($disk.Free + $disk.Used))) %"
}