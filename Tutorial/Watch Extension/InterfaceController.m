//
//  InterfaceController.m
//  Watch Extension
//
//  Created by John Lima on 27/11/16.
//  Copyright © 2016 limadeveloper. All rights reserved.
//
//  Tutorial: https://www.youtube.com/watch?v=MeGArZtbGZ8&list=PLPXQAmNk2rv1XXVfJY4g1rpPXtxPVyNt2

#import "InterfaceController.h"


@interface InterfaceController()

@end

int x = 0;

@implementation InterfaceController

#pragma mark - View LifeCycle
- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    self.label1.text = @"0";
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

#pragma mark - Actions
- (IBAction)up {
   
    x++;
    NSString *string = [NSString stringWithFormat:@"%d", x];
    
    self.label1.text = string;
}

- (IBAction)down {
    
    x--;
    NSString *string = [NSString stringWithFormat:@"%d", x];
    
    self.label1.text = string;
}

@end



