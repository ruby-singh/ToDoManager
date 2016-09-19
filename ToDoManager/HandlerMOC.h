//
//  HandlerMOC.h
//  ToDoManager
//
//  Created by Ruby on 9/13/16.
//  Copyright © 2016 Ruby. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HandlerMOC <NSObject>

- (void) receiveMOC:(NSManagedObjectContext *)incomingMOC;

@end
