echo -en "1) What is your name [ `whoami` ] "
read myname
echo "Your name is : ${myname:-`whoami`}"

echo -en "2) What is your age?"
read MYAGE
echo "Your name is : ${MYAGE:-Guess hhh}"
