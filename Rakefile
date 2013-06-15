task :default => [:core]

username = "scalolli"
email = "basavarajkalloli@gmail.com" 

task :chrome_dependency do 
  sh "cp /media/basu/Softwares/UbuntuInstallers/libudev0_175-0ubuntu13_amd64.deb ~/devtools -f"
  sh "sudo dpkg -i ~/devtools/libudev0_175-0ubuntu13_amd64.deb"
  sh "sudo apt-get install libgconf2-4 libnss3-1d libxss1"
end

task :chrome => :chrome_dependency do 
 sh "cp /media/basu/Softwares/UbuntuInstallers/google-chrome-stable_current_amd64.deb ~/devtools/"
 sh "sudo dpkg -i ~/devtools/google-chrome-stable_current_amd64.deb"
end

task :java do 
 sh "sudo add-apt-repository ppa:webupd8team/java -y"
 sh "sudo apt-get update && sudo apt-get install oracle-java7-installer -y"
end

task :core do 
 sh "sudo apt-get install vim git wget tmux zsh -y"
 sh "git config --global user.email #{username}"
 sh "git config --global user.name #{email}"
end

task :oh_my do 
 sh "git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh" 
 sh "cp ~/.zshrc ~/.zshrc.orig"
 sh "cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc"
 sh "chsh -s $(which zsh)" 
end

task :skype do 
 sh "wget http://www.skype.com/go/getskype-linux-beta-ubuntu-64 -O skype"
 sh "dpkg -i skype"
end
