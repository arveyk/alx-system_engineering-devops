/* Bash Scripting Project*/
**/ 0x04- Loops, Conditions and Parsing /**


Conditional Statements
	if 
	while
	env
	elif
	case
	for:
		allows specification of a list of values. a list of commands is
		executed for each item in the list
		~#Syntax#~
		for i [in LIST; do [COMMANDS; done]
		if LIST is not present, it is replaced by $@ and the for execute		s once for each positional argument
Operators
	__ = __
	=
	  for assignment of values to variables (no space between the operator
	when assigning eg. p=2)
	  for testing equality
	eg if [ "X$string1" = "X$string2" ]
	__Arithmetic Operators__
	+
	-
	/
	** exponentiation
	% modulo
	+= increments a variable by a constant  var += 3
	-= decrements a variable by a constant  var -= 4
	*= multiplies 				var *= 7
	/= divides				var /= 2
	%= find the remainder of division op	var %= 5
	
	__ Comparison Operators__
	-eq is equal to 	e.g. if [ "$a" -eq "$b" ]
	-ne is not equal to 	e.g. if [ "$a" -ne "$b" ]
	-gt is greater than
	-ge is greater than or equal to
	-lt is less than
	-le is less than or equal to

	< less than			e.g. (("$a" < "$b")) #double parentheses
	<= is less than or equal to 	e.g (("$a" <= "$b"))
	> is greater than
	>= is greater than or equal to
	
	string comparison
	= is equal to 	e.g if [ "$a" = "$b" ]
	== is equal to	e.g if [ "$a" == "$b" ]
	!= is not equal e.g if [ "$a" != "$b" ]
	< less than	e.g if [[ "$a" < "$b" ]]
				[ "$a" \< "$b" ]
	> greater than
	-z string is null
		eg String=''
		if [ -z "$String"]
		then
			echo "\$String is null"
		else
			echo "\$String is not null"
		fi
	-n string is not null
	logical and -a, &&
		exp1 -1
		[[]]
	logical or -o, ||

	File test operator
	-e file exits
	-f file is a regular file
	-s file is not zero size
	-d file is a directory
	-b file is a block device
	-c file is a characters device
	-p file is a pipe
	-h file is a symbolic link
	-L file is a symbolic link
	-S file is a socket
	-t file is associated with a terminal device
	-r file has read permission
	-w      has write permission
	-x	has execute permission
	-g
	-u
	-k: sticky bit set
	-O you are owner of file
	-G group id same as yours
	-N file modified since it was last read
		f1 -nt f2 file f1 is newer than f2
		f1 -ot f2 file f1 is older than f2
		f1 -ef f2 file f1 and f2 are hard links to the same file
		! reverses the sense of the tests above  
