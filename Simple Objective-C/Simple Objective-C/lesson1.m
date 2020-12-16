//
//  lesson1.m
//  Simple Objective-C
//
//  Created by Федор Филимонов on 09.12.2020.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Initialize variables
        int first = 0;
        int second = 0;
        
        // Input data
        printf("First number: ");
        scanf("%d", &first);
        printf("Second number: ");
        scanf("%d", &second);
        
        // Задание 1
        printf("Summed: ");
        printf("%d\n", first + second);
        
        printf("Subtracted: ");
        printf("%d\n", first - second);
        
        printf("Multiplied: ");
        printf("%d\n", first * second);
        
        printf("Divided: ");
        printf("%d\n", first / second);
        
        // Задание 2
        NSLog(@"Summed: %i, Subtracted: %i, Multiplied: %i, Divided: %i",
              first + second, first - second, first * second, first / second);
        
        // Задание 3
        int third = 0;
        printf("Third number: ");
        scanf("%d", &third);
        
        double sum = first + second + third;
        
        printf("Average: ");
        printf("%f\n", sum / 3);
        
    }
    return 0;
}
