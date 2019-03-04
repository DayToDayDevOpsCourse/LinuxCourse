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

    groupadd 
