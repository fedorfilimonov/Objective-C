//
//  lesson2.m
//  Simple Objective-C
//
//  Created by Федор Филимонов on 10.12.2020.
//

#import <Foundation/Foundation.h>

// Task 1
void checkLetter (char letter) {
    if ((letter >= 'a' && letter <= 'z') || (letter >= 'A' && letter <= 'Z')) {
        printf("The letter %c is in the English alphabet.\n", letter);
    } else {
        printf("The letter %c is NOT in the English alphabet.\n", letter);
    }
}

// Task 2
int sum(int first, int second) {
    return first + second;
}

int subtract(int first, int second) {
    return first - second;
}

int multiply(int first, int second) {
    return first * second;
}

int divide(int first, int second) {
    if (second != 0) {
        return (float)first / second;
    } else {
        printf("You cannot divide by 0!\n");
        return 0;
    }
}

int checkRemainder(int first, int second) {
    if (second != 0) {
        return first % second;
    } else {
        printf("You cannot divide by 0!\n");
        return 0;
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Task 1
        char inputLetter = ' ';
        
        printf("Enter a letter: ");
        scanf("%c", &inputLetter);
        
        checkLetter(inputLetter);
        
        // Task 2
        int first = 0;
        int second = 0;
        
        printf("First number = ");
        scanf("%d", &first);
        printf("Second number = ");
        scanf("%d", &second);
        
        printf("\nArithmetic operations:\n");
        printf("%d + %d = %d\n", first, second, sum(first, second));
        printf("%d - %d = %d\n", first, second, subtract(first, second));
        printf("%d * %d = %d\n", first, second, multiply(first, second));
        printf("%d / %d = %.2d\n", first, second, divide(first, second));
        printf("%d %% %d = %d\n", first, second, checkRemainder(first, second));
        
    }
    return 0;
}
