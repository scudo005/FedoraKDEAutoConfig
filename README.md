# FedoraKDEAutoConfig
Script to automatically configure Fedora (41) KDE to automatically add RPM Fusion and Flathub repositories.

This script installs both free **and non-free** repositories from RPM Fusion. It also installs `fastfetch` (because we all love it and Fedora doesn't provide it automatically), Wine, and a bunch of other things I want in my workflow.

I made this to simplify *my* process in installing Fedora, so feel free to fork this project and add the changes you need.

Notes: 
- if it doesn't work, try invoking `dos2unix` on the script file, as GitHub may save it as a Windows-formatted text file, and give it executability permission with `chmod +x`.
