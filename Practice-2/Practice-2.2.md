# Login to root user 

    sudo -i

# Create a user

    useradd venkat

    passwd venkat

    find / -name "venkat"

    groups

    getent group

    usermod -G ec2-user venkat

    getent group | grep venkat

# swith to the user venkat from root user

    su - venkat

    id

    groups venkat

    id venkat

### Adding user to multiple groups

    useradd venkat2

    usermod -a -G venkat,root,ec2-user venkat2

    id venkat2

    getent group | grep venkat2

### creating new group:

    groupadd super

# give rwx access to any user on the directory

		chmod -R a+rwx /root/sample

### Give permission to the user on the directory or file

* create a file in root directory 

        /root/sample/shell.sh

* login to user venkat  

        su - venkat
        
* try to edit the file

        vi /root/sample/shell.sh
        
  User venkat can't edit the file. We need to givbe write access to the user venkat on the file /root/sample/shell.sh (or) we can maintain a group(with the list of users) to give write access on the directory or file.

* User should be part of the group

        usermod -a -G super venkat
        
* change the Permission for Folder

        chown USER:GROUP DIRECTORY --> operate on only one directory level

        chown -R USER:GROUP DIRECTORY --> operate on all files and sub-directories

        chown venkat:super /root/sample/shell.sh

* login to user venkat  

        su - venkat
        
* try to edit the file

        vi /root/sample/shell.sh
