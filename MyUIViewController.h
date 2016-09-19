//
//  MyUIViewController.h
//  ToDoManager
//
//  Created by Ruby on 9/13/16.
//  Copyright © 2016 Ruby. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HandlerMOC.h"
#import "HandlerToDoEntity.h"


@interface MyUIViewController : UIViewController <HandlerMOC ,HandlerToDoEntity>

-(void) receiveMOC:(NSManagedObjectContext *)incomingMOC;
- (void) receiveToDoEntity:(ToDoEntity *)incomingToDoEntity;


@end
