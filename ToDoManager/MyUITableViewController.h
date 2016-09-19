//
//  MyUITableViewController.h
//  ToDoManager
//
//  Created by Ruby on 9/13/16.
//  Copyright © 2016 Ruby. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HandlerMOC.h"

@interface MyUITableViewController : UITableViewController <HandlerMOC>

-(void) receiveMOC:(NSManagedObjectContext *)incomingMOC;

@end
