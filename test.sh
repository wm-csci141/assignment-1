# Test is a function that takes a command and a string and checks if the
# output of the command is equal to the string.
# Usage: CheckOutput <command> <string>
Test() {
	output=$($1)

	if [ "$output" = "$2" ]; then
		echo "Command $1 passed"
	else
		echo "Command $1 failed. Expected $2, but got $output"
	fi
}

Test "python3 problem1.py" "7"
Test "python3 problem2.py" "28.26"
Test "python3 problem3.py" "99 <class 'str'>"
Test "python3 problem4.py" "Hello World!"
Test "python3 problem5.py" "Hello World!"
Test "python3 problem6.py" "9,6"
Test "python3 problem7.py" "5,9,6"
Test "python3 problem8.py" "3,5,9,6"
Test "python3 problem9.py" "12 <class 'int'>"
Test "python3 problem10.py" "543 <class 'int'>"