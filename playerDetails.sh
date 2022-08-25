 echo "Enter a Favourite Team In IPL 2022"
echo "Example :: RCB CSK MI"
read teamName

MATCHES_PLAYED=14
won=0
lost=0
nrr=""
points=0
rcbTeam=("Duplessis" "Dinesh" "Maxwell" "Siraj")
miTeam=("Rohit" "Ishant" "Pollard" "Bumrah")

function errorHandler(){
echo "Your Given Input Is Invalid :( Please Try Again !!!"
}
function playOffs(){
if [ $2 -le 4 ]
then
echo $1 "is eligible for play-offs"
else
echo $1 "is not eligible for play-offs"
fi
}

function rolesPlayed(){
echo $1 "is a $3 of Team - " $2
}

function rolesAndResponsibility(){
case  '['$1 -eq "RCB" ']')

for player in ${rcbTeam[@]}
;;

do
 [ $player == "Siraj" ])

rolesPlayed $player $1 "Bowler"
;;
 [ $player == "Maxwell" ])

rolesPlayed $player $1 "All-Rounder"
;;
[ $player == "Dinesh" ])

rolesPlayed $player $1 "Batsman"
;;
*)
rolesPlayed $player $1 "Captain"
;;
done
 [ $1 == "MI" ])

for player in ${miTeam[@]}
;;
do
 [ $player == "Bumrah" ])

rolesPlayed $player $1 "Bowler"
;;
 [ $player == "Pollard" ])

rolesPlayed $player $1 "All-Rounder"
;;
 [ $player == "Ishant" ])

rolesPlayed $player $1 "Batsman"
;;
*)
rolesPlayed $player $1 "Captain"
;;
esac
done
echo ""
;;
esac
}
function teamDetails(){
lost=$((MATCHES_PLAYED-$2))
points=$(($2*2))
echo "Team : $teamName"
echo "Matches Played : $MATCHES_PLAYED"
echo "Position : $1"
echo "Won : $2 , Lost : $lost"
echo "Run Rate : $3"
echo "Points : $points"
playOffs $teamName $1
rolesAndResponsibility $teamName
}
if [ $teamName == "MI" ]
then
securedPlace=10
won=4
nrr="-0.506"
teamDetails $securedPlace $won $nrr
elif [ $teamName == "RCB" ]
then
securedPlace=4
won=8
nrr="-0.253"
teamDetails $securedPlace $won $nrr
else
errorHandler
fi
