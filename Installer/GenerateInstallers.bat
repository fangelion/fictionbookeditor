rem bat ���� ������� 20 ���������� �������������� exe ������ �� ������

rem �������������: generateinstallers <��� ��������� exe �����>
rd /S /Q installers
md installers
set I=10
:while
	md installers\%I%
	copy /	b %1 installers\%I%\%1
	echo %I% >> installers\%I%\%1
	set /a I = %I% + 1
	if %I% == 30 GOTO end
GOTO while	
:end