echo '______________________________     _________            .__        __'
echo '\_   _____/\______   \_   ___ \   /   _____/ ___________|__|______/  |_ '
echo ' |    __)   |       _/    \  \/   \_____  \_/ ___\_  __ \  \____ \   __\'
echo ' |     \    |    |   \     \____  /        \  \___|  | \/  |  |_> >  |  '
echo ' \___  /    |____|_  /\______  / /_______  /\___  >__|  |__|   __/|__|  '
echo '     \/            \/        \/          \/     \/         |__|       '  
echo '            DDOSERS, LOGGERS, IP GRABBERS, TOKENS, ETC..'
echo '                  Made by: Mysterek # FRC Team'
sleep 2
clear
echo 'Installing prerequisites..'
apt update && apt upgrade -y
apt install virt-what htop curl wget neofetch tcpdump -y
apt install hping3 -y
clear
sleep 2
PS3='Your Choice: '
options=("DDoS" "Bots & Raid & Tokens" "IP Grabber" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "DDoS")
            echo "Choice 1 | Starting DDoS Solutions.."
			bash frcddos.bash
			break
            ;;
        "Bots & Raid & Tokens")
            echo "Choice 2 | Starting Discord Bots & Raid & Tokens Solutions..."
			break
            ;;
        "IP Grabber")
            echo "Choice 3 | Starting IP Grabber Solution..."
			bash fcip.bash
			break
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done