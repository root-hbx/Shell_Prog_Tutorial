#!/bin/sh

adduser()
{
	USER=$1
	PASSWORD=$2
	shift ; shift
	COMMENTS=$@
	useradd -c "${COMMENTS}" $USER

	if [ "$?" -ne "0" ]; then
		echo "Useradd Failed"
		return 1
	fi

	passwd $USER $PASSWORD
	if [ "$?" -ne "0" ]; then
		echo "Setting password failed"
		return 2
	fi

	echo "Added user $USER ($COMMENTS) with pass $PASSWORD"
}

## Main Script starts here:

adduser hbx 2223410945 ROOT HBX from XJTU
ADDUSER_RETURN_CODE=$?

if [ "$ADDUSER_RETURN_CODE" -eq "1" ]; then
	echo "Useradd went wrong!"
elif [ "$ADDUSER_RETURN_CODE" -eq "1" ]; then
	echo "Passwd went wrong!"
else
	echo "Con: You are added into this system!"
fi
