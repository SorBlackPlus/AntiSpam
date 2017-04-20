#!/usr/bin/env bash

cd $HOME/AntiSpam

install() {
	    cd libs
		sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
		sudo apt-get install g++-4.7 -y c++-4.7 -y
		sudo apt-get update
		sudo apt-get upgrade
		sudo apt-get install libreadline-dev -y libconfig-dev -y libssl-dev -y lua5.2 -y liblua5.2-dev -y lua-socket -y lua-sec -y lua-expat -y libevent-dev -y make unzip git redis-server autoconf g++ -y libjansson-dev -y libpython-dev -y expat libexpat1-dev -y
		sudo apt-get install screen -y
		sudo apt-get install tmux -y
		sudo apt-get install libstdc++6 -y
		sudo apt-get install lua-lgi -y
		sudo apt-get install libnotify-dev -y
		wget https://valtman.name/files/telegram-cli-1222
		mv telegram-cli-1222 tgcli
		chmod +x tgcli
		cd ..
		chmod +x bot
}

function print_logo() {
        green "          ____   __           _____"                                  
        green "         | __  )|--|---      |_   _|___ ____   __  __"
        green "         | _|   |--|           | |/ .__|  _ \_|  \/  |"
        green "         | _|   |--|           |_|\____/\_____|_/\/\_|"
	echo -e "\n\e[0m"
}

function logo_play() {
    declare -A txtlogo
    seconds="0.010"
    txtlogo[1]=" ____   __        _____"
    txtlogo[2]="|  __ )|--|---   |_   _|___ ____   __  __"
    txtlogo[3]="| _|   |--|        | |/ .__|  _ \_|  \/  |"
    txtlogo[4]="| _|   |--|        |_|\____/\_____|_/\/\_|"
    printf "\e[31m\t"
    for i in ${!txtlogo[@]}; do
        for x in `seq 0 ${#txtlogo[$i]}`; do
            printf "${txtlogo[$i]:$x:1}"
            sleep $seconds
        done
        printf "\n\t"
    done
    printf "\n"
	echo -e "\e[0m"
}

function Primeteam() {
	echo -e "\e[0m"
	green "     >>>>                       We Are (Anonymous)                             "
	green "     >>>>                       We Are Clever                             "
	white "     >>>>                       We Are Programmer                               "
	white "     >>>>                       We Are The Best                                 "
	red   "     >>>>                       We Are Family                                   "
	red   "     >>>>                       @PrimeTeam                                     "
	echo -e "\e[0m"
}

red() {
  printf '\e[1;31m%s\n\e[0;39;49m' "$@"
}
green() {
  printf '\e[1;32m%s\n\e[0;39;49m' "$@"
}
white() {
  printf '\e[1;37m%s\n\e[0;39;49m' "$@"
}
update() {
	git pull
}

if [ "$1" = "install" ]; then
	print_logo
	Primeteam
	logo_play
	install
elif [ "$1" = "update" ]; then
	logo_play
	Primeteam
	update
else
if [ ! -f ./libs/tgcli ]; then
    echo "tgcli not found"
    echo "Run $0 install"
    exit 1
fi
	print_logo
	Primeteam
	logo_play
	#sudo service redis-server restart
	./libs/tgcli -s ./bot/bot.lua $@
fi
