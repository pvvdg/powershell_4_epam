# ��ᯮ�� � JSON
# a.	��ᯮ��஢��� � JSON ���ଠ�� � �������� ��᪠�.
# b.	�뢥�� ᮤ�ন��� 䠩�� �� �࠭.
# c.	������஢��� �����  �� JSON (�᫨ ���� �����������, � �� ��㣮� ��������, ��७��� �㤠 䠩� JSON) � �뢥�� ��� ��᪠ � ᢮������ ���� (� �� � %)

# Get-PSDrive -PSProvider FileSystem | ConvertTo-Json > "D:\Courses\powershell\day4\Tasks\2_2.json"
# Get-Content "D:\Courses\powershell\day4\Tasks\powershell_4_epam\2_2.json"

$json = Get-Content "D:\Courses\powershell\day4\Tasks\powershell_4_epam\2_2.json" | ConvertFrom-Json