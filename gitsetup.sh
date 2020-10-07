echo "Username:"
read username
echo "email:"
read email
echo "Editor:"
read editor
setup="git config --global"
$setup user.name "$username"
$setup user.email "$email"
$setup core.editor "$editor"
git config --list
FILE=~/.ssh/id_rsa.pub
if [ -f "$FILE" ]; then
	    ssh git@github.com
    else
	    echo "setup a ssh key first"
fi
if [ $? -ne "1" ]; then 
	echo "something went wrong.did you add the ssh key to your github?" 
else
	echo "Everything fine!"
fi
