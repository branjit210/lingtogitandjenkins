#!bin/bash

echo "What is full your name?"
read name
echo "What city do you live?"
read city
echo "How old are you?"
read age
if [ $age -lt 18 ]
then 
echo "You are a boy."
else 
echo "You are a adult."
fi
echo " So,your name is $name. You live in $city. You are $age years old."
echo " What is your work status? L for Laid-off. Q for Quit. F for furlough."
read status
case $status in
L)
echo "Sorry. Apply again."
;;
Q)
echo "Shouldnt have quitted. Apply again."
;;
F)
echo "Enjoy the vacation."
;;
*)
echo "Please read the question."
;;
esac
