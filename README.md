##Tanjiro Log Analyser

Tanjiro Log Analyser is a bash-based cybersecurity tool that analyzes authentication logs to detect suspicious login activity.

The tool scans system logs using journalctl and identifies failed login attempts, suspicious IP addresses, and local authentication attacks.

This project demonstrates basic Security Operations Center (SOC) log analysis using bash scripting.

##FEATURES

- Detect failed login attempts
- Detect SSH login attacks
- Detect local login failures (su)
- Identify suspicious IP addresses
- Generate a full security report
- Simple menu interface
- Works on Kali Linux and other journalctl systems

##INSTALLATION

git clone https://github.com/tanjironezuko1900/TanjiroLogAnalysis.git

cd TanjiroLogAnalysis

sudo chmod +x install.sh

sudo bash install.sh

##USAGE

chmod +x tanjirologanalyser.sh

sudo bash tanjirologanalyser.sh


##TESTING

Create test user:

sudo adduser testuser

Local Login:

sudo su testuser

SSH Login:

ssh testuser@YOUR_IP

##REQUIREMENTS

-Linux (Kali / Ubuntu / Debian / CentOS)
-journalctl (you probably have that)
-figlet
