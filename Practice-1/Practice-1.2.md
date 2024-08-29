
    du -sh * --> each folder/file size in current directory or any specified path

    df -h --> disk space

    du -sh * | sort -rh | head -5 (top5 directories with size)

    du -sh .[!.]* * | sort -rh | head -5 (top5 directories inclusing hidden dirs with size)

    ifconfig | grep inet (ip address of a machine)
 
    Copy matched files along with folder structure
    
    find /data/jenkins/jobs/Digital-DevOps/ -name "config.xml" -exec cp --parents \{\} /data/jenkins-config-backup/config-backup-30-Jul-2024 \;

    free -m --> ram space

    lsblk --> mount points

    top --> top running commands

    ps -aux --> CPU menory, process id etc

    ps -aux | grep java

    netstat | grep 80 --> service which is running at port number 80

    uname -a --> machine name

    whoami - username

    who -- logged in users list

    w -- logged in users list

    lsblk --> to know the list of mounting points

    mount -o nouuid /dev/xvda2 /newDir --> mounting

    lsblk --> to know the list of mounting points

    umount /test --> unmount

    umount -l /test --> force unmount
