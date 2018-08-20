# Sample kickstart file for current EL, Fedora based distributions.

#platform=x86, AMD64, or Intel EM64T
# System authorization information
auth  --useshadow  --enablemd5
# System bootloader configuration
bootloader --location=mbr
# Partition clearing information
clearpart --all --initlabel
# Use text mode install
text
# Firewall configuration
firewall --enabled
# Run the Setup Agent on first boot
firstboot --disable
# System keyboard
keyboard us
# System language
lang en_US
# Use network installation
url --url=https://mirror.steadfastnet.com/fedora/releases/28/Server/x86_64/os
# Network information
network --bootproto dhcp
# Reboot after installation
shutdown

#Root password
rootpw r00tm3
# Do not configure the X Window System
skipx
# System timezone
timezone  US/Pacific
# Install OS instead of upgrade
install
# Clear the Master Boot Record
zerombr
# Allow anaconda to partition the system as needed
part --asprimary --ondisk=/dev/sda --size 1 --grow /boot
part --asprimary --ondisk=/dev/sdb --size 2048 swap
part --asprimary --ondisk=/dev/sdb --size 1 --grow /

%packages --excludedocs --nobase
%end
