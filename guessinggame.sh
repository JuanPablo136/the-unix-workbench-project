count=$(ls -1 | wc -l)
echo "Please guess the number of files presented in the current directory: "
read num
function game {
	while true; do
		if [ $num -gt $count ]; then
			echo "Too high"
			echo "Try again: "
			read num
		elif [ $num -lt $count ]; then
			echo "Too low"
			echo "Try again"
			read num
		else 
			echo "Congratulations!! You guessed the number"
			break
		fi	
	done
}
game
