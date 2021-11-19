#!/usr/bin/perl
#Mansi, 200101064

#reading user input from the command line
while ($_ = <>) {
#splitting the input into two strings 1st containing the basic linux commnad and 2nd containg the left of the string
($linux_command, $bakwas) = split / /;
#checking if the second string is defined or not
    if(defined($bakwas)){
    #if defined, setting the length of the linux command as it's length
        $length=length($linux_command);
    }else{
    #otherwise setting it to length-1
            $length=length($linux_command)-1;
        }
    #splitting the linux command given into character array arr to later check each letter
    my @arr = split //, $linux_command;
#matching the nearest command with the input based on its length
###################################################################################################
#length=2;
    if($length==2){
    #checking if the first word matches or not
        if(${arr[0]}eq"c"&&(${arr[1]}eq"o"||${arr[1]}eq"l"||${arr[1]}eq"i"||${arr[1]}eq"k")&&${arr[1]}ne"p"){
        #if yes, then giving the suggestion
            print "^cp";
            print "\n";
            while ($_ = <>) {
            #getting the response of the user if he/she wants to change the input to correct input
                ($response) = split //;
                #printing the formatted commnad if the response was y
                #case when the linux command is not single
                if((($response) eq "y")&& defined($bakwas)){
                    print "cp $bakwas\n";
                    last;
                }
                #case when the command is single
                if(($response) eq "y"){
                    print "cp \n";
                    last;
                }else{
                #printing the initial command if the response is anything except y
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
            #from here onwards i have done the same thing for every length and command, just by comparing the 1st word and then giving appropriate output, in the case when two commnads have the same 1st letter, i have deduced appropriate spelling mistakes and have recommended the correct command. For eg. in the case of cd and cp, i have considered spelling mistakes such as co,cl,ci for cp, and checked for it earlier, and then checked for cd
        }else{
            if(${arr[0]}eq"c"&&${arr[1]}ne"d"){
                print "^cd";
                print "\n";
                while ($_ = <>) {
                    ($response) = split //;
                    if((($response) eq "y")&& defined($bakwas)){
                        print "cd $bakwas\n";
                        last;
                    }
                    if(($response) eq "y"){
                        print "cd \n";
                        last;
                    }else{
                        print "$linux_command $bakwas\n";
                        last;
                    }
                }
            }
            if(${arr[0]}eq"l"&&${arr[1]}ne"s"){
                print "^ls";
                print "\n";
                while ($_ = <>) {
                    ($response) = split //;
                    if((($response) eq "y")&& defined($bakwas)){
                        print "ls $bakwas\n";
                        last;
                    }
                    if(($response) eq "y"){
                        print "ls \n";
                        last;
                    }else{
                        print "$linux_command $bakwas\n";
                        last;
                    }
                }
            }
            if(${arr[0]}eq"r"&&${arr[1]}ne"m"){
                print "^rm";
                print "\n";
                while ($_ = <>) {
                    ($response) = split //;
                    if((($response) eq "y")&& defined($bakwas)){
                        print "rm $bakwas\n";
                        last;
                    }
                    if(($response) eq "y"){
                        print "rm \n";
                        last;
                    }else{
                        print "$linux_command $bakwas\n";
                        last;
                    }
                }
            }
            if(${arr[0]}eq"m"&&${arr[1]}ne"v"){
                print "^mv";
                print "\n";
                while ($_ = <>) {
                    ($response) = split //;
                    if((($response) eq "y")&& defined($bakwas)){
                        print "mv $bakwas\n";
                        last;
                    }
                    if(($response) eq "y"){
                        print "mv \n";
                        last;
                    }else{
                        print "$linux_command $bakwas\n";
                        last;
                    }
                }
            }
        }
##########################################################################################################
        if($length==3){
            if(${arr[0]}eq"m"&&$ arr ne "man"){
                print "^man";
                print "\n";
                while ($_ = <>) {
                    ($response) = split //;
                    if((($response) eq "y")&& defined($bakwas)){
                        print "man $bakwas\n";
                        last;
                    }
                    if(($response) eq "y"){
                        print "man \n";
                        last;
                    }else{
                        print "$linux_command $bakwas\n";
                        last;
                    }
                }
            }
            if(${arr[0]}eq"p"&&$arr ne "pwd"){
                print "^pwd";
                print "\n";
                while ($_ = <>) {
                    ($response) = split //;
                    if((($response) eq "y")&& defined($bakwas)){
                        print "pwd $bakwas\n";
                        last;
                    }
                    if(($response) eq "y"){
                        print "pwd \n";
                        last;
                    }else{
                        print "$linux_command $bakwas\n";
                        last;
                    }
                }
            }
            if(${arr[0]}eq"c"&&$arr ne "cat"&&${arr[1]}eq "a"){
                print "^cat";
                print "\n";
                while ($_ = <>) {
                    ($response) = split //;
                    if((($response) eq "y")&& defined($bakwas)){
                        print "cat $bakwas\n";
                        last;
                    }
                    if(($response) eq "y"){
                        print "cat \n";
                        last;
                    }else{
                        print "$linux_command $bakwas\n";
                        last;
                    }
                }
            }
            if(${arr[0]}eq"c"&&$arr ne "cal"&&${arr[1]}eq "a"){
                print "^cal";
                print "\n";
                while ($_ = <>) {
                    ($response) = split //;
                    if((($response) eq "y")&& defined($bakwas)){
                        print "cal $bakwas\n";
                        last;
                    }
                    if(($response) eq "y"){
                        print "cal \n";
                        last;
                    }else{
                        print "$linux_command $bakwas\n";
                        last;
                    }
                }
            }
        }
    }
###########################################################################################################
    if($length==4){
        if(${arr[0]}eq"c"&&$arr ne "chsh"){
            print "^chsh";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "chsh $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "chsh \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
        if(${arr[0]}eq"d"&&$arr ne "date"){
            print "^date";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "date $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "date \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
        if(${arr[0]}eq"m"&&$arr ne "more"){
            print "^more";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "more $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "more \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
        if(${arr[0]}eq"l"&&$arr ne "less"){
            print "^less";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "less $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "less \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
        if(${arr[0]}eq"f"&&$arr ne "find"){
            print "^find";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "find $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "find \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
        if(${arr[0]}eq"g"&&$arr ne "grep"){
            print "^grep";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "grep $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "grep \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
        if(${arr[0]}eq"e"&&$arr ne "exit"){
            print "^exit";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "exit $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "exit \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
    }
##########################################################################################################
    if($length==5){
        if(${arr[0]}eq"w"&&$arr ne "which"){
            print "^which";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "which $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "which \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
        if(${arr[0]}eq"c"&&$arr ne "clear"&&${arr[1]}eq"l"){
            print "^clear";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "clear $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "clear \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
        if(${arr[0]}eq"c"&&$arr ne "chmod"&&${arr[1]}eq"h"){
            print "^chmod";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "chmod $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "chmod \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
        if(${arr[0]}eq"s"&&$arr ne "sleep"){
            print "^sleep";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "sleep $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "sleep \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
        if(${arr[0]}eq"a"&&$arr ne "alias"){
            print "^alias";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "alias $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "alias \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
        if(${arr[0]}eq"t"&&$arr ne "touch"){
            print "^touch";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "touch $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "touch \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
        if(${arr[0]}eq"m"&&$arr ne "mkdir"){
            print "^mkdir";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "mkdir $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "mkdir \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
        if(${arr[0]}eq"r"&&$arr ne "rmdir"){
            print "^rmdir";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "rmdir $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "rmdir \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
    }
#########################################################################################################
    if($length==6){
        if(${arr[0]}eq"p"&&$arr ne "passwd"){
            print "^passswd";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "passswd $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "passswd \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
        if(${arr[0]}eq"l"&&$arr ne "logout"){
            print "^logout";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "logout $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "logout \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
        if(${arr[0]}eq"s"&&$arr ne "script"){
            print "^script";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "script $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "script \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
    }
##################################################################################################################
    if($length==7){
        if(${arr[0]}eq"u"&&$arr ne "unalias"){
            print "^unalias";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "unalias $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "unalias \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
        if(${arr[0]}eq"h"&&$arr ne "history"){
            print "^history";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "history $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "history \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
        if(${arr[0]}eq"w"&&$arr ne "whereis"){
            print "^whereis";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "whereis $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "whereis \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
        if(${arr[0]}eq"a"&&$arr ne "apropos"){
            print "^apropos";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "apropos $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "apropos \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
    }
##################################################################################################################
    if($length==8){
        if(${arr[0]}eq"s"&&$arr ne "shutdown"){
            print "^shutdown";
            print "\n";
            while ($_ = <>) {
                ($response) = split //;
                if((($response) eq "y")&& defined($bakwas)){
                    print "shutdown $bakwas\n";
                    last;
                }
                if(($response) eq "y"){
                    print "shutdown \n";
                    last;
                }else{
                    print "$linux_command $bakwas\n";
                    last;
                }
            }
        }
    }
    
}
