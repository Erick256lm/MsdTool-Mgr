:program
title Msd Tools
cls
@echo off
color 70
if "%1" neq "" ( goto %1)
echo Msd tool manager. 2022 Erick Fallguys. Ver 6.2
echo Por Favor, caso voce nao tenha feito isso, feche o programa e abra como Administrador. (caso contrario algumas acoes nao irao funcionar!)                  
set /p resposta=Aperte "f" para ver as ferramentas, Aperte "c" para mudar a cor do programa:
echo --------------------------------------------------------------------------------
if %resposta%==f goto ferr
if %resposta%==c goto config
:config
cls
echo Cores:
echo Padrao 70
echo Agua-viva: 0B
echo Matrix: 0A
set /p resposta=mude a cor:
if %resposta%==70 color 70
if %resposta%==0b color 0b
if %resposta%==0a color 0a
:ferr
cls
echo Lista de comandos:
echo --------------------------------------------------------------------------------
echo V-Voltar
echo E-Sair
echo C-Entrar em uma pasta
echo B-Ver arquivos do diretorio atual
echo 0-Ver os Arquivos e pastas do diretorio atual
echo 1-Criar pasta
echo 2-Deletar pasta
echo 3-Renomear pasta
echo 4-Criar um arquivo .Txt
echo 5-Criar um arquivo vazio
echo 6-Deletar um arquivo
echo 7-Copiar um arquivo
set /p resposta=Digite um comando:
if %resposta%==v goto program
if %resposta%==e set /p exit=Certeza?(S/N)
  	 if %exit%==s exit
     if %exit%==n goto program
if %resposta%==c goto cd
if %resposta%==0 goto dir
if %resposta%==1 goto md
if %resposta%==2 goto rmdir
if %resposta%==3 goto ren
if %resposta%==4 goto copy
if %resposta%==5 goto nul
if %resposta%==6 goto del
if %resposta%==7 goto copybat
if 
:dir
cls 
echo Pastas e arquivos do diretorio atual
dir
pause
goto program
:md
cls
md pastasemnome
echo /-Cancelar
echo Nomeie a Pasta (por favor nao use a tecla espaco):
set /p nome=%nome%
if %nome%==/ goto program
ren pastasemnome %nome%
goto program
:rmdir
cls
echo /-Cancelar 
echo digite o nome da pasta (a pasta nao pode conter espaco):
set /p del=%del%
if %del%==/ goto program
rmdir %del%
goto program
:ren
cls
echo /-Cancelar
echo digite o nome da pasta (a pasta nao pode conter espaco):
set /p pasta=%pasta%
if %pasta%==/ goto program
echo Digite um novo nome (por favor nao use a tecla espaco)
set /p novon=%novon%
ren %pasta% %novon%
goto program
:copy
cls
copy nul arquivo.txt
echo /-Cancelar
echo digite um nome para o arquivo (por favor nao use a tecla espaco):
set /p arq=%arq%
if %arq%==/ goto program
ren arquivo.txt %arq%.txt
echo  Digite o texto do arquivo (por favor nao use a tecla espaco):
set /p text=%text%
echo >> %arq%.txt %text%
goto program
:nul
cls
copy nul semnome
echo /-Cancelar
echo digite um nome para o arquivo (por favor nao use a tecla espaco):
set /p semnnome=%semnnome%
if %semnome%=/ goto :program
ren semnome %semnnome%
goto program
:del
cls
echo /-Cancelar
echo digite o nome do arquivo e sua extensao ao final do nome(Ex: Nomedoarquivo.aextensaodele) (o arquivo nao pode conter espaco):
set /p dele=%dele%
if %dele%==/ goto program
del %dele%
goto program
:copybat
cls
echo /-Cancelar
echo digite o nome do arquivo (o arquivo nao pode conter espaco):
set /p arqcp=%arqcp%
if %arqcp%==/ goto program
echo digite um novo nome do arquivo (por favor nao use a tecla espaco):
set /p arqcpn=%arqcpn%
copy %arqcp% %arqcpn%
goto program
:cd
cls
echo /=Cancelar
echo Digite o nome do diretorio:
set /p dire=%dire%
cd %dire% 
goto program
if %dire%==/ goto program



