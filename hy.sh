
echo "enter option"
read op
case $op in
1) echo "os and version,release number,kernel version"
echo "os:"
if [ -f /etc/os-release ] 
then

cat /etc/os-release
fi
;;
2) echo"all available shells"
if [ -f /etc/shells ] 
then
cat /etc/shells
fi
;;
3) echo "mouse settings"
xinput --list 10
;; 
4) echo "cpu information"
if [ -f /proc/cpuinfo ] 
then
cat /proc/cpuinfo
fi
;;
5) echo "memory information"
if [ -f /proc/meminfo] 
then
cat /proc/meminfo
fi
;;
6) echo "hard disk information"
 echo "Model: `cat /proc/ide/hda/model` "
 echo "driver: `cat /proc/ide/hda/driver` "
 echo -e "Cache size: `cat /proc/ide/hda/cache` "
;;
7) echo "file system"
cat /proc/mounts
if which dialog > /dev/null
then
	dialog --backtitle "Linux Software
Diagnostics (LSD) Shell Script Ver.1.0" --title
"Press Up/Down keys to move" --textbox /tmp/
info.tmp.01.$$$ 21 70
else
	cat /tmp/info.tmp.01.$$$ |more

fi

rm -f /tmp/info.tmp.01.$$$
;;
*)echo "enter valid option only"
		exit;;
esac

