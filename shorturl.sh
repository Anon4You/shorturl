#!/bin/bash
if ! hash toilet > /dev/null 2>&1 ; then
apt install toilet -y
fi
clear
printf "\a\a"
toilet -f slant -F border --metal " ShortUrl "
echo -e "\a\a\e[0m
  ::-Simple URL Shortener Ver 1.0.0-::
  ::-Author : Alienkrishn [Anon4You]-::

[1] Use is.gd
[2] Use TinyUrl
[3] More Tools
[0] Exit
\n"
read -p "ShortUrl > " cc

gturl(){
  printf "\e[0;"
  read -p "Enter Url > " xx
  printf "\n\e[0;1mYour shorturl is = \e[34m"
}
if [ $cc = 1 ]; then
  echo -e "\nusing is.gd url Shortner\n"
  gturl
  curl -s "https://is.gd/create.php?format=simple&url=$xx"
  printf "\n"
elif [ $cc = 2 ]; then
  echo -e "\nusing TinyUrl url Shortner\n"
  gturl
  curl -s "https://tinyurl.com/api-create.php?url=$xx"
  printf "\n"
elif [ $cc = 3 ]; then
  echo "Opening Website using xdg-open...."
  xdg-open https://anon4you.github.io/alienkrishn
elif [ $cc = 0 ]; then
  echo thanks for using this tool....
  sleep 2
  exit
else
  echo -e "\e[31;1mandha h kya laude dekh k command enter kr na\e[0m"
  sleep 4
  bash shorturl.sh
fi
