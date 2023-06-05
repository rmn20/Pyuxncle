device Console[0x10] {
    char pad[8]; // these first few bytes contain a vector and other reserved bytes that we aren't using :P
    char write;
};

void printHexNum(char x) {
	x = x & 0xf;
	
	if(x < 10) Console.write = '0' + x;
	else Console.write = 'A' + x - 10;
}

void printHexInt(int x) {
    Console.write = '0';
    Console.write = 'x';
	
	printHexNum(x >> 12);
	printHexNum(x >> 8);
	printHexNum(x >> 4);
	printHexNum(x);
	
    Console.write = 0x0A; //Newline character
}
//Print ints in hex
printHexInt(0xDEAD);
printHexInt(0xC0DE);

//Print results of left shift
printHexInt(1 << 0);
printHexInt(1 << 1);
printHexInt(1 << 2);
printHexInt(1 << 3);
printHexInt(1 << 4);
printHexInt(1 << 5);
printHexInt(1 << 6);
printHexInt(1 << 7);