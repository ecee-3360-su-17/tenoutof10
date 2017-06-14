/*
 * main.c
 */

extern int fibonacci(int n);

int main(void) {
	for(int i = 20, i = 0, i++){
	    fibronocci(i);
	}
	return 0;
}

void blink(int x){
    int mout = 0b0;
    while(x>=0){
       y = x%10
       int new = convert_to_morose(y);
       mout = mout | new;
       mout = mout << 5;
       x = (x-y)/10;
    }

    registerbusinessforLED = shift in mout one bit at a time;
    have a wait


}

char convert_to_morose(int n){
    switch(n){
    case 0:
        return 0b11111;
        break;
    case 1:
        return 0b01111;
        break;
    case 2:
        return 0b00111;
        break;
    case 3:
        return 0b00011;
        break;
    case 4:
        return 0b00001;
        break;
    case 5:
        return 0b00000;
        break;
    case 6:
        return 0b10000;
        break;
    case 7:
        return 0b11000;
        break;
    case 8:
        return 0b11100;
        break;
    case 9:
        return 0b11110;
        break;
    default:
        break;
}
