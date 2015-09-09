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
        return noGo;
    }
    
    if(number<otherNumber){
    
        lowNumber = number;
        highNumber = otherNumber;
    }
    
    
    else {
        lowNumber = otherNumber;
        highNumber = number;
        
    }
    
    NSString *string1 = [NSString stringWithFormat:@"%li",(long)lowNumber];
    
    //NSLog(string1);
    
    while(lowNumber<highNumber){
    
        lowNumber++;
        
        NSString *stringNow = [NSString stringWithFormat:@"%li",(long)lowNumber];
        
        string1 = [string1 stringByAppendingString:stringNow];
        //NSLog(string1);
    }
    
    
    
    return string1;
}

@end
