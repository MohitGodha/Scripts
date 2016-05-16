#!/bin/bash
if ! [ $(id -u) = 0 ]; then
   echo "Please login via root!"
   exit 1

else

sudo apt-get update

# Add User to www-data
usermod -a -G www-data username

# Add New User for Admin 

	 username=admin
	 password=samsung

if [ $(id -u) -eq 0 ]; then


	#read -s -p "Enter password : " $password

	egrep "^$username" /etc/passwd >/dev/null

	if [ $? -eq 0 ]; then

		echo "$username exists!"

		exit 1

	else

		pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)

		useradd -m -p $pass $username

		[ $? -eq 0 ] && echo "User has been added to system!" || echo "Failed to add a user!"

	fi

else

	echo "Only root may add a user to the system"

	exit 2


fi
#updating ubuntu
sudo apt-get update

#SSH
sudo apt-get install openssh-server
sudo service sshd restart
sudo service ssh restart
sudo ssh-keygen -t rsa -C "admin"
touch .ssh/authorized_keys
chmod 700 .ssh/
chmod 600 .ssh/authorized_keys

#disable pendrive
sudo chmod -R 400 media/

##Opera
sudo sh -c 'echo "deb http://deb.opera.com/opera/ stable non-free" >> /etc/apt/sources.list.d/opera.list'
sudo sh -c 'wget -O - http://deb.opera.com/archive.key | apt-key add -'
sudo apt-get update && sudo apt-get install opera -y

# Firewall Disabled
sudo service ufw disable	

# Skype
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update -y
sudo apt-get install skype -y

# JAVA
sudo apt-get install openjdk-7-jre -y
sudo apt-get install openjdk-6-jre -y

# Browser
sudo apt-get install chromium-browser -y

#Other Tools
sudo apt-get install xpad -y # Xpad
sudo apt-get install vim -y # Editor
sudo apt-get install shutter -y # Screen Shot Tool
sudo apt-get install geany -y #Editor
sudo apt-get install filezilla # FTP
sudo apt-get install vlc -y # Player

#Elance Tracket

#!/bin/bash
sudo apt-get install libgtk2.0-0:i386 libstdc++6:i386 libnss3-1d:i386 lib32nss-mdns libxml2:i386 libxslt1.1:i386 libcanberra-gtk-module:i386 gtk2-engines-murrine:i386
cd /tmp
sudo apt-get download libgnome-keyring0:i386
dpkg-deb -R libgnome-keyring0_3.8.0-2_i386.deb gnome-keyring
cp gnome-keyring/usr/lib/i386-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/i386-linux-gnu/
ln -s /usr/lib/i386-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/i386-linux-gnu/libgnome-keyring.so.0
ln -s /usr/lib/i386-linux-gnu/libgnome-keyring.so.0 /usr/lib/libgnome-keyring.so.0
ln -s /usr/lib/i386-linux-gnu/libgnome-keyring.so.0.2.0 /usr/lib/libgnome-keyring.so.0.2.0
wget http://airdownload.adobe.com/air/lin/download/2.6/AdobeAIRInstaller.bin
chmod a+x AdobeAIRInstaller.bin
./AdobeAIRInstaller.bin
rm ./AdobeAIRInstaller.bin
rm /usr/lib/libgnome-keyring.so.0
rm /usr/lib/libgnome-keyring.so.0.2.0
wget https://www.elance.com/tracker/TrackerSetup.deb
sudo dpkg -i TrackerSetup.deb
sudo apt-get -f install
#Team viewer
mkdir -p ~/build/tv
cd  ~/build/tv
wget http://download.teamviewer.com/download/teamviewer_i386.deb
sudo dpkg -i teamviewer_i386.deb
#Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
#Netbeans
mkdir -p ~/build/nb
cd  ~/build/nb
#wget download.oracle.com/otn-pub/java/jdk-nb/8u73-b02-8.1/jdk-8u73-nb-8_1-linux-x64.sh
#sudo sh jdk-8u73-nb-8_1-linux-x64.sh
#LAMP
sudo apt-get update
sudo apt-get install apache2
sudo apt-get install mysql-server libapache2-mod-auth-mysql php5-mysql
sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt
sudo service apache2 restart
#GIT
sudo apt-get install git-core
git --version
#Notepad++
sudo add-apt-repository ppa:notepadqq-team/notepadqq
sudo apt-get update
sudo apt-get install notepadqq
fi

