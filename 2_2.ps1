# Экспорт в JSON
# a.	Экспортировать в JSON информацию о локальных дисках.
# b.	Вывести содержимое файла на экран.
# c.	Импортировать данные  из JSON (если есть возможность, то на другом компьютере, перенеся туда файл JSON) и вывести имя диска и свободное место (в ГБ и %)

# Get-PSDrive -PSProvider FileSystem | ConvertTo-Json > "D:\Courses\powershell\day4\Tasks\2_2.json"
# Get-Content "D:\Courses\powershell\day4\Tasks\powershell_4_epam\2_2.json"

$json = Get-Content "D:\Courses\powershell\day4\Tasks\powershell_4_epam\2_2.json" | ConvertFrom-Json