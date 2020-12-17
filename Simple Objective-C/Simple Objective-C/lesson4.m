//
//  lesson4.m
//  Simple Objective-C
//
//  Created by Федор Филимонов on 17.12.2020.
//

#import <Foundation/Foundation.h>
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *students = [[NSMutableArray alloc]init];
        
        Student *firstStudent = [[Student alloc] initWithName:@"Matteo" surname:@"Beard" andAge:20];
        [students addObject:firstStudent];
        
        Student *secondStudent = [[Student alloc] initWithName:@"Pablo" surname:@"Rosa" andAge:35];
        [students addObject:secondStudent];

        Student *thirdStudent = [[Student alloc] initWithName:@"Deborah" surname:@"Lowe" andAge:52];
        [students addObject:thirdStudent];
        
        NSLog(@"\nStudents:\n%@", students);
        
        printf("\nChanges to the age of students\n");
        [firstStudent changeAge:1];
        [secondStudent changeAge:-1];
        [thirdStudent changeAge:0];
        NSLog(@"\nStudents:\n%@", students);
    }
    return 0;
}
