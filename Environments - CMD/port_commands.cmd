@REM |----------------------------------|
@REM |                                  |
@REM |   IP: Server      Port: Service  |
@REM |                                  |
@REM |----------------------------------|

@REM |----------------------------------|
@REM |   Proxy Server IP: 172.22.26.70  |
@REM |   Proxy Server Port: 80          |
@REM |----------------------------------|



@REM ping basic network connectivity (no specific port)
@REM ping <IP>

@REM telnet - to test port
@REM telnet <ip> <Port>


@REM To list all "Listening" ports:
@REM netstat -an | find "<IP>"

@REM list all listening ports filtered by specific IP
@REM netstat -an | find "192.168.1.10"

@REM To list all listening TCP ports:
@REM netstat -anp TCP | find "<IP>"

@REM Find the PID (Process ID) associated with the port:
@REM netstat -ano | find "<IP>"

@REM Chrecking port 2323
@REM netstat -ano | find "2323"

@REM nmap tool scanning
@REM nmap <IP>

@REM This command will list all open ports on the target machine.
@REM nmap <IP>