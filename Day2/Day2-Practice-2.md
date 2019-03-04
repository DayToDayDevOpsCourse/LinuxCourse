useradd venkat

passwd venkat

find / -name "venkat"

groups

getent group

usermod -G ec2-user venkat

getent group | grep venkat

su - venkat

id

groups venkat

id venkat

Adding user to multiple groups

useradd venkat2

usermod -a -G venkat,root,ec2-user venkat2
