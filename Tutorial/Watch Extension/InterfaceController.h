//
//  InterfaceController.h
//  Watch Extension
//
//  Created by John Lima on 27/11/16.
//  Copyright © 2016 limadeveloper. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController

#pragma mark - Properties
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *label1;

@end
