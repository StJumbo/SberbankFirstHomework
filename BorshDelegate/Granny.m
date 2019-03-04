//
//  Granny.m
//  BorshDelegate
//
//  Created by Ilya Lunkin on 28/02/2019.
//  Copyright © 2019 Sberbank. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Granny.h"


@implementation Granny

- (void)serveLunch
{
	// приготовить обед
    NSLog(@"Granny: I'm cooking dinner. Wash your hands ang sit down at the table!");
	// переложить работу по употреблению обеда делегату
    BOOL washDish = [[self borshDelegate] borshServed];
	// проверить решение делегата
	// исходя из решения вызывает или не вызывает метод для мытья посуды
    if (washDish) {
        [self washDishes];
    }
    else
    {
        NSLog(@"Granny: Sink is empty.");
    }
}

- (void)washDishes
{
	// помыть посуду
    NSLog(@"Granny: I'm washing dishes.");
}

@end
