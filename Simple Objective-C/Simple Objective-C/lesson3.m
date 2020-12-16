//
//  lesson3.m
//  Simple Objective-C
//
//  Created by Федор Филимонов on 16.12.2020.
//

#import <Foundation/Foundation.h>

typedef enum {
    sum = '+',
    subtract = '-',
    multiply = '*',
    divide = '/',
    checkRemainder = '%'
} CalculatorOperation;

void calculate(CalculatorOperation operation, int first, int second) {
    
    int result = 0;
    float resultOfdivision = 0.0;
    
    switch (operation) {
        case sum:
            result = first + second;
            printf("%d + %d = %d\n", first, second, result);
            break;
            
        case subtract:
            result = first - second;
            printf("%d - %d = %d\n", first, second, result);
            break;
            
        case multiply:
            result = first * second;
            printf("%d * %d = %d\n", first, second, result);
            break;
            
        case divide:
            if (second != 0) {
                resultOfdivision = (float)first / second;
                printf("%d / %d = %.2f\n", first, second, resultOfdivision);
            } else {
                printf("You cannot divide by 0!\n");
            }
            break;
            
        case checkRemainder:
            if (second != 0) {
                result = first % second;
                printf("%d %% %d = %d\n", first, second, result);
            } else {
                printf("You cannot divide by 0!\n");
            }
            break;
            
        default:
            printf("Error.\n");
            break;
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Task 1
        NSArray *names = [NSArray arrayWithObjects: @"Asa", @"Luana", @"Jacques", @"Madalyn", @"Milford", nil];
        for (NSString *name in names) {
            printf("%lu Random name is %s\n", ([names indexOfObject:name] + 1), [name UTF8String]);
        }
        
        // Task 2
        int first = 0;
        int second = 0;
        char operation = ' ';
        
        printf("First number = ");
        scanf("%d", &first);
        printf("Second number = ");
        scanf("%d", &second);
        printf("Arithmetic operation: ");
        scanf("%s", &operation);
        
        printf("\nResult:\n");
        calculate(operation, first, second);
    }
    return 0;
}
