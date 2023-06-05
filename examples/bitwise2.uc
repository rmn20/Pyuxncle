device Console[0x10] {
    char pad[8]; // these first few bytes contain a vector and other reserved bytes that we aren't using :P
    char write;
};

void printString(char* str) {
	int i = 0;
	
	while(str[i]) {
		Console.write = str[i];
		i = i + 1;
	}
}

//Bitwise operators in if statements
//And
printString("true & false is ");

if(1 & 0) printString("true");
else printString("false");

Console.write = 0x0A; //newline

//Or
printString("true | false is ");

if(1 | 0) printString("true");
else printString("false");

Console.write = 0x0A; //newline

//Xor
printString("true ^ true is ");

if(1 ^ 1) printString("true");
else printString("false");

Console.write = 0x0A; //newline