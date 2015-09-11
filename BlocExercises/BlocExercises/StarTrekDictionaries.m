//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    return characterDictionary[@"favorite drink"];
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    
    NSMutableArray *characterFoods = [[NSMutableArray alloc] init];
    //Note I tried the above without the = [[NSMutableArray alloc] init] and it didn't work
    
    for (int i=0; i<[charactersArray count];i++){
    
        [characterFoods addObject:[[charactersArray objectAtIndex:i] objectForKey: @"favorite drink"] ];
    
    }
    
    //Could I have done this w/ enumerateObjectUsingBlock method?
    
    NSLog(@"%@",characterFoods);
    
    return characterFoods;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    
    NSMutableDictionary *mutableCharacterDictionary = [characterDictionary mutableCopy];
    
    [mutableCharacterDictionary setObject:@"Here is a memorable quote" forKey: @"quote"];
    
    return mutableCharacterDictionary;
}

@end
