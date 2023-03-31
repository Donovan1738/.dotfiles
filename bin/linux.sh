#shebang to run the code
#!/bin/bash
#if statement to check if the output of uname equals 'linux' or not
UNAME=$(uname)
if [[ "$UNAME" != "Linux" ]]
then { 
	#prints error because the output of uname equals 'linux'
	echo "error" >> ;linuxsetup.log
}	exit
else
{
	#prints 'not equal to linux' if the output of uname does not equal 'linux'
	echo uname "Not equal to linux"
}
fi
#creates the directory trash if it does not exist already 
mkdir -p .TRASH
#changes .vimrc name if the file exists 
mv ~/.vimrc .bup_vimrc
#overwrites the contents in vimrc to a file called .vimrc
echo ".vimrc was changed to .bup_vimrc" >> linuxsetup.log
#adds this statement to the .bashrc file 
echo "source ∼/.dotfiles/etc/bashrc custom"  >> ~/.bashrc
