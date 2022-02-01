# 1.	��ᬮ���� ᮤ�ন��� ��⢨ �e��� HKCU

Get-ChildItem -Path HKCU:\ | Select-Object Name

# 2.	������� ����� C:\PS_�������. ������� ��� PS ���樨஢���� � �⮩ ������.

New-PSDrive -Name PS_PETRACHUK -PSProvider FileSystem -Root "D:\PS_PETRACHUK"
Get-PSDrive

# 3.	�������, ��२��������, 㤠���� ��⠫�� �� ��᪥ �� �㭪� 2.
Get-PSDrive

New-Item -Path 'PS_PETRACHUK:\Dir' -ItemType Directory

Rename-Item -Path 'PS_PETRACHUK:\Dir' -NewName 'Dir2'

Remove-Item -Path 'PS_PETRACHUK:\Dir2\'

# 4.	���࠭��� � ⥪�⮢� 䠩� �� ᮧ������ ��᪥ ᯨ᮪ ����饭���(!) �㦡.

Get-Service | Where-Object { $_.Status -eq 'Running' } > 'PS_PETRACHUK:\service_running.txt'

Get-Content 'PS_PETRACHUK:\service_running.txt'