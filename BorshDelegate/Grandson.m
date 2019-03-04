//
//  Grandson.m
//  BorshDelegate
//
//  Created by Ilya Lunkin on 28/02/2019.
//  Copyright © 2019 Sberbank. All rights reserved.
//

#import "Grandson.h"


@implementation Grandson

-(void)eatBorsh
{
    NSLog(@"Grandson: I'm eating borsh!");
}

-(BOOL)borshServed
{
    
	// принять решение есть ли борщ (например, проверить, что текущее время от 14:00 до 16:00)
    // Строка ответа внука
    NSMutableString *eatBorshDecisionMessage = [NSMutableString new];
    [eatBorshDecisionMessage setString:@"Grandson: It's not time for dinner."];
    
    // Тащим текущий час, кастим его в строку, строку в инт
    NSDate *currentTimeDate = [NSDate new];
    NSDateFormatter *dateFormatter = [NSDateFormatter new];
    [dateFormatter setDateFormat:@"HH"];
    NSString *currentTimeString = [NSString new];
    currentTimeString = [dateFormatter stringFromDate:currentTimeDate];
    NSInteger currentTimeInteger = [currentTimeString integerValue];
    
    // Сравниваем полученное время с граничными значениями и работаем, исходя из
    // результата сравнения, возвращаем YES, если внук поел
    if (currentTimeInteger >= 14 && currentTimeInteger < 16)
    {
        [eatBorshDecisionMessage setString:@"Grandson: Ok, it's time for dinner!"];
        NSLog(@"%@", eatBorshDecisionMessage);
        [self eatBorsh];
        return YES;
    }
    else
    {
        NSLog(@"%@", eatBorshDecisionMessage);
        return NO;
    }
}

@end
