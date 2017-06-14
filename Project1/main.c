

/**
 * main.c
 */
extern int fib(int n);
int main(void)
{
    fib(5);
	return 0;
}

//Blink LEd
void blink(int n){
    char pattern = convert_to_morse(n);
    for (int i=0; i< _; i++){
        int x = pattern % 10;

        pattern = pattern - x;

        ___SET___LED___STATE___
        ___WAIT between digits_____
    }
    ___LONG WAIT BETWEEN NUMBERS____
    }
}

//convert to morse case
// take in single digit and converts
//into morose case binary
char convert_to_morse(int n){
    switch (n){
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
        break
    }
}
