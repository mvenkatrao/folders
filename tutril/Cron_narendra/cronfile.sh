echo "bash backupfile.sh" | at 9:00 AM
or
Run first: at 9:00 AM then enter and give the cmd or script to run and press ctrl+D 


===================Examples=============================
at 10:00 AM
at 10:00 AM Sun
at 
- ordinary ffile
l represent link file

c character special file
b block speical files
s socket files

types of files in linux
========================
1 . ordinary files
2 . directory files
3 . device files

10-59/10 5 * * *
Clear the cache every 10 minutes at 5am, starting from 5:10am.


to run 3 months first day once at 8am

0 8  */3 *

to take a dump evvery hour

0 * * * * 


to run a job at 12 PM

0 12 * * * 

to run a job at midnight (12AM) 

0 12 * * * 


00 (12 AM)


Every five minutes starting at 1 p.m. and ending at 1:55 p.m. and then starting at 6 p.m. and ending at 6:55 p.m., every day

*/5 13,18 * * ?

Every minute starting at 1 p.m. and ending at 1:05 p.m., every day:

 0-5 13 * * *
 
 
 
 At 1:15 p.m. and 1:45 p.m. every Tuesday in the month of June:
 
 
 
 15,45 13 ? 6 3
 
 At 9:30 a.m. every Monday, Tuesday, Wednesday, Thursday and Friday:

30 9 * * 1-5

At 6 p.m. on the last day of every month:

0 6 L * ? (to mention last we are using L)

At 6 p.m. on the third to last day of every month:


0 18 L-3 * * 

At 10:30 a.m. on the last Thursday of every month:

30 10 * * 4L

At 10 a.m. on the third Monday of every month:

0 10 ? * 1#3  (here 1 is monday 3rd rd week)

At 12 midnight on every day for five days starting on the 10th day of the month:

0 0-5 10 * ?
##################################################################################################

* * * * * * (Every second)
* * * * * (evvery minute) or (0 * * ? * *) or (* * ? * * * )

Ref : https://crontab.cronhub.io/




###########################################################################################################################

what is cron?
cron is simple words is a time based job scheduler user to run a specified jobs periodically at fixed times dates or intervals 

why it's needed?
################

this would help to run the job periodically without any human interaction a set time (automation)
special characters used in the expression :
#########################################

* ((any) :: job executes at evvery time unit .
- (range):: Rangge of the time unit.
, (values):: Multiple values of time unit.
/ (increments) :: specify inncremental values of the time unit.
? (no specific value) ::  Useful when you need to specify something in one of the two fileds in which the character is allowed , but not the other.
For example, if i want my trigger to fire on particular day of the month (say, the 10th), but dont' care what day of the week that happends to be, i would put 10 in the day of the month field and ? in the day of the week field. 


# (occurence) :: it is used to specify the N-th occurence of a weekday of the month, for example 

if i want 3rd friday of the month can be indicated as 6#3

example :
######   3rd saturday
         first should mention the 6#3 (first comes friday and 3rdfriday)
		 
		 
L (last) :: it has different meanings when used in vvarious fields, for example if it's applied in the day of the month field then it means last day of the month

to spcify last sunday it comes under like
* * * * 0L

example :
#######

15 10 * * Mon,Tue

Fire at 10:15 am on the last day of every month

15 10 L * ?

Run the schedule at 9:00 a.m. every day.

0 9 * ? *

Run the schedule every 5 seconds for 1 minute beginning at 9:00 a.m. every day.
0/5 9 * ? *



Run the schedule at 9:25 a.m. every Friday.
25 9 * ? */FRI
25 9 * * 6 

It denotes that a job will execute at 6 PM on the third to last day of every month.
0 18 L-3 * ?

It denotes that a job will execute at 10:30 AM on the last Thursday of every month.
30 10 ? * 5L

It denotes that a job will execute at 10 AM on the third Monday of every month.
0 10 ? * 1#3
0 10 ? * 1#3

It denotes that a job will execute at 12 midnight on every day for five days starting on the 10th day of the month.
0 00 10/5 * ?
It denotes that a job will execute on every November 11th at 11:11 AM
11 11 11 11 ?

Fire at 10:15 AM on every last Friday of every month during the years 2002, 2003, 2004, and 2005.
15 10 ? * 6L 2002-2005



It denotes that a job will execute on first Monday in the month at midnight.
0 0 0 ? * MON#1

It denotes that a job will execute at 8:00, 8:30, 9:00, 9:30, 10:00 and 10:30 every day.
0/30 8,9,10 * * *
 
 
 	Once every five minutes
	
	*/5 * * * *
	
	Every hour at minutes 20, 30 and 45 of the hour (Thus thrice in each hour)
	
	20,30,45 *  * * * 
	At 2:30 p.m. and 2:45 p.m. every Monday in the months January to May (1-5)
	
	30,45 14 ? JAN-MAY */1
	Every 09:00 a.m. from Monday to Friday
	
	At the 15th second of the 30th minute for every hour. E.g. 10:30:15, 11:30:15, …
	15 30 * ? * *
	
	At 10:30:25 a.m. every day in the year 2021
	
	25 30 10 * * ? 2021
	
	At 08:20 a.m. on every last Tuesday of each month for the years 2020, 2021 and 2022
	
###############################################################################################################################################################################################
ssh -- secure shell
ftp -- fire zill (file transffer protocal)

linux torlvads he is the founder of unix

Open source :
 does it mean like whatevver code is there we can customize the code as per our requirements 
AIX is a IBM product as os linux

bin / can be accessed by normal users
sbin can be accessed by root user


bin contents mkdir ls logins 
sbin contents shutdown start


etc contents
sudeors
passwd
shadow
group
cron.allow
ssh_config


opt
it's empty folder 
we use to install the third party applicatioons in this folder 


DEVICE DIRECTOR: 

-i or inode
i node means data structure it holdes the information about the file or directory

it contents file information date of the creation and size of the file 

but it does'nt content the file name or folder name 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            crontab: usage error: file name must be specified for replace
Usage:
 crontab [options] file
 crontab [options]
 crontab -n [hostname]

Options:
 -u <user>  define user
 -e         edit user's crontab
 -l         list user's crontab
 -r         delete user's crontab
 -i         prompt before deleting
 -n <host>  set host in cluster to run users' cront4abs
 -c         get host in cluster to run users' crontabs
 -s         selinux context
 -V         print version and exit
 -x <mask>  enable debugging
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     

uname options
$uname  -a
1. (uname  -a)
        -a option: It prints all the system information in the following order: Kernel name, network node hostname, kernel release date, kernel version, machine hardware name, hardware platform, operating system
2. (uname  -s)
        -s option: It prints the kernel name.
3. (uname -n)
        -n option: It prints the hostname of the network node(current computer).
4.(uname  -r)
        -r option: It prints the kernel release date.
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  5. (uname -v)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           -v option: It prints the version of the current kernel.  
6.(uname -m)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              -m option: It prints the machine hardware name.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
7. uname -p
         -p option: It prints the type of the processor
8.uname -i
        -i option: It prints the platform of the hardware.
9.uname -o
 	-o option: It prints the name of the operating system.

path to add the sudo's permission

 /etc/sudoers


find command cheatsheet : https://quickref.me/find

* it indicates evverything 
& -- run a command in the baground. it will run the PID of the newly running process to you and won't show you the output

example : sudo apt update &


&& -- it indicates to run the multiple commands 

\ allows you to continue writing commands 

\\ $ echo Hello \\ World
Hello \ World (here double bask slash is to print one single back slash)



important symbols : https://fosspost.org/linux-command-line-basics-examples/


| This is called "Piping", which is the process of redirecting the output of one command to the input of another command. Very useful and common in Linux/Unix-like systems.




umask value
############             default dir permissions file permissions 
for root user : 022        0777 			0666
			(-)0022                      (-)0022			
			--------		     --------	
			   0755			        0644	

umask value
############             default dir permissions file permissions
for normal user : 002      0777
			(-)0002                      0666
			--------		(-)  0002				
			   0775			 ----------  		
					             0664			

base file permission : 0666
		
stat test



chmod cheatshet : https://quickref.me/chmod


diffrence between sudo su - and sudo su
########################################

sudo su - it will switch to the root user and it will poin to the root user home directory and it will load the root user configuration

sudo su - it will switch to the root user and it will not point to the root user and it will not load the root user configuration

################################################################################################################################

chgrp

example command 

-rwxrwxr-x. 1 ec2-user root    0 Nov  6 07:52 inixfile.txt

[root@ip-172-31-47-2 ~]# chown -v root inixfile.txt
changed ownership of 'inixfile.txt' from ec2-user to root


-rwxrwxr-x. 1 root root    0 Nov  6 07:52 inixfile.txt


to see the all the groups
#############################

cat /etc/group/


changing the ownername and grup name at same time
##########################

chown ec2-user:ec2-user inixfile.txt

CP command 
############



Option	Description
-a	archive files
-f	force copy by removing/overriding the destination file (if already present)
-i	interactive mode override (asks before overwrite)
-l	linkes the files instead copy
-L	follows symbolic links
-n	no file overwrite, if destination file already exists
-R	recursive copy (this includes hidden files)
-u	update mode i.e copy only when source is newer than dest
-v	verbose mode i.e prints more information



mv command
#########
mv command is used to renaming the filename or directory name and to move the filename or directory




wc command
###########

Option	Description
-l	prints lines count
-c	prints byte count
-m	prints character count
-L	prints length of longest line
-w	prints word count



wc command

wc -l (howmany lines are there)
wc -w (how many words are there)
wc -m (how many characters are there)
wc -L (which is the longest line in the code)


###########################################################################################################################

to see how many lines are there in a file by vi editior 

:set number


:set nu!


##################################################################################################################################

hard link and soft link

hard link : 
###########

hard link mean we are going to create a new file if we modify in any one of them it reflect in both files 

example : 

hardlink.txt
new_hardlink.txt

ln hardlink.txt new_hardlink.txt

if we modify in both of them it will show in both of them
#################################################################



vi editor 

#############

vi -- visual instument

to search

/want to search
and n for next occurance
N for back
 ### STILL IS THERE ############

my_name="shell"
my_name_up=${my_name^^}
my_name_lo=${my_name,,}

echo "Upper data : $my_name_up"
echo "lower data : $my_name_low"
echo "my_name"


nano 
####

nano nanoedit.txt
for saving ctrl + o
for quiet Ctrl +  x


head command 
#############

head is default for 10 lines


tail 
#####

tail command is used for last 10 lines 





more 

#########

see as page 

more filename.txt

less 
####

less command is used to go back and forward

less filename.txt

CTRL + F forward
CTRL + B back

CTRL + D for middle forward

CTRL + U for middlb back


sed command
############

to the specific line number


sed -n "15p" filename,txt

to display 15th line

below command is used for to dispaly from particualr line number to particualr line number

sed -n "10,20p" filename.txt

 to relace in file


sed -i "s/red/blue/" filename.txt
sed -i "s/red/blue/1" filename.txxt



###############################################

sort command 

##############

it's used to displayy the assigning order 

example: file with a,b,c,d,e,f

we can disaply from assiging order or reverse order also

ex : sort filename.txt

it will diaply a to z

if we use sort -r filename.txxt
itwill display z-a

to make upper case

we can use one command

cat filename.txt | sort | tr [a-z] [A-Z]


load avergage means CPU


		1st 2nd   3rd
 load average: 0.00, 0.00, 0.00

 cat /proc/cpuinfo


who ami



[ec2-user@ip-172-31-47-2 ~]$ whereis sort
sort: /usr/bin/sort /usr/share/man/man1/sort.1.gz


ex : regarding to sort command binary files are avaialbe in /usr/bin/sort
ex : regarding to sort command manual page is avaiabble in /usr/share/man/man1/sort.1.gz




#################################################################################################

du - disk utilization
df - disk free


du -sh

to check disk free 
 -s summary
 - h human readable

commands

df -h (human readable)
df -T (file system type)
df -t (to specify the particular file system)
     example : df -t tmps
df -i (to display inode)
df -x (to not to display for the output)
     example: df-x tmps
#################################################################################################################################

hostname
############
to display the hostname

to display the ip
 hostname -i

[root@ip-172-31-47-2 ~]# hostname -i
172.31.47.2

###ip a ###
above command will show the all the details related to inet also like below

[root@ip-172-31-47-2 ~]# ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9001 qdisc fq_codel state UP group default qlen 1000
    link/ether 02:dc:26:ac:3e:d0 brd ff:ff:ff:ff:ff:ff
    inet 172.31.47.2/20 brd 172.31.47.255 scope global dynamic noprefixroute eth0
       valid_lft 2627sec preferred_lft 2627sec
    inet6 fe80::dc:26ff:feac:3ed0/64 scope link
       valid_lft forever preferred_lft forever
[root@ip-172-31-47-2 ~]#



###########################################################

if we want to set the hostname we can use hostname hostname.com
it will display the hostname which we mentioned above

like below

[root@ip-172-31-47-2 ~]# hostname google.com
[root@ip-172-31-47-2 ~]# hostname
google.com
[root@ip-172-31-47-2 ~]#


###########################################################################################

man command
#############

man command is for manul page about the commands

ex : man mkdir
###############################################################################################

info mkdir command
#########################

it's used to get the infomartion about the command information
##############################################################

help command
#############

it's used to get the help of the command like information

ex : mkdir --help
########################################################################################################
whatis mkdir command
#########################
whatis command for disply the short discrption
####################################################################################################
systemctl command (service)
##################

systemctl status servicename

Ref : https://access.redhat.com/sites/default/files/attachments/12052018_systemd_6.pdf

timestamp : 1 hr 18 mins (1:18)


service crond start 
service crond status 
####################################################
wildcards

? == to match the possible matching
ls file?== it should havve some character or digits after the filename
###########################################################################################################

top command 
##########
PID: It is the task's unique process ID.
USER: It shows the owner of the tasks.
PR: It is the priority of a task.
NI: The nice value of a task. A negative value means higher priority, whereas a positive value means lower priority.
VIRT: The total amount of virtual memory used by the task.
RES: The non-swapped physical memory used by a task.
SHR: The amount of shared memory used by a task.
S: The process status of a task:
D = uninterruptible sleep
I = idle
R = running
S = sleeping
T = stopped by job control signal
t = stopped by debugger during trace
Z = zombie
%CPU: The percentage of CPU usage of a task.
%MEM: The percentage of memory used by a task.
TIME+: Total CPU time the task has used since it started.
COMMAND: The command line which is used to start a task.

##########################################################


mkdir command
################

mkdir -p (to create a parent directory)
mkdir -m (to set the permissions while create a folder)
mkdir -v (verbose mode)


zip and unzip command
########################

zip wishfilename.zip sourcefolders

example : zip newzipfile existingfolder

to extract in diffrent directory
ex : unzip zipfile.zip -d /root/extractedpath
################################################################
tar command
############

c - create
v -verbose
f -file system
x - extract

####################################################

tar -cvf wishfolder.tar foldername orherefillename

tar -xvf wishfolder.tar
tar -xvf wishfolder.tar -C /path/

to view the tarfilew whhich are present in tar file

tar -tf wishfolder.tar

to add a specific file into it 

tar -rf wishfolder.tar extrafile.txt


to extract the single file or folder

tar -xvf tarfile.tar whichfolder

touch foo bar
tar cf archive.tar foo bar --transform 's,^,bazdir/,'


to create .ttar.gz

tar -czvf tarfilename.tar.gz foldername
tar -xzvf tarfilename.tar (z is added)
########################################################################################

useradd command 
###############
cat /etc/passwd
from RHL 7.
UID  starts with 1000 is common for normal user

where password is going to save

cat /etc/shadow

what is the UID for root user 

A) 0
###########
can we give the password for two user
A) yes 

useradd harsha
passwd harsha

attributes

command is chage
################

        Minimum Password Age [0]: 90
        Maximum Password Age [99999]: 90
        Last Password Change (YYYY-MM-DD) [2022-11-10]:
        Password Expiration Warning [7]: 30
        Password Inactive [-1]:
        Account Expiration Date (YYYY-MM-DD) [-1]:

######################

useradd harsha
passwd (This file stores essential information about the users on the system)
chage : it's used to set the inactive dates and expiration of the password
groupadd :  it used to create a group
  usermod -g Devops harsha (Devops is the group name and harsha is the name )
  to view the details of the group

cat /etc/group
##############

to view the how many users are there in the group below is the command
#############################

lid -g Groupname
to view the information entry related to a user below is the command

getent passwd ec2-user

we can lock the user below is the command
##########################################
usermod -L ec2-user
usermod -U ec2-user

to view a useer howmany groups he is part of 

id username
or groups username

usermod -a -G usernmae (he can part of many groups)

if we lock a person we can see ! in cat /etc/shadow
ex : newuser:!$6$zhW7

if we unlock a user we can $ symbol in cat /etc/shadow
ex : newuser:$6$zhW7JlFqg
 

Date:
11/11/2022
#############



RU --> NU -->   password not required
NU --> RU --> password is required

NU --> NU --> password is required
ec2-user --> root --> password is not required

if we try to login as only su - root (it will ask the password because we used onnly su (if we user sudo su - it will not ask for the password))

if some user get sudo access how he can add a user?
####################################################

sudo useradd newuser_1

path to give the sudo access to another user

visudo or vi /etc/sudoers (best one is visudo)


newuser ALL=(ALL) ALL

#######################################################

userdel  command
################

Ref : https://linuxcommandlibrary.com/basic/usersgroups


12/11/2022
###############

passwd -d username (it will delete the user password which is existing)

chage -E username (it will never expire the password)

usermod -e username (on particular date account will get expire)

Below command is used to switch one group to another another group

newgrp newgroupname

id : it's used to show the details about a user
###

lid -g groupname (only root user)
###################
to get the group details 
##########################
groups username (we can display how many groups he is part of )
################


userdel - it will delete the user

userdel -r username

groupdel groupname


to rename the group name 

groupmod -n newgroupname oldgroupname
usermod -l newusername oldusername


grant a sudo access to a existing user 

usermod -a -G username

add a user to existing group

usermod -aG groupname username


delete the user from a group
gpasswd -d username groupname


##############################################################################

crontab command
#################

crond.service (we can see the service)

systemctl status crond.service

to restrict the cron job we should create a file under /etc/cron.allow

if we create a mention the names over that file only those user can access the croon and alreay cron.deny file will be existing we should remove cron.deny file


crontab -l (to list the crontab details and it will display the only current user cron details)(l mean list)
crontab -e ( to edit the crontab ) (e means edit)

crontab -r ( to remove the crontab)

crontab -l -u (to display another user cron details)



crontab format 

minutes    hours   dayofthemonth    month             day of the week command    commandorpathdetails 
(0-59)      (0-23)    (1-31)      1-12 or Jan-Dec            0-6 Sun-Sat          


> it will redirect the standard output 

>> it will redirecct the append the standard outputt 

crontab -ir (it will ask for the confirmation to delete and it will delete (i mean interactive mode r means remove))

sample cronjob :
*/1 * * * * /root/harsha.sh >> /root/crontabfolder/cronjob.log 2>&1



File descriptors like below
#############################

0 -- standard input
1 -- standard output
2 -- standard error

12 AM (00)

00 0 18 1 MON
At 12:00 AM, on day 18 of the month, and on Monday, only in January

15 midnight and 11AM Morning

there are two types of cron's

1. system wide crontable path is (/etc/crontab)
2. user's specified crontab files /var/spool/cron/crontabs/username

1-7 sun-sat

0-sunday
1-monday
2-tues
3-wed
4-turs
5-friday
6-saturday

(example 5#2)


Ref : https://stackoverflow.com/questions/39328351/is-there-a-difference-between-and-in-cron-expressions-strange-example

* (“all values”)

used to select all values within a field. For example, “” in the minute field means *“every minute”.

? (“no specific value”)

useful when you need to specify something in one of the two fields in which the character is allowed, but not the other. For example, if I want my trigger to fire on a particular day of the month (say, the 10th), but don’t care what day of the week that happens to be, I would put “10” in the day-of-month field, and “?” in the day-of-week field.

/
used to specify increments. For example, “0/15” in the seconds field means “the seconds 0, 15, 30, and 45”. And “5/15” in the seconds field means “the seconds 5, 20, 35, and 50”. You can also specify ‘/’ after the ‘’ character - in this case ‘’ is equivalent to having ‘0’ before the ‘/’. ‘1/3’ in the day-of-month field means “fire every 3 days starting on the first day of the month”.

to restart the crontab
sudo service cron reload
 
 or 
 
 /etc/init.d/cron reload
 



dev/pts


L - (Last)
w - (week)


Examples

0 7,17 * * *

above one runs at 7 AM and 7 PM ( if we mention * in first field it considers as a evvery minute so we mentioned ((0)) 0 indicates at particular timestamp

examples given below


to run a job every 5 minutes
*/5 * * * *


to run a job every 3 minutes

*/3 * * * *


to run a job on particular month for every 5 minutes

*/5 * * 2,6,9 *

to run a job on 5 PM particlar day on MON and wednesday

0 17 * * MON,WED

to run a multiple tasks in same cron
* * * * * /scripts/script.sh; /scripts/scripts2


5#3 ( 3rd saturday
         first should mention the 5#3 (first comes friday and 3rdfriday

L-3 ( last to 3 day's)

1/5 ( first 1 it indicates starting day of the month / every 5 days )

to mention only on last friday 


days 
####
last five days 

we can mention L-5 in days coloum

question mark symbol will be used only on day of the month day of the week fileds 

###########################################################################################


ssh connection

to make passwordless login
we should follow below steps orelse we will get below error

 ssh ec2-user@3.110.209.85
ec2-user@3.110.209.85: Permission denied (publickey,gssapi-keyex,gssapi-with-mic).

below are the steps

we should go to the sudo vi /etc/ssh/sshd_config

it should be like below
PasswordAuthentication yes

and need to restart the service
sudo systemctl restart sshd

ssh means secure shell

scp command :
############

scp filename ec2-user@ip/HN:/temp/ ( to move the foler we should mentioon -r also like scp -r fileorfolder ec2-user@ip:path)
#######################################

to work above steps we need to do sshd things which is mentioned above
###########################################################################

below are the options
######################
-r      # transfer directory 
-v      # see the transfer details
-C      # copy files with compression
-l 800  # limit bandwith with 800
-p      # preserving the original attributes of the copied files
-P      # connection port
-q      # hidden the output
########################################

below is the command to share the file with multiple hosts

scp -v sharingfile.txt ec2-user@3.110.172.124:/home/ec2-user ec2-user@35.154.16.155:/home/ec2-user

default port number is 22

when swap memory will use?
it will be used when memory is full

if Ram size is 8 GB
your swamp memory should be 16GB

command is for to check which memory it's hard disk details 
###############################################################



free  -h
if it's on premission servers will be like ddr1 ddr2 SDRAM

to get the memory details or system details we can use below command

dmidecode -t 17

to get the virtual memory
vmstat

SMTP server details :
simple mail transfer protocal
pop3 : post office protocal (verions 3)
##################################################

cal command 

cal -3 
cal month year


################################

wget command
############

wget -O(Uppercase) customized.tar http://ftp.gnu.org/gnu/wget/wget-1.15.tar.gz

wget -P (Uppercase) /root/folder2/ https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.zip (it's used to download in particualr path)

wget -b https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.zip ( to download a file in baground and it will create a file)

wget -c  https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.zip  (it used to countiue the downloading if previous one got failed)
wget --limit-rate=1m https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.zip ( to restrict the speed basically it's for sec)

wget -m https://maven.apache.org/download.cgi ( it is used to download the complete website)

wget  --user=(put username here) --password='(put password here)' http://example.com/ 

wget --user=ec2-user --password='password123' http://example.com/ 

wget -q https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.zip (to hide the output)
wget -e robots=off http://www.example.com/



(wget -O (customized name)
(wget -P (customized path))
(wget -b (it's for run in baground)
(wget -c it's used for to download which was paused previous)
(wget -m to download the complete website)
(wget --limit-rate=1m URL)
(wget ---user=ec2-user --password='password123' URL)
(wget -q URL)

rm -rf /root/* (it will delte the all the files in current directory)



by using curl command we can call api (application interface)

diffrence betweek wget and curl


wget                                                       							       curl
#####																						################


it will support to download the software's 													it will support to dowload the software's 
it will support for limited protocal's 													    it wil suppports for all the protocal's 
wget will not support for calling API															it will support for calling API's
##########################################################################################################################################################
[command] | tee -a [filename]
mkdir folder2 | tee -a filename3.txt

above command is used for to display and store into one file

#############################################################

script command is used for like recording the all it will create default filename called typescript

script outputfile.txt

to append the output
#######################
script -a  outputfile.txt


##########################################################

ping command
##############

ping google.com
ping -c 5 google.com 

above command is used to check the connectivity

telnet (telnet google.com 20)
##########
history -c 
###########################

to check the version of redhat below is the command

cat /etc/redhat-release
cat /etc/*release ( to display the version)

redhat version 7x
lower version 7.6
###############################################################


port numbers

0-65535
0-1023 -- reserved port numbers

80 - Http
443 - https
25 - smpt
21 - ftp
ssh -  22


port number range we can use
1024- 65535

t - tcp
u - udp
n - number
l - listen
a - all

#####################################################

watch command

sudo yum install bind-utils

command to install nslookup


printenv or env to display the all the variables
printenv or env to display the all the variables

cd /root/newfolder1/newfolder2/newfolder3/newfolder4/newffolder5/;sh shellfile.sh

 mkdir -p newfolder1/newfolder2/newfolder3/newfolder4/newffolder5 && touch  newfolder1/newfolder2/newfolder3/newfolder4/newffolder5/file.txt
 
 two commands same time
 #############################################################################################################################################################










#!/bin/bash

VAR="world"
echo "Hello $VAR!" # => Hello world!
############################################
NAME="John"

echo ${NAME}    # => John (Variables)
echo $NAME      # => John (Variables)
echo "$NAME"    # => John (Variables)
echo '$NAME'    # => $NAME (Exact string)
echo "${NAME}!" # => John! (Variables)

NAME = "John"   # => Error (about space)


#####################################################################################


Comments
########
# This is an inline Bash comment.
: '
This is a
very neat comment
in bash
'

##############################################################################################

Command line arguments or positional arguments
################################################


$1 … $9	Parameter 1 ... 9
$0$0	Name of the script itself
$1	First argument
${10}	Positional parameter 10
$#	Number of arguments
$$	Process id of the shell
$*	All arguments
$@	All arguments, starting from first
$-	Current options
$_	Last argument of the previous command

example file :
############

Your Process id is : 309487
[root@ip-172-31-45-211 quickr]# cat -n commandline_arguments.sh
     1  #!/bin/bash
     2
     3  echo "The all values with \$* are : $*"
     4  for each in "$*"
     5  do
     6    echo "$each"
     7  done
     8
     9  echo "The all the values with \$@ are $@ "
    10
    11  for each in "$@"
    12  do
    13    echo "$each"
    14  done
    15
    16  echo "Here is the last current options: $_ "
    17
    18  echo "Your Process id is : $$"
[root@ip-172-31-45-211 quickr]#  ./commandline_arguments.sh 34 50 84 "Hi here is the example for command line arguments" 45 87
####################################################################################################################################



Redicrections 
  0 . STDIN
  1. STDOUT
  2. STDERR

we have some operators
 * output redirection
 * Input redirection
 * combining redirection

output redirection
###################
> (it will store the output to one file)
  ex :
     ls -lrt > output.txt
     
>> (it will store the data if data is existing also)
	 ex : 
	    ls -lrt >> output.txt

		
to store a particular output or error into a single file we can use below command

ls -lrt > success_error.txt 2>&1






		
		
##########################################################################################################################################################################################################################################################		
	
 
 
 
 
 
  cat installation.txt | grep ^Running | wc -l
 
 yum install java -y 
  yum remove java -y > java.txt | awk '{print $1}'


 
 ##########################################################################################################################################################################################################################################################
 
 
 

what is shell?

shell is a program that will take the command and communicate with the kernal 

shell is a interface between user and kernal

type of shell
###############
bash  (it's advance shell and default shell)
sh (older version)
csh
zsh
ksh
tiny


cat /etc/shells

[root@ip-172-31-13-136 ~]# cat /etc/shells
/bin/sh
/bin/bash
/usr/bin/sh
/usr/bin/bash

to install the another shell we can install like below

sudo yum install csh

what is shell scripting
#######################
shell scripting nothing but a it's simple file, which contains all the command and to make automate also

to display the current shell type
echo $SHELL
echo $0
ps -p $$
################################################################################

why do we need shel scripting
#############################

to automate the job's 
take the backup'scripting
monitoring several server resources like cpu utilization and memory utilization
portable (it can be executed in any unix like operating system without modification)


pre requisites
###################

knowledge on linux
knowledge on commands
basic programing language 


#!/bin/bash (it's called she-bang line which will execute the commands but it's not a mandatory field because default shell will read them and will execute)


how we can execute a shell
./hello.sh
sh hello.sh
bash hello.sh
csh hello.sh

to change the file permissions recurivily
chmod -R /foldername/filename.txt


to run a file in debug mode

sh -x samplefile.sh

how to run a specific lines in debug mode in shell scripting

set -x
set +x

example :
#!/bin/bash
echo "good morning"
set  -x
date
set +x

above file will run date command in debug mode

and if we run with sh -x samplefile.txt (it will run in debug mode until where we have asked to stop)

example :

#!/bin/basj
echo "sample shell scriptin"
set -x
echo "good morning"
set +x
echo "shell"
date

there is a diffrence between runing a file with sh sample.sh and sh -x  sample.txt
sh sample.sh ( it will execute the file only in required places where we have mentioned like set -x +x (it means it will get stop the debug runnning till +x and))
sh -x sample.sh (it will run a file till +x and it will run as normal)

shell scripting file naming we can give 255 characters
							################
							
it can contain alphabets and digits dots and underscore


system command names and linux server words can not be used for naming

ex:
harsha.sh
Harsha.sh
harsha_01.sh
harsha05.sh


we can run a file without .sh also

comments 
#######
single line comments (#)
multi line comments

ways to comment the script

<<comment
 "Code" or "Comments"
comment

: '

Code or Comment here
 '
 
 without execute permission also it will run 
 
 sh sample.sh
 it is running throguh sh shell 
 
 
 variables
 #########
 
 initilization :
 #############
 creating a values and assining
 example 
 
 int a = 1;
 int b = 2;
 int c; -- declaration variables 
 
  
  there are two types of variables
  1. system defined variables (bash shell) (env or printenv)
  2. user defined variables 
  
  
  variable will be in left side
  value will be in right side
  
  HISTSIZE=1000
  
  source ~/.bash_profile (to reload the default values of system defind variables)
  
  how we can defind the variables 
  ##################################
  
  typees of it 
  
 HISTSIZE=-1 HISTFILESIZE=-1 (to make history size unlimited)
 to make history size for some limit
 
 export HISTSIZE=2000
 
 2 . user defined variables 
  example :
  a=10
  b=20
  name="this is harsha"
  
  echo $a
  echo $b
  echo $name
  
	camelcase meaning first letter should be a uppercase should'nt be uppercase next words
	 
	 
a=10
b=20
name="this is harsha"
#echo the first line a variabble value is $a
#a=30
echo The a variable value is : $a
echo The b variable value is: $b
echo The name variable value is : $name
date



there is a diffrence between using $ and using ${} in variables
###############################################################

the diffrence beween using $ symbol we can'nt spacify the word without space like below

with only $ 


#!/bin/bash
NAME="Harsha"
SPORT="Foot"
echo "The most popular sport is $SPORTball"


output : The most popular sport is we can't specify ball along with foot 

with ${}
#!/bin/bash
NAME="Harsha"
SPORT="Foot"
echo "The most popular sport is ${SPORT}ball"


output : The most popular sport is Football

with ''
#######

it will display along with $


if we specify like without providing the varrible and values and providing the echo command it will give like blank

ex :
a=10
echo "first line $a"
echo "second line $b"
b=20

arguments values both are same












on above example it will take a valuue which is next to it
	 

what is command line arguments?
while executing the script passing the value to command promt called command line arguments we can called it as positional parameters in Linux also
 
 
 single quotes '' : if we use single quotes then variable substitution won't be happend.
###################

 command substitution :
########################

execute command ans substitute it's results 
old style `commmand`
back quotes ``
new style : $(it's called paralasis command)

eg:to display command

##########################################################################################
command line arguments :
############################
while executinng the script passing the values in command promt  called command line arguments 

 
echo $0 (gives scriptt name)
echo $1 (gives first argument)
echo $2 (gives second argument)
echo $3 (gives thrid argument)

if we pass more than one number it's going to consider as $1 example (sh dbbackup.sh dbname /opt/ (here dbbackup name is the scriptname dbname is the first argument /opt/ is the second argument it should not be the duplicates ))

to get the particular more than 1 number we should use ${11}
arguments and values both are same


echo $# (it gives the number of arguments)
echo $* (it gives the all the arguments it gives all tthe arguent in one string)
echo $@  (it also gives the all the arguments it gives each argument is  in one string)
echo $$ (it gives the process id(PID))
echo ($? it gives the either command is success or not like exit status )
            0 - success 
			127- standard error code  for command not found
			1 - catchall for general errors
			2 - misuse of shell builtins (according to bash documentation)
			126 - command invoked cannot executte
			128 - invalid argument to exit command
			128+n - Fatal error sign "n"
			130 - bash scripting exit by control-C
			255* exit status out of range
			
			
ex : 

echo "C L args demo"
echo $0 
echo $1
echo $2
echo $3
echo ${11}
echo $#
echo $*
echo $@
echo $$
date
echo $?

			
			positional arguments or command line arguments both are same+



	diffrence between $* and $@
Diffrence will come in to picture only when we use in quotes
example
"$* = "$1 IFS $2 IFS $3 IFS"
"$@" = "$1" "$2 "$3"


   a value and b value

eq == (equal to)   10 ==10 (it should get the equal number a should be having the same number and b should be having the same number )
###################################################################################################################################

[root@ip-172-31-45-211 ~]# cat lessthan.sh
#!/bin/bash

echo "Enter first value : "

read a

echo "Enter second value : "

read b

if [ $a -eq $b ]

then
   echo "the statment become is true"
else

   echo "the statment become false"
fi

[root@ip-172-31-45-211 ~]# ./lessthan.sh
Enter first value :
50
Enter second value :
50
the statment become is true
[root@ip-172-31-45-211 ~]#




########################################################################################################################################## 
lt < ( less than) a value should be less than b value like a should be having 10 value b should be having 20 here 10 is less means a b should be having 20 here b value is higher than a value)

ex : 

the statment become false
[root@ip-172-31-45-211 ~]# cat lessthan.sh
#!/bin/bash

echo "Enter first value : "

read a

echo "Enter second value : "

read b

if [ $a -lt $b ]

then
   echo "the statment become is true"
else

   echo "the statment become false"
fi

[root@ip-172-31-45-211 ~]# ./lessthan.sh
Enter first value :
10
Enter second value :
20
the statment become is true
[root@ip-172-31-45-211 ~]#
##################################################################################################################################################################
  
le <= (Less than or equa) 10 < 50 ( left side value should be less and right side value is more ) (it should be having a value and b value is same or less than right value b should be a more number )
##########################################################################################

[root@ip-172-31-45-211 ~]# ./lessthan.sh
Enter first value :
10
Enter second value :
10
the statment become is true
[root@ip-172-31-45-211 ~]# cat lessthan.sh
#!/bin/bash

echo "Enter first value : "

read a

echo "Enter second value : "

read b

if [ $a -le $b ]

then
   echo "the statment become is true"
else

   echo "the statment become false"
fi

[root@ip-172-31-45-211 ~]#





########################################################################################################################################################
gt > (greater than) (left side value should be big value than the b value example right side value is 10 left side value should be 20)
########################

[root@ip-172-31-45-211 ~]# ./lessthan.sh
Enter first value :
10
Enter second value :
9
the statment become is true
[root@ip-172-31-45-211 ~]# cat lessthan.sh
#!/bin/bash

echo "Enter first value : "

read a

echo "Enter second value : "

read b

if [ $a -gt $b ]

then
   echo "the statment become is true"
else

   echo "the statment become false"
fi

[root@ip-172-31-45-211 ~]#
########################################################################################################################################################
ge >= (Greater than or equal)	same it should get same value a value b value should be the same or equal
#########################################

[root@ip-172-31-45-211 ~]# ./lessthan.sh
Enter first value :
50
Enter second value :
50
the statment become false
[root@ip-172-31-45-211 ~]# vi lessthan.sh
[root@ip-172-31-45-211 ~]# ./lessthan.sh
Enter first value :
50
Enter second value :
50
the statment become is true
[root@ip-172-31-45-211 ~]# cat lessthan.sh
#!/bin/bash

echo "Enter first value : "

read a

echo "Enter second value : "

read b

if [ $a -ge $b ]

then
   echo "the statment become is true"
else

   echo "the statment become false"
fi

[root@ip-172-31-45-211 ~]#
###################################################################################################################################


ne != (Not equal) (it should not be not equal)

#############################
[root@ip-172-31-45-211 ~]# ./lessthan.sh
Enter first value :
50
Enter second value :
20
the statment become is true
[root@ip-172-31-45-211 ~]# cat lessthan.sh
#!/bin/bash

echo "Enter first value : "

read a

echo "Enter second value : "

read b

if [ $a -ne $b ]

then
   echo "the statment become is true"
else

   echo "the statment become false"
fi

[root@ip-172-31-45-211 ~]#
###################################################################################################### 
we can use any one of them either alphabets or symbols

fi means closing the conditions
 

string meaning :
################

set of characters / group of characters enclosed in a single ot double quotes.

name="harsha"
location='Bangalore' 



 

 
, and space consider as a one character 

to ignore the string (means a characters)

we can use below commmand`

echo ${variablename:10} shell scripting (if we mention :10 it's going to display after 11th character)

to see variable legnth we can use like below

echo ${#variablename} 

if we keep like below ${variablename#value} (if we write like #andmention like variablevalue that will be commented in output) if value not matched output will be the same  


echo ${variablename:10:5} it will display first 5 letters 

echo ${variablename (-5)} it will display last five letters 

echo ${variablename 0:2} it will display first two letters 



######################################################################################

arithmatic operations 
#########################

+ adition
- substract
* multiplication (we have to use \ character for multiplication)
/ division
% modulus   it works like 20x10
= assingment
== equality

!= not equality

‘ ‘,


examples for modules ( or remainder )

#!/bin/bash

# Example 1: find the remainder when 14 is divided by 3
num1=14
num2=3
result=$((num1 % num2))
echo "The remainder when $num1 is divided by $num2 is $result."

# Example 2: find the remainder when 27 is divided by 4
num1=27
num2=4
result=$((num1 % num2))
echo "The remainder when $num1 is divided by $num2 is $result."

# Example 3: find the remainder when 39 is divided by 6
num1=39
num2=6
result=$((num1 % num2))
echo "The remainder when $num1 is divided by $num2 is $result."

output : 

The remainder when 14 is divided by 3 is 2.
The remainder when 27 is divided by 4 is 3.
The remainder when 39 is divided by 6 is 3.



ex :

expr 2 + 3
expr 2 -3 
expr 2 \* 3
expr 10 /2 
expr 20 % 3


why do we use inverted commas

below is the example
ex:

echo "The addition of 2 and 3 is : expr 2 + 3 (without invertted commas)
output : 
     the addition of 2 and 3 is : expr 2 + 3 

with inverted commas
output for above input
echo "The addition of 2 and 3 is : `expr 2 + 3`
         out put   
		 The addtion of 2 and 3 is : 5
		 
    the addition 	
	 
, command
' single quotes
""  Double quotes
` inverted comma



= assigning the value of right operand in left operand 

ex : a =$b (assigning the value of b value to a)
			it will assinningn the b value to a 
			
== (equality and equality )
to compare the each value is same or not
$a == $b it should get match with a b with same vlaue comparing the values of a and b value


!= (not equal)
(compare two numbers if both are diffrent the  return )
if not equal we can add another values to it


relational operators :
-eq (if checks for the value is equal or not if yes then condition becomes true0)
- ne (it checks for the two operands are not equal or notif values are not eqal condition becomes true)
-gt (greater than it check the values of left operand is greater than the values of right operand ; if yes condition becomes true)

-lt (less than it checks for the values is less than to right operand right operand should more than the left side value <)
 if right hand side value is more than condition becomes true
-ge ( it checks for the value is greater than or not it means left side value should be more)


in arthamatic value both are same

`expr  $a + $b`


or

echo $(( a + b )) 
when we are using expr multiplecation becomes like \*

what is expr ?

expression


boolean operators
#################
! negation
-o or
-a and 

above or the logical operators 


	 
##########################################
string operators
################

=

!=

-z 

-n 

str

##########################################################################################
if elif else

if condition
then 
  statement
  statement
elif condition
then 
   statement 
   statement
else
   statement
fi
#####################################
echo "Enter a number"
read a
echo "Enter a number"
read b
if [ $a -eq $b ]
then
echo "a value is equal to b value"
elif [ $a -gt $b ]
then
echo " $a is greater than $b"
else
echo $a is less than $b
fi   

#################################################################################################################################################

what is an array? (scara)

array is a collections of variables


read  -a (it means it is an array it will store the values as a index like 0 1 2 3 4 5 6 )

[root@ip-172-31-45-211 ~]# cat readcommands3.sh
echo "Please enter the tools"

read -a tools

echo "the tools which you have type is " ${tools[*]}
echo "the 4th elment is :" ${tools[3]}
[root@ip-172-31-45-211 ~]# ./readcommands3.sh
Please enter the tools
1 2 3 4 5 6 7 8 9
the tools which you have type is  1 2 3 4 5 6 7 8 9
the 4th elment is : 4
[root@ip-172-31-45-211 ~]#


in above example we have entered from 1 to 9 and we havve metnioned 3 [3] because array considering from 0 and if we want all the arry's to display we have to use [*]

REPLY IS THE DEFAULT VARIABLE FOR READ COMMAND if we are not specifying any  to the read command that's goinng to take it as variable for read command

	 
to silence the password while typing we can use -s 



#!/bin/bash
NAME[0]="orange"
NAME[1]="apple"
NAME[2]="Grape"
echo "First index : ${NAME[0]}"
echo "Second index : ${NAME[1]}"
echo "third index : ${NAME[2]}"



######################################################
[root@ip-172-31-45-211 ~]# cat readcommands5.sh
read -p "User name which you have entered is :" username
read -sp "password name which you have entered is :" password
echo ""
echo "the username which you have entered is :" $username
echo "the password which you have entered is :" $password

[root@ip-172-31-45-211 ~]#
#############################################################################
using "" it will display whatever we have entered after the input


itrationn means repeating

it is the repetition of a process within a bash script. For example, you can run UNIX command or task 5 times or read and process list of files using a for loop. A for loop can be used at a shell prompt or within a shell script itself


 
	 

#################################################################################################################################################






#shell script to find average of n numbers
  
echo "Enter Size(N)"
read N

i=1
sum=0

echo "Enter Numbers"
while [ $i -le $N ]
do
  read num               #get number
  sum=$((sum + num))     #sum+=num
  i=$((i + 1))
done

avg=$(echo $sum / $N | bc -l)
####################################################################### 
var1=kiran
var2=harsha
echo "Please enter name"
read name
if [ $var1 ]; then
echo "hero is kiran"

else

 echo "harsha is"
fi
#################################################################

case_shell

#!/bin/bash
echo "Which color do you like best?"

echo "1 - Blue"
echo "2 - Red"
echo "3 - Yellow"
echo "4 - Green"
echo "5 - Orange"
read colour;
case $colour in
1) echo "Blue is a primary color.";;
2) echo "Red is primary color.";;
3) echo "Yellow is a primary color.";;
4) echo "Green is a secondary color.";;
5) echo "Orange is a secondary color.";;
*) echo "This color is not avaiable. Please choose a difffrent one.";;
esac

###########################################################################################

case command script


#!/bin/bash

#var1=1

echo "Enter a number"

read Number

case $Number in

1)
 echo "$Number  number ";;
2)
  echo "$Number number ";;
3)
  echo "$Number number ";;

*)

  echo "Not either 1 or 2 and 3";;

esac


##or##

#bin/bash
var1=1

case $var1 in

1)

echo "Number 1";;
2)
echo "Number 2";;
3)
echo "Number 3";;

*)

echo "Not in 1-2-3 "

esac
####################################################################################################################################
#!/bin/bash

echo "Enter a character:\c"

read var
case $var in

[a-z])

echo "You have entered a lower case alphabet.";;
[A-Z])

echo "You have entered a uppercase.";;

[0-9])
echo "You havve entered a numeric number";;

?)
echo "you have entered a special character";;

[a-z])
echo "you have entered lower and upper";;

[a-z]* | [A-Z]*)

echo "You have entered both";;

*)
echo "you have entered a more than one characters";;

esac

########################################################################################################################################################################
https://www.youtube.com/watch?v=pyhzv8XZnww&list=PL7B7FA4E693D8E790&index=38

[root@ip-172-31-45-211 shellscript]# cat case1.sh
#!/bin/bash

echo "Enter value for a : "

read a
echo "Enter value for b : "
read b

echo Enter add - Addition, dif subtraction
read choice

case $choice in

add) echo Addition of $a and $b is $( expr $a + $b );;
dif) echo diffrence between $a and b is $( expr $a - $b );;
*) echo Enter either 1 or 2 ;;

esac
[root@ip-172-31-45-211 shellscript]#


#################################################################################################################

[root@ip-172-31-45-211 shellscript]# cat case2.sh
#!/bin/bash

echo "Enter value for a :"
read a
echo "Enter value for b :"
read b
echo enter $(expr $a + 1) for addition and $(expr $b + 1) for diffrence
read choice

case $choice in

$(expr $a + 1)) echo addition of $a and $b is $(expr $a + $b);;
$(expr $b + 1)) echo diffrence between $a and $b is $(expr $a - $b);;

*) echo enter either 1 or 2

esac
[root@ip-172-31-45-211 shellscript]#
####################################################################################################
[root@ip-172-31-45-211 shellscript]# cat  matchecases.sh
#!/bin/bash

echo "Enter a word:\c"
read word
case $word in

[aeiou]* | [AEIOU]*)
echo "you have entered in between aeiou";;

#echo "you have entered $word"


???)

echo "you have entered three digits";;

*)

echo "You have entered something else called $word ";;

esac

#echo you have entered is $word
[root@ip-172-31-45-211 shellscript]#
##########################################################################################################




we should use either () or `` for expr

###################################################################################################################

#!/bin/bash

case $1 in

"directory")
 find /etc -maxdepth 1 -type d ;;
"link")
 find /etc -maxdepth 1 -type l ;;
"file")
 find /etc -maxdepth 1 -type f ;;
*)
echo "usage : $0 file | file | directory | link";;

esac

#################################################################

[root@ip-172-31-45-211 shellscript]# cat case_df_hk.sh
#!/bin/bash
#SPACE=$(df -h | awk '{ print $5 }' | grep -v use | sort -n | tail -1 | cut -d %-f1 )
case $1 in
[1-6]* | ?)
  MESSAGE="All is quiet"
  ;;
[7-8]?)
  MESSAGE="start thinking about cleaning out some stuff. There's a partition $SPACE % full."
  ;;
9[0-8])

  MESSAGE="better hurrry with that new disk $SPACE"
  ;;

99)
  MESSAGE=" i'm drowning here ! there's a partition at $SPACE % !"
  ;;

*)
  MESSAGGE="I seem to be running with an nonexistent amount of disk $SPACE .."
  ;;
esac

[root@ip-172-31-45-211 shellscript]#



###################################################################################################################

samplefile with quotes

#!/bin/bash
echo 'Hello shellscripting programe'
WORD='scriptf'
echo "This is a shell $WORD"

we can defind like below also

echo "this is a shell ${WORD}"


or 

echo "this is shell ${WORD}"
1. variables
2. command line arguments

there is a diffrence betweek command substrution and variable substrution

# Test for number of argument

if [ "$#" -eq 0 ] ; 
then
  echo -e "No argument."
  echo -e "Write a number between 1 and 12."
  exit 1
elif [ "$#" -gt 1 ] ;
then
  echo -e "More than 1 argument."
  echo -e "Write a number between 1 and 12."
  exit 1
else
  numb=$1
  case "$numb" in
    1) echo "Month: January";;
    2) echo "Month: February";;
    3) echo "Month: March";;
    4) echo "Month: April";;
    5) echo "Month: May";;
    6) echo "Month: June";;
    7) echo "Month: July";;
    8) echo "Month: August";;
    9) echo "Month: September";;
   10) echo "Month: October";;
   11) echo "Month: November";;
   12) echo "Month: December";;
    *) echo -e "You wrote a wrong number. Try again with writing number between 1 and 12.";;
  esac
fi
exit 2
exit 0

to see variable legnth we can use like below

echo ${#variablename}



arthimatic opeations 
######################

+ addition
- subtraction
* multiplication
/ division
% modulus
= assignment
== equality
!= not equality


[root@ip-172-31-45-211 ~]# cat 1_arthamatic.sh
#!/bin/bash

echo "Enter the first number: "

read a

echo "Enter the second number : "

read b

echo "Addition of the above to numbers is `expr $a + $b`"
echo "the value of substraccion number is `expr $a - $b`"
echo "multiplication of both the above number `expr $a \* $b`"
echo "division of the above number is `expr $a / $b`"
echo "the above modulus values is `expr $a % $b`"
echo "the equality of the above value is `expr $a = $b`"

#`expr $a == $b`
echo "both values are not same of $a $b"


###############################################################################################################

[root@ip-172-31-45-211 ~]# cat 2_arthamatic.sh
#!/bin/bash
number1=10
number2=20

echo $((number1 + number2))
echo $((number1 - number2))
echo $((number1 * number2))
echo $((number1 / number2))
echo $((number1 % number2))

[root@ip-172-31-45-211 ~]

########################################################################################################################

[root@ip-172-31-45-211 ~]# cat 3_arthamatic.sh
#!/bin/bash

echo "Enter two numbers"
read a
read b
c=`expr $a % $b`

echo "additional value is : $c "
[root@ip-172-31-45-211 ~]#

####################################################################################################################
[root@ip-172-31-45-211 ~]# cat 3_arthamatic.sh
#!/bin/bash

echo "Enter two numbers"
read a
read b
c=`expr $a % $b`

echo "additional value is : $c "
[root@ip-172-31-45-211 ~]# cat relational_operand.sh
#!/bin/bash

<<comments
echo "first number"
read a
echo "second number"
read b
if [ $a -eq $b ]
 then
     echo "both values are equal"
else
     echo "both values are not equal"
fi
comments
echo "Hi"
[root@

#############################################################################################################################

[root@ip-172-31-45-211 ~]# cat 2_relational_operand.sh
#!/bin/bash

# -eq or == equal to
# -ne or != not equal to

v1=5
v2=6

if [ $v1 -eq $v2 ]
then
echo "in the IF clause"
#do some statement
elif [ $v1 -ne $v2 ]
then
echo "in the else if clause"
#do another statement
#echo "in the else clause"
fi
[



#!/bin/sh

a=10
b=20

val=`expr $a + $b`
echo "a + b : $val"

val=`expr $a - $b`
echo "a - b : $val"

val=`expr $a \* $b`
echo "a * b : $val"

val=`expr $b / $a`
echo "b / a : $val"

val=`expr $b % $a`
echo "b % a : $val"

if [ $a == $b ]
then
   echo "a is equal to b"
fi

if [ $a != $b ]
then
   echo "a is not equal to b"
fi
#############################################################
[root@ip-172-31-45-211 ~]# cat 2_bigarthamatic.sh
#!/bin/bash
a=10
b=20

Val=`expr  $a + $b`   val=`expr $a + $b`
echo "a + b : $val"    echo "a + b : $val"

val=`expr $a - $b`
echo "a -b : $val"

vale=`expr $a \* $b`
echo "a * b $val"

val=`expr $a % $b`
echo "a % b $val"

val=`expr $a / $b`
echo "a / b $val"

if [ $a == $b ]
then
  echo "condition become true"
else
  echo "condition become false"
fi



######################################################################
Arithmetic Operators + -
Relational Operators -eq -nt
Boolean Operators -o -a
String Operator 
File Test Operators

^^ we use to make upper case



above need to get 
###################################################################################################################


#!/bin/bash

read -p "Please enter a string :"
echo "values you have entered is $REPLY" (here REPLY is default variable for read command)

read -p "Please enter a value :" $variable1
echo "the value you have entered is $variable1



utilities means commands

process : 

whatever kernel is doing which we asked to do that's going to create a one process that's called as process


how output will be distributed in shell if two persons login's to the same server
shell is goingg to determine from which shell this response is coming than that's going to give the output

38:14

what is variable?

variable is nothing but the place where values will be stored

PPID
####

parent process id

[ec2-user@ip-172-31-45-211 ~]$ ps -f
UID          PID    PPID  C STIME TTY          TIME CMD
ec2-user  284056  284055  0 03:54 pts/0    00:00:00 -bash
ec2-user  284115  284056  0 03:57 pts/0    00:00:00 ps -f
[ec2-user@ip-172-31-45-211 ~]$


frrom PID process will get createdd like above



export commmand

it will export the variables from parent process to child process


from child to parent it's not possible



 cat /dev/pts/0


\ (back slash)

if we want to print the same exact value we have to user back slach \ like below
[root@ip-172-31-45-211 shellscript]# cat file.sh
#!/bin/bash

name="harsha"
var1="10"

echo "\$name = $name"
echo "$var1 = $var1"
[root@ip-172-31-45-211 shellscript]# ./file.sh
$name = harsha
10 = 10
[root@ip-172-31-45-211 shellscript]#


arthamatic operator

#systax: `expr val11 <operator> val12`

#!/bin/bash
val1=30
val2=20

add=`expr $val1 + $val2`
echo "add value : $add"

sub=`expr $val1 - $val2`
echo "sub value : $sub"

#negate * with \ #
mul=`expr $val1 \* $val2`
echo "Mult value is $mul"


div=`expr $val1 / $val2`
echo "div value is : $div"

modv=`expr $val1 % $val2`
echo "Mod value is : $modv"

var3=`expr $val1 = $val2`
echo "var3 value : $var3"

noteq=`expr $val1 != $val2`
echo "not equal $noteq"


to get the average value
#!/bin/bash

var1=1
var2=2
var3=3

sum=`expr $var1 + $var2 + $var3`
avg=`expr $sum / 3`
echo "the average of $var1, $var2, $var3 is : $avg"
#############################################################################################################

Decision making

we should always [ ] for if else statements 


elif
####

if [ $a = $b ];then
echo "a equal to b"
elif [ $a -nq $b ];then
echo " a is not equal to b"
else
"both are non-zero"
fi
 
 
34:36 

Pending https://phoenixnap.com/kb/bash-case-statement#:~:text=The%20bash%20case%20statement%20is,readable%20than%20nested%20if%20statements.



#############################################################################################################

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

# Underline
UBlack='\033[4;30m'       # Black
URed='\033[4;31m'         # Red
UGreen='\033[4;32m'       # Green
UYellow='\033[4;33m'      # Yellow
UBlue='\033[4;34m'        # Blue
UPurple='\033[4;35m'      # Purple
UCyan='\033[4;36m'        # Cyan
UWhite='\033[4;37m'       # White

# Background
On_Black='\033[40m'       # Black
On_Red='\033[41m'         # Red
On_Green='\033[42m'       # Green
On_Yellow='\033[43m'      # Yellow
On_Blue='\033[44m'        # Blue
On_Purple='\033[45m'      # Purple
On_Cyan='\033[46m'        # Cyan
On_White='\033[47m'       # White

# High Intensity
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White

# Bold High Intensity
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White

# High Intensity backgrounds
On_IBlack='\033[0;100m'   # Black
On_IRed='\033[0;101m'     # Red
On_IGreen='\033[0;102m'   # Green
On_IYellow='\033[0;103m'  # Yellow
On_IBlue='\033[0;104m'    # Blue
On_IPurple='\033[0;105m'  # Purple
On_ICyan='\033[0;106m'    # Cyan
On_IWhite='\033[0;107m'   # White

#############################################################################################################







> file_name defualts to success output
1>file_name  success output
2>file_name  error output

1>file_name  2>file_name    both will store into a single file 
1>file_name  2>&1
&>file_name


 httpd -v | grep "version" | awk '{print $3}' | cut -d "/" -f 2 && httpd -v | grep  "built" | cut -d " " -f 5-7
 
 
 
 
 awk [options] '[selection_criteria] {action}' input-file
 ##############################################################
 in above selection criteria is an optional
 
 there is a awk seperate scripting langue for this same it's like a bash scripting
 ##########################################################################
 
 awk -F '[selection_criteria]{action}' inputfile 
 
 cat inputfile.txt | awk [options] '{selection_criteria} {action}' inputfile.txt
 
 
 -F ( to specify a filed seperator.(Default seperator is tab and space))
 -f To specity a file that contains awk script
 -v var=value to declare a variable.
 
 selection criteria: pattern/condition 	
 
 
 rows and records both are same
 
 colums means fileds
 
  awk -F "[ ]" 'NR==1 {print $2,$3}' grep.sh
  
  in awk tab is a space
  
  
######################################################################################################################

awk '{print $1}' demo.txt


awk '{print NR}' demo.txt (it will display how many lines )

awk '{print NR, $0}' demo.txt (it will dispaly all the fields and lines with line numbers)
awk '{print NR, $0,NF}' demo.txt (it will display how many fields are there by using NF)

NR means number of records
NF number of fields


if we use $NF we will get last record last field 


awk '{print NR,$NF}' demo.txt 



######################################################################################################################



Delimeter


:wq

w


cut -c 1-5 outputfile.txt (it ill print the lines from 1 to 5 th)


filed seperater means billimeater

cut -d ":" -f 1,4 /etc/passwd --output-delimiter=" "

in above example -d is delimiter seperater hich is e need to remove 

 httpd -v | grep -i version | cut -d '/' -f 2 | cut -d ' ' -f 1
 
  grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" ipaddress.txt
  cut -d " " -f 1-2 cut_command.sh --output-delimiter="|"
  
  cut -d " " -f 1-8 cut_command_2.sh --output-delimiter=","
  
  #########################################################
  
  cut command is to extact parts of each line from a file 
it's based on below parameters


		* Byte position
		* character position
		* filed based on delimiter (by default delimiter is the tab)
		
		
		character is represented with 4 bites
in utf 1 byte is represed with on character 
		
if we want to work with cut command fields should seperated by tab 

field seperator means delimiter 
#########################################################################################################################
		[root@ip-172-31-43-228 cut_command]# cut -d " " -sf 1 cut_command.sh it will surpress the default tab 
this
this
[root@ip-172-31-43-228 cut_command]#

httpd_version=$(httpd -v | grep -E "version" | cut -d "/" -f 2 | cut -d " " -f 1 ) | echo "$httpd_version"

[root@ip-172-31-43-228 cut_command]# httpd -v | grep -E "version" | cut -d "/" -f 2 | cut -d " " -f 1 && httpd -v | grep -E "built" | cut -d " " -f 8
2.4.53
00:00:00
[root@ip-172-31-43-228 cut_command]#

#########################################################################################################################


		
		
	to display the message we can use like below





Syntax of echo command:
 echo [-enE] “[arguments]”
 When the -n option is used, the trailing newline is suppressed.
 When the -e options is given, then the following backslash-escaped characters will 
 be interpreted/executed.
 \n : This option creates new line from where it is used
 \b : This option is used to remove one space back from where it is used.
 \t : This option is used to create horizontal tab spaces
 \v : This option is used to create vertical tab spaces
 \a : This option is used to create a sound alert.
 \r : This options is used for carriage return
 \c: Suppress any further output
 \ \ : Escapes or eliminate the special purpose of your escaped characters.
 The -E option disables the interpretation of the escape characters. This is the 
default.
Learn how to automate common tasks using bash 
 echo -e “\033[0;31m This is in red”
 
 


















echo "Hi welcome to shell programing language"

to execute a commands we can define like below
echo "$(ls)" (we can call it as parenthesis)
#########################################################
echo -n is to display the message continoue like below




there are few options for echo commands
########################################

syntax off echo command :

* echo [ -enE] "[arguments]"

  1.when the -n option is used, the travelling new line surpressed 
  2. when the optiion -e given, the following backslash-escaped characters will be interpretter/executed
    


	__ \n ( when we use \n a new line will start from where it's used)
	ex : 
	
	#!/bin/bash

echo -e "This is first line \nThis is second line"


output :
########



   
  \b
  
  it wll remove the one word left side word when we replace this \b example
  





  [root@ip-172-31-45-211 tutorialpoint]# ./oneline_echo_command.sh
This is first line
This is second line
[root@ip-172-31-45-211 tutorialpoint]#

    
	
	\n : when we use -n from there it will start a new line like below
	 ex :
	there are two thing for \n 
	if we replace -n it will contioue the next line with a one line
	ex : 
	
	[root@ip-172-31-45-211 tutorialpoint]# cat -n echo_commands.sh
     1  #!/usr/bin/bash
     2
     3  echo -n "This is a simple message"
     4
     5  echo "Current user name is $USER"
     6
     7  echo "Current time is "$(date)""
[root@ip-172-31-45-211 tutorialpoint]#



output :
########
[root@ip-172-31-45-211 tutorialpoint]# ./echo_commands.sh
This is a simple messageCurrent user name is root
Current time is Mon Dec 19 04:54:52 AM UTC 2022
[root@ip-172-31-45-211 tutorialpoint]#


###############################################


echo command with option -t

this t option is used to create a  horizontal tab spaces from where we mention


Ex :


This is second line
[root@ip-172-31-45-211 tutorialpoint]# cat -n option_t.sh
     1  #!/bin/bash
     2
     3
     4  echo -e "This is first \tline\nThis is second line"

Output :
#######
[root@ip-172-31-45-211 tutorialpoint]# ./option_t.sh
This is first   line
This is second line
[root@ip-172-31-45-211 tutorialpoint]#
#################################################################

echo command with option v

when we use option -v in variable value or somewhere that creates a veritical tab space 

ex :

[root@ip-172-31-45-211 tutorialpoint]# cat option_v.sh
#!/bin/bash


echo -e "This is first \vline"
echo -e "This is second \vline"
[root@ip-172-31-45-211 tutorialpoint]#



output :
######

[root@ip-172-31-45-211 tutorialpoint]# ./option_v.sh
This is first
              line
This is second
               line
[root@ip-172-31-45-211 tutorialpoint]#

######################################################


echo command with optiion a
################################


when we use option -a 

that creates a sound

ex :

[root@ip-172-31-45-211 tutorialpoint]# cat option_a.sh
#!/bin/bash


echo -e "This is first \aline"
echo -e "This is second \aline"
[root@ip-172-31-45-211 tutorialpoint]#


output :
######
[root@ip-172-31-45-211 tutorialpoint]# ./option_a.sh
This is first line
This is second line
[root@ip-172-31-45-211 tutorialpoint]#


####################################################################

echo command with option -r
##########################

when we use echo command with option -r



ex : 

echo -e hello\rHi

it will dispaly like 

Hillo

because when we mention \r it replace the custor point from there and that try to wrtite the data from there and it will display if there is a data after the cusor from the after the cusror that will replace the data

for reference just refer the the example

##################################################################################

echo command with option -c 

it will compress the output from where it's started


ex:


echo -e "Hello this is shell scripting \n\cecho command with an options"



output :
#######

[root@ip-172-31-45-211 tutorialpoint]# echo -e "Hello this is shell scripting \n\cecho command with an options"
Hello this is shell scripting
[root@ip-172-31-45-211 tutorialpoint]#




##########################################################################################

\\ if we use any option in the echo command that will esacpe it's also like a comment 

ex : 

without \\

[root@ip-172-31-45-211 tutorialpoint]# echo -e "Hello \nHi"
Hello
Hi
[root@ip-172-31-45-211 tutorialpoint]#


with \\
########

[root@ip-172-31-45-211 tutorialpoint]# echo -e "Hello \\\nHi"
Hello \nHi
[root@ip-172-31-45-211 tutorialpoint]#
#########################################################################


echo command with Uppercase Option -E





echo -eE "Hi \nThis is shell"

it will display same so option E is to normal display like \\

output :
########

Hi \n This is shell
because of -E











	
	
	
	
	
	
	
	
	
	
	
	
[root@ip-172-31-45-211 tutorialpoint]# cat echo_commands.sh
#!/usr/bin/bash

echo -n "This is a simple message"

echo "Current user name is $USER"
[root@ip-172-31-45-211 tutorialpoint]#

output :
########
This is a simple messageCurrent user name is root

echo -e and with \b option

example :
########

#!/bin/bash

echo -e "This is a first lines\b and this is second lines to this"



output : 
#######

[root@ip-172-31-45-211 tutorialpoint]# ./echo_with_b.sh
This is a first line and this is second lines to this
[root@ip-172-31-45-211 tutorialpoint]#

in above output s was removed insead of lines we could see only line and when we use only -e 











#########################################################Next page #########################################




grep command is to search the string in a file


grep [options] "string/pattern" file/files

- i (ignoring the case)     ---- ignoring case 
- w ( to match a exact word) ------- to match exact word
- v ( to display the lines which are not having given string or text) ----------------- to dispaly which are not haviing 
- o ( this option to dispaly only matches lines to print /display only matches parts from matches lines ) --------------------- to print only pattern as lines 

- n ( to display the matches ine numbers it will list with line number) -- to dispaly with line number 
- c ( to count howmany lines particular string is matched ) to display matches number of lines ------------------------ to dispaly with count

- A (it will display after the one line if string is matches ) --------------------------------------- after a match one line will display

- B same like above option but it's for before a string matches  ------------------------------------  before a match one line will dispaly
- C is to match before 1 line and after a 1 line ----------------------------------------------------- it's for after one line before one it will display
- r to match a string in subdirectories also
- l to display from wherever string is matches ------------------------ it will print along with file names

- h ( to hide the file names and print only content) ------------- it wll display only content not file names 



ex for A :

[root@ip-172-31-43-228 grepcommand]# cat grepcommnad.sh
THIS LINE IS THE 1ST UPPER CASE LINE IN THIS FILE.
this line is the 1st lower case line in this file.

This line Has All It's First Character of The Word With Upper Case.

Two lines above this line is empty.
There are some no of lines in this file
And this is the last line.


######from above file above string is only one is there to match and need to print next line as well to do that we can use below command################

grep -A 1 "above" grepcommand.sh
and option "1" is for howmany lines 
and -A means after a string
and -B means before a string


ex : for option CASE

[root@ip-172-31-43-228 grepcommand]# grep -n -C 1 "above" grepcommnad.sh
3-This line Has All It's First Character of The Word With Upper Case.
4:Two lines above this line is empty.
5-There are some no of lines in this file
[root@ip-172-31-43-228 grepcommand]#


option -r  

[root@ip-172-31-43-228 grepcommand]# grep -r "above"
grepcommnad.sh:Two lines above this line is empty.
[root@ip-172-31-43-228 grepcommand]# grep -r "above"




######################################################################## Next page ####################################################################






 grep command syntax:
 grep [options] “string/pattern” file/files
 Basic options: -i -w -v -o -n -c -A -B -C -r -l -h 
 Advanced Options: -f -e and –E
 -f Takes search string/pattern from a file, one per line
 -e To search multiple strings/patterns
 Pattern is a string and it represents more than one string.
 -E To work with patterns
 grep -E[options] “pattern” file/file



-f 

to match a string from one file to another file example

grep -f string.sh grepcommand.sh

we are trying to match the strings which are there in string.sh to grepcommand.sh



-e

with option -e we can seach multiple strings

grep -e "line" -e "above" -e "lines" grepcommand.sh


-E 

grep -E "line|above|lines|bash|shell|" grepcommand.sh



##################################################################################

xy|pq Matches for xy or pq   --------------------- to match multiple strings
 ^xyz Matches for the lines which are starting with “xyz” --------------------------------------- to match a string which is starting with xyz
 xyz$ Matches for the lines which are ending with “xyz” ------------------------------------------- to match a string which is ended with xyz
 ^$ Matches for the lines which are empty ------------------------------------------- to match the empty line 
 \ To remove the special purpose of any symbol. Ex: \^ \$ -------------------------------------- to match special character also
 . Matches any one character --------------------------------- match any thing 
 \. Matches exactly with . ------------------------------------------------------to match . also to print . 
 \b Match the empty string at the edge of word ------------------------------------------ to match with is empty at the end of the word
 ? The preceding character is optional and will be matched, at most, once. ----------------------- matches a string which is having empty space at the start
 * The preceding character will be matched zero or more timesh 
 + The preceding character will be matched one or more times
 [xyz] Matches for the lines which are having x or y or z 
 [a-d] is equal to [abcd] Matched for the lines which are having a/b/b/d
 [a-ds-z] is eqal to [abcdstuvwxyz]
 ^[abc] Matches for the lines which are starting with a/b/c
 [^abc] Matches for the lines which are not starting with a/b/c
 {N} The preceding string matched exactly N times
 {N,} The preceding string matched N or more times
 {N,M} The preceding string matched at least N times but not more than M time
 
 
 
 
 xy|pq --- to match multiple string by using -E
 
 Ex : grep -E "|live|above|" grepcommand.sh
 
 ###############################################
 
 ^ this option is to match a string which is started like below
 
  grep -oE "|^1.*|2.*" number.sh
  
  above it will match the string which is starrted with 1
  #############################################################################
  
  grep -E "^$" grepcommand.sh
  
  above command is used to match the empty space
  
  
 ex :
 
 grep -nE "^$" grepcommand.sh
 
 [root@ip-172-31-43-228 grepcommand]# grep -nE "^$" grepcommnad.sh
2:
[root@ip-172-31-43-228 grepcommand]#


second line is empty
#############################################################################################

grep  \^$ it will ignnore that as it is having \ to ignnore special purpose



ex :

grep -E "\^$" grepcommand.sh 

#####################################################################################

. is used to match a any string


Ex :

 grep -oE "|^1.*|^2.*" number.sh

Output 

[root@ip-172-31-43-228 grepcommand]# grep -oE "|^1.*|^2.*" number.sh
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
[root@ip-172-31-43-228 grepcommand]#




##############################################################################################


?

this option is used to option like below


[root@ip-172-31-43-228 grepcommand]# grep -E "abo" grepcommnad.sh
Two lines above this line is empty.
[root@ip-172-31-43-228 grepcommand]#

################################################################################################
*

this option is to match some string howmany times it is there those many times it wll print



grep -E "yf*" grepcommand.sh

output :

[root@ip-172-31-43-228 grepcommand]# grep -E "yf*" grepcommnad.sh
Two lines above this line is empty.
yffffffffffffffffffffffff
empty
yffff
[root@ip-172-31-43-228 grepcommand]# grep -E "yf*" grepcommnad.sh



 awk '{print $7}' localhost.2022-12-23.log | grep -onE "\()$"
####################################################################################################################


1. xyz|pq


ex :  grep -E "|above|this|" grepcommnad.sh

2.  ^xyz



ex :  grep -E "^This" grepcommnad.sh



3 .xyz$ 

ex :  grep -E "file$" grepcommnad.sh

4 . \ 

ex : grep -E "\^" grepcommnad.sh 

5. . 

ex :  grep -E "l...s" grepcommnad.sh (ignoring ... characters)



6. \. 

ex : grep -E "\." grepcommand.sh (to match only dot (.)) 

7. \b 

grep -E "\bline" grepcommand.sh (to match the empty string before the or edge (left side or right side))

8. ?

ex : grep -E "yf?" grepcommand.sh (yf f will ignore it may or it may not)

9. *

 ex : grep -E "yf*" grepcommand.sh (it will match how many times f is there those willprint )



10 . + 
 ex :  grep -E "y+f+" grepcommnad.sh 	
 
 11 . [abcd] 
 
 ex : grep -E "[this]" grepcommand.sh (it will try to match the words with t or h or i or s it will try to match with single word)
 
 12 . [1-9]
 
 ex : [root@ip-172-31-43-228 grepcommand]# grep -E "[1-9]" grepcommnad.sh
THIS LINE IS THE 1ST UPPER CASE LINE IN THIS FILE.
12345678
this line is the 1st lower case line in this file.
[root@ip-172-31-43-228 grepcommand]#


13 . 

[a-ds-z] is eqal to [abcdstuvwxyz] 

ex : 

[root@ip-172-31-43-228 grepcommand]# grep -E "[1-35-9]" grepcommnad.sh ( it will print 1 to 3 and 5 to 9)
THIS LINE IS THE 1ST UPPER CASE LINE IN THIS FILE.
12345678910
this line is the 1st lower case line in this file.
[root@ip-172-31-43-228 grepcommand]#


 
##############################################################################################################################################






when we create a files that will get stored in hard disk

but variables are not stored in file system or in hard disk those will get stored in RAM (data will stored in ram memory)


we should use $(varialename)

when we use above command to store the command output into into a variable



