//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    NSInteger lowNumber;
    NSInteger highNumber;
    
    if(number == otherNumber){
    
        NSString *noGo = [NSString stringWithFormat:@"%li",(long)number];
        //NSInteger is a typedef, could be long or integer, so need to identify that it is a long
        //%i for int, %li for long int
        return noGo;
    }
    //Don't need the if statement above
    
    if(number<otherNumber){
    
        lowNumber = number;
        highNumber = otherNumber;
    }
    
    
    else {
        lowNumber = otherNumber;
        highNumber = number;
        
    }
    
    //NSInteger lowNumber = MIN(number, otherNumber);
    //NSInteger highNumber = MAX(number, otherNumber);
    
    NSString *string1 = [NSString stringWithFormat:@"%li",(long)lowNumber];
    
    //NSLog(string1);
    
    while(lowNumber<highNumber){
    
        lowNumber++;
        
        NSString *stringNow = [NSString stringWithFormat:@"%li",(long)lowNumber];
        
        string1 = [string1 stringByAppendingString:stringNow];
        //stringByAppendingFormat is better
        //string1 = [string1 stringByAppendingFormat:@"%li",(long)lowNumber];
        //Could also use NSMutableString, but most people don't use NSMutable string...
        //NSLog(string1);
    }
    
    
    
    return string1;
}

@end
