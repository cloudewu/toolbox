#/bin/sh

USER_NAME="joanna"
USER_EMAIL="joannawu@nlplab.cc"

if [ -n "$1" ]; then
    USER_NAME="$1";
    shift;
else
    echo " > default email used: $USER_NAME"
fi

if [ -n "$1" ]; then
    USER_EMAIL="$1";
    shift;
else
    echo " > default email used: $USER_EMAIL"
fi

echo "set user.name=$USER_NAME"
echo "set user.email=$USER_EMAIL"

git config user.name $USER_NAME
git config user.email $USER_EMAIL
