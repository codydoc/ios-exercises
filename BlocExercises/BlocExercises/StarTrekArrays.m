//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    
    NSArray *starTrek = [characterString componentsSeparatedByString:@";"];
    
    return starTrek;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSString *starTrekString = [characterArray componentsJoinedByString:@";"];
    
    return starTrekString;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSMutableArray *mutableCharacterArray = [@[]mutableCopy]; //Did I need to do this??
    
    for (int i=0; i<[characterArray count]; i++){
    
        [mutableCharacterArray addObject:characterArray[i]];
    }
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(caseInsensitiveCompare:)];
    
    [mutableCharacterArray sortUsingDescriptors:@[sortDescriptor]];
    
    NSArray *finishedArray = [mutableCharacterArray copy];
    
    return finishedArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    
    NSPredicate *predicateSearch = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'Worf'"];
    
    NSArray *newArray = [characterArray filteredArrayUsingPredicate:predicateSearch];
    
    if([newArray count]>0){
    
        return TRUE;
    }
    
    else {
    
        return false;

    }
}

@end
