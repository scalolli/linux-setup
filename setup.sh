#!/bin/sh
echo "Installing wget, curl, git, bim, zsh and ruby"
sudo apt-get install wget curl git vim zsh ruby1.9.3 -y

echo "Installing chrome.."

sudo apt-get install libcurl3 libnspr4-0d libxss1 -y
sudo dpkg -i libudev0_175-amd64_NoobsLab.com.deb
sudo apt-get install libgconf2-4 libxss1 -y
wget -O g-chrome-NoobsLab64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i g-chrome-NoobsLab64.deb && rm g-chrome-NoobsLab64.deb

echo "Installing sublime-text-3"

sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo apt-get update -y
sudo apt-get install sublime-text-installer -y

echo "Setting devtools directory"

[ -d devtools ] || mkdir ~/devtools
cd devtools

idea=ideaIC-13.0.1.tar.gz

[ -f "$idea" ] || (echo "Idea tar does not exist, downloading..." && wget http://download.jetbrains.com/idea/ideaIC-13.0.1.tar.gz)

tar xvf "$idea"

echo "Creating desktop entry for IntelliJ"

desktopEntry="[Desktop Entry]
Name=IntelliJ IDEA
Comment=IntelliJ IDEA IDE
Exec=/home/basu/devtools/idea-IC-133.331/bin/idea.sh
Icon=/home/basu/devtools/idea-IC-133.331/bin/idea.png
Terminal=false
StartupNotify=true
Type=Application
Categories=Development;IDE;";

echo "$desktopEntry" > /usr/share/applications/idea.desktop

echo "Install Oracle Java 6 using webupd8team ppa..."
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update -y
sudo apt-get install oracle-java6-installer -y

echo "Installing extensions to improve battery and avoid over heating"
sudo add-apt-repository ppa:linrunner/tlp -y
sudo apt-get update -y
sudo apt-get install tlp tlp-rdw -y
sudo tlp start

echo "Installing multimedia software - vlc, amarok"
sudo apt-get install vlc amarok -y

echo "Installing oh my zsh"
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

echo "Setting default shell to zsh"
chsh -s /bin/zsh


