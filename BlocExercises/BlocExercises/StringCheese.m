//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
        
    NSString *favCheeseString = [NSString stringWithFormat: @"My favorite cheese is %@.",cheeseName];
    
    return favCheeseString;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        
        NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
        NSString *shortCheese = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
        
        return shortCheese;
        
        /* WORK HERE, ASSUMING `cheeseName` ENDS WITH " cheese" */
    }
    
    
    else {
        /* WORK HERE, ASSUMING `cheeseName` DOES NOT END WITH " cheese" */
        return cheeseName;
    }

    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */

    return nil;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        
        NSString *oneCheese = @"1 cheese";
        return oneCheese;
        
    } else {
    /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        NSString *moreCheese = [NSString stringWithFormat: @"%ld cheeses", cheeseCount];
        return moreCheese;
    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return nil;
}

@end
