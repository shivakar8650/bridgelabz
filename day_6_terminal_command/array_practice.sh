max1=0;
max2="unset";
declare -a ran;
declare -a largest;

for((i=0;i<10;i++))
do
  ran[$i]=$((RANDOM%900));
  echo -n "$((ran[$i])) ";
done
echo -e "the out put is:"
echo -e "$((ran[5]))"
max=$((ran[0]))
for j in {0..9}
do
 echo $((ran[$j]))
done
