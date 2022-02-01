# 1.	Просмотреть содержимое ветви реeстра HKCU

Get-ChildItem -Path HKCU:\ | Select-Object Name

# 2.	Создать папку C:\PS_ФАМИЛИЯ. Создать диск PS ассоциированный с этой папкой.

New-PSDrive -Name PS_PETRACHUK -PSProvider FileSystem -Root "D:\PS_PETRACHUK"
Get-PSDrive

# 3.	Создать, переименовать, удалить каталог на диске из пункта 2.
Get-PSDrive

New-Item -Path 'PS_PETRACHUK:\Dir' -ItemType Directory

Rename-Item -Path 'PS_PETRACHUK:\Dir' -NewName 'Dir2'

Remove-Item -Path 'PS_PETRACHUK:\Dir2\'

# 4.	Сохранить в текстовый файл на созданном диске список запущенных(!) служб.

Get-Service | Where-Object { $_.Status -eq 'Running' } > 'PS_PETRACHUK:\service_running.txt'

Get-Content 'PS_PETRACHUK:\service_running.txt'