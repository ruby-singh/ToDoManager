//
//  HandlerToDoEntity.h
//  ToDoManager
//
//  Created by Ruby on 9/13/16.
//  Copyright © 2016 Ruby. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ToDoEntity.h"

@protocol HandlerToDoEntity <NSObject>

- (void) receiveToDoEntity:(ToDoEntity *)incomingToDoEntity;

@end
