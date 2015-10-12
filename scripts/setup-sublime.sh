#!/usr/bin/env bash

echo "Installing Sublime Text 2 - Editor"

#Sublime Text 2
wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2%20x64.tar.bz2 --quiet
mv "Sublime Text 2.0.2 x64.tar.bz2" SublimeText2.0.2x64.tar.bz2
tar -jxf SublimeText2.0.2x64.tar.bz2
sudo mkdir /opt/sublime
sudo mv "Sublime Text 2"/* /opt/sublime
sudo chown -R root:root /opt/sublime
sudo chmod -R +r /opt/sublime

# Add to path
sudo cp /vagrant/scripts/sublime_path.template /usr/bin/sublime_text
sudo chmod 775 /usr/bin/sublime_text
# Add desktop shortcuts
sudo cp /vagrant/scripts/sublime_desktop.template /usr/share/applications/sublime.desktop

# tidy up
rm SublimeText2.0.2x64.tar.bz2
rm -rf "Sublime Text 2"
