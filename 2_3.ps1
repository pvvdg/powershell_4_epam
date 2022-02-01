# 3.	Экспорт в CSV
# a.	Экспортировать в CSV содержимое системного лога приложений (Application) за последнюю неделю.
# b.	Скинуть файл в телеграм чат. (вручную) 
# c.	Скачать чужой CSV из телегамм чата. (вручную)
# d.	Импортировать файл и вывести: информацию – белым, предупреждения – желтым, ошибки – красным цветом. (Выводить Дату и Сообщение)

$pathToFolder = 'G:\PowerShell\Day4\Tasks\powershell_4_epam\'

# Get-EventLog -LogName "Application" -After (get-date).adddays(-7) | Export-Csv -Path $($pathToFolder + 'petrachuk.csv') -Delimiter ';' -Encoding 'utf8'

$LogInfo = Import-Csv -Path $($pathToFolder + 'Kudrevich.csv') -Delimiter ';'
foreach ($element in $LogInfo) {
    switch ($true) {
        ($element.EntryType -eq "Information") { 
            Write-Host $element.TimeWritten, $element.Message -ForegroundColor White
        }
        ($element.EntryType -eq "Warning") { 
            Write-Host $element.TimeWritten, $element.Message -ForegroundColor Yellow
        }
        ($element.EntryType -eq "Error") { 
            Write-Host $element.TimeWritten, $element.Message -ForegroundColor Red
        }
    }

}