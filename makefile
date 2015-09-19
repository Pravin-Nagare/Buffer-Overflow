all: vulner-prog attack
vulner-prog: vuln_program.c
	gcc vuln_program.c -fno-stack-protector -z execstack -static -o vuln_program
attack: attack-string.c
	gcc attack-string.c -o attack-string
clean:
	rm vuln_program attack-string
