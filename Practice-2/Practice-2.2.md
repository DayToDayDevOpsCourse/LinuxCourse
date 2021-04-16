# Login to root user 

    sudo -i

# Create a user

    useradd devopsuser

    passwd devopsuser

    find / -name "devopsuser"

    groups

    getent group

    usermod -G ec2-user devopsuser

    getent group | grep devopsuser

# swith to the user 'devopsuser' from root user

    su - devopsuser

    id

    groups devopsuser

    id devopsuser

### Adding user to multiple groups

    useradd v2devops

    usermod -a -G devopsuser,root,ec2-user v2devops

    id v2devops

    getent group | grep v2devops

### creating new group:

    groupadd super

# give rwx access to any user on the directory

		chmod -R a+rwx /root/sample

### Give permission to the user on the directory or file

* create a file in root directory 

        /root/sample/shell.sh

* login to user v2devops  

        su - v2devops
        
* try to edit the file

        vi /root/sample/shell.sh
        
  User v2devops can't edit the file. We need to give write access to the user v2devops on the file /root/sample/shell.sh (or) we can maintain a group(with the list of users) to give write access on the directory or file.

* User should be part of the group

        usermod -a -G super v2devops
        
* change the Permission for Folder

        chown USER:GROUP DIRECTORY --> operate on only one directory level

        chown -R USER:GROUP DIRECTORY --> operate on all files and sub-directories

        chown venkat:super /root/sample/shell.sh

* login to user v2devops  

        su - v2devops
        
* try to edit the file

        vi /root/sample/shell.sh
