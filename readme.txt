For write a shell script such that whenever switch on your system your system will scan all the specific files in a specific directory & show the files & size in mb. :-
step1- Create a shell script (in my case i named it assign.sh) and write code for checking size of all files and displaying it with size in mb

step2- inside crontab write:
@reboot sleep 5; rm /tmp/myflagfile (which is my flag file over here )

step3- open ~/.bashrc and write this code:

flag="/tmp/myflagfile"

if [[ ! -f "$flag" ]] ; then
 	
 	touch "$flag"	
	/home/innoraft/Documents/test/assign.sh
fi

and its done !


Requirement of kunal bhaiya :

flag="/tmp/myflagfile"

if [[ ! -f "$flag" ]] ; then
 	
 	touch "$flag"	
else

/home/innoraft/Documents/test/assign.sh
fi

and skip step2.

