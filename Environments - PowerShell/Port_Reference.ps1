<#
|-------------------------------------------------|
|                                                 |
|   IP: Server      Port: Service                 |
|                                                 |
|   FTP: File Transfer Protocol                   |
|                                                 |
|   FTPS: File Transfer Protocol over SSL / TLS   |
|                                                 |
|  SSH: Secure Shell                              |
|                                                 |
|  SFTP: SSH File Transfer Protoco                |
|                                                 | 
|  Control/control chanell: command               |
|                                                 |
|  Data chanel: Data                              |
|-------------------------------------------------|
#>

# Firewall
# NAT (Network Address Translation)

<#
Protocol             →            Port

FTP (Control explicit)            20  
FTP (Data explicit)               21
FTPS (FTP over SSL/TLS - command) 21
FTPS (Control implicit)           990 
FTPS (Data implicit)              989 
TFTP                              69
SSH (SSH1, SSH2)                  22
SFTP (SSH File Transfer Protocol) 22
SCP  (Secure Copy - default)      22
SCP                               2222
Telnet                            23  
Telnet (over SSL)                 992 
SMTP                              25  
DNS                               53  
SNMP                              161 
HTTP                              80  
HTTPS                             443 
POP                               3110 
POP3 (over SSL)                   995 
IMAP                              143 
IMAP (over SSL)                   993 
RDP  (Remote Desktop Protocol)    3389
Oracle DB                         1521
SQL Server                        1433
PostgreSQL                        5432
SQLnet                            1521
MySQL                             3306
LDAP                              389 
LDAPS                             636 
NTP                               123 
NNTP                              119 
Kerberos                          88  
NetBIOS                           139 
Syslog                            514 
NFS                               2049
Socks Proxy                       1080
#>