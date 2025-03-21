@REM |----------------------------------|
@REM |                                  |
@REM |   IP: Server      Port: Service  |
@REM |                                  |
@REM |----------------------------------|


@REM |----------------------------------|
@REM |  Host Name: oldsudani.sudani.sd  |
@REM |----------------------------------|


@REM ------------------------------------------------------


@REM Test Environment Server IP: 172.22.45.70
@REM Test Environment URL: https://staging.sudani.sd/
@REM CV_URL: /var/www/html/wp-content/uploads/jobsearch-resumes


@REM Protocol      →        Port
@REM SSH                    22
@REM SFTP                   22

@REM -----------------------------------------------





@REM ping basic network connectivity (no specific port)
@REM ping 172.22.45.70

@REM telnet - to test port
@REM telnet 172.22.45.70 22

@REM List all open ports on the target machine.
@REM nmap 172.22.45.70

@REM List all open ports (skip the host discovery).
@REM nmap -Pn 172.22.45.70

@REM service/version detection
@REM nmap -A 172.22.45.70

@REM filter by specific IP
@REM netstat -an | find "172.22.45.70"