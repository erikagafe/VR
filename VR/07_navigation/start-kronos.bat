:: kill all avango windows from last run
start /B close_all_windows.bat

:: sleep to allow for cleanup
ping -n 2 127.0.0.1 > NUL

:: start application
set AVANGO_DIR=C:\Data\Repositories\avango
set Path=%Path%;%AVANGO_DIR%\lib\Release
set PYTHONPATH=%PYTHONPATH%;%AVANGO_DIR%\lib\Python3.5;%PYTHONPATH%;%AVANGO_DIR%\lib\python3.5\avango\daemon;%AVANGO_DIR%\examples

start "avango" cmd /K hmd-server\HMDServer.exe 141.54.147.27:7770
start "avango" cmd /K network-controller.py
start "avango" cmd /K daemon-kronos.py
start "avango" cmd /K main_hmd.py
