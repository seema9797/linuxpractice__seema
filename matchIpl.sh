: ' rcbTeam=("Abd","Virat","Siraj","Maxwell")

for player in ${rcbTeam[@]}

do

if[$player == "Maxwell"]

then

 echo "$player is a all-rounder"
 elif[$player == "Virat"]

then

echo "$player is a Captain"
elif[$player =="Abd"]

then

echo "$player is a Batsman"
else
echo "$player is a Bowler"
fi
done : '
