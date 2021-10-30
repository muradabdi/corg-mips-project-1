# PROGRAM: CSCI 201 MIPS Programming Project 1

.data
	message_in: .asciiz "Input: "	# Input message
	message_out: .asciiz "Output: "	# Output message
	userInput: .space 12			# Set input character limit

.text
	main:							# Start of code section
        li $v0, 4					# 4 = code to print string
        la $a0, message_in			# Load address of input message to print
        syscall						# Register $v0 contains number code of the system call
        
		li $v0, 8					# 8 = code to read string
		la $a0, userInput			# Get text from input
		li $a1, 12					# Load 12 into $a1
		syscall 					

		la $a0, userInput			# Load userInput address into $a0
		li $s1, 0					# Load 0 into $s1

	loop_string:					# Examine validity of each character
	wrong:                          # Branched to if character does not meet alphanumeric criteria
	calculate:						# Branched to if character does meet criteria / N = 26 + (12995113 % 11) = 36, z = 35