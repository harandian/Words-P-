//
//  main.m
//  Word Effects (P*)
//
//  Created by Hirad on 2017-07-25.
//  Copyright © 2017 Hirad. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        char inputChars[255];
        
        printf("input a string: ");
        
        fgets(inputChars, 255, stdin);
        
        printf ("Your string is %s\n)", inputChars);
        
        NSMutableString *inputString = [NSMutableString stringWithUTF8String: inputChars];
        NSString *simpleString = [ NSString stringWithUTF8String: inputChars];
        
        NSLog(@"Input was : %@", inputString);
        
// Part 1
        
        NSString *loudString = [ inputString uppercaseString];
        
        NSLog(@"This is your string in uppercase: %@", loudString);
        
// Part 2

        NSString *lowString = [ inputString lowercaseString];
        
        NSLog(@"This is your string in lowercase: %@", lowString);
     
// Part 3
        
        char inputNumber[255];
        
        printf("input a number: ");
        
        fgets(inputNumber, 255, stdin);
        
        NSString *inputNumberasString = [NSString stringWithUTF8String: inputNumber];
        
        NSInteger inPutNumberAsInt = [inputNumberasString integerValue];
        
        if (inPutNumberAsInt == nil) {
            
            printf ("Bad input");
        }
        
        printf("Your number in digits is: %i\n",inPutNumberAsInt );
        
// Part 4
        
        NSString *canadian = [inputString stringByAppendingString:@"Eh!"];
        
        NSLog(@"This is your string in canadian: %@", canadian);

// Part 5
        
        if([simpleString containsString:@"?"])
        
        {
            printf ("I don't know\n");
        }

        if([simpleString hasSuffix:@"!"])
            
        {
            printf ("Whoa, calm down!\n");
        }
    
    
        }
    return 0;
    
}

