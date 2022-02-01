# a.	Экспортировать в XML список файлов в папке (найти на компьютере любую папку, в которой есть документы)

#Импорт фала
$PathToImportState = 'D:\Courses\powershell\day4\Tasks\2_1.xml'

# Get-ChildItem -Path 'D:\PS_PETRACHUK' | Export-Clixml -Path $PathToImportState

$PathToCurrentState = 'D:\PS_PETRACHUK'

$CurrentState = Get-ChildItem -Path $PathToCurrentState

$ImportState = Import-Clixml -Path $PathToImportState

Write-Host "Import State"
$ImportState

Write-Host "`nCurrent State`n"
$CurrentState 
Write-Host

#Так как структура файлов неизменна, можно применить for, дабы избавиться от вложенности циклов
for ($i = 0; $i -lt $CurrentState.Count; $i++) {
    if ($CurrentState[$i].LastWriteTime.DateTime -lt $ImportState[$i].LastWriteTime.DateTime) {
        Write-Host "Name: $($CurrentState[$i].Name) `t" -ForegroundColor Red -NoNewline
        Write-Host "Curent last write time: $($CurrentState[$i].LastWriteTime) `t" -ForegroundColor Green -NoNewline
        Write-Host "Last write time from import: $($ImportState[$i].LastWriteTime) `t" -ForegroundColor Yellow 
    }
}

