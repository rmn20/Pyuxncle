device System[0x08] {
    int r;
    int g;
    int b;
};

device Screen[0x20] {
    void *vec;
    int width;
    int height;
    int padd; // unused
    int x;
    int y;
    char *addr; // address to pull sprite data from
    char pixel;
    char sprite;
};

device Mouse[0x90] {
    void *vec;
    int x;
    int y;
    char state;
    char padd; // unused
    int padd2; // unused
    int scrollx;
    int scrolly;
};

System.r = 0x048f;
System.g = 0x048f;
System.b = 0x048f;

vector event {
    if(Mouse.state & 1) {
        Screen.x = Mouse.x;
        Screen.y = Mouse.y;
        Screen.pixel = 0x43;
    }
}

Mouse.vec = &event;