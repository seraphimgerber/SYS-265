#secure-ssh.sh
#author seraphim
#creates a new ssh user using $1 parameter
#adds a public key from the local repo or curled from the remote repo
#removes roots ability to ssh in
echo -n "Enter username: "
read user
useradd -m -d /home/$user -s /bin/bash $user
mkdir /home/$user/.ssh
cp SYS-265/linux/public-keys/id_rsa.pub /home/$user/.ssh/authorized_keys
chmod 700 /home/$user/.ssh
chmod 600 /home/$user/.ssh/authorized_keys
chown -R $user:$user /home/$user/.ssh
