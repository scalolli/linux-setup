task :default => [:core]

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
 sh "sudo apt-get install vim -y"
 sh "sudo apt-get install git -y"
end
