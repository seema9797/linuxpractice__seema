declare -A movies
movies[english]="spiderman"
movies[telgu]="pushpa"
movies[hindi]="housefull"

echo "this is Dictoary :${movies[hindi]}"


echo "******Delete*******"

unset 'movies[english]'

echo "after deleting ${movies[@]}"
