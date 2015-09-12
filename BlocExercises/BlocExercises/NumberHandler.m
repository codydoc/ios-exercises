//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    
    return [NSNumber numberWithInt:([number intValue]*2)];
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    if(number<otherNumber){
    
        while(number<otherNumber){
            
            [array addObject: [NSNumber numberWithInteger:number]];
            number++;
         
        }
    
        [array addObject: [NSNumber numberWithInteger:otherNumber]];
    }
    
    if(number>otherNumber){
        
        while(otherNumber<number){
            
            [array addObject: [NSNumber numberWithInteger:otherNumber]];
            otherNumber++;
            
        }
        
        [array addObject: [NSNumber numberWithInteger:number]];
        
    }
    
    //Do I need to add a case where args are equivalent?
    
    return array;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    
    int min = [arrayOfNumbers[0] intValue];
    
    for(id object in arrayOfNumbers)
    {
        if([object intValue]<min){
        
            min = [object intValue];
        }
        
    }
    
    //Probably a slightly more efficient way to do this...
    
    return min;
}

@end
