
netstat -tulpn

Active Internet connections (only servers)

netstat -tulpn | grep :80

netstat -tulpn | grep :8080

netstat -tulpn | grep :22

netstat -tulpn | grep --color :80

whatis nginx

whereis nginx

Use /proc/$pid/exec file find out what is using port 80

root@ip-172-31-31-98:~# fuser 80/tcp
80/tcp:               4094  4097
root@ip-172-31-31-98:~# ls -l /proc/4094/exe
lrwxrwxrwx 1 root root 0 Feb 26 10:38 /proc/4094/exe -> /usr/sbin/nginx

owner of process id: ps aux | grep 4094

lsof command find out what is using port 80

lsof -i :80 | grep LISTEN

