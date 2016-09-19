//
//  MyUINavigationController.m
//  ToDoManager
//
//  Created by Ruby on 9/13/16.
//  Copyright © 2016 Ruby. All rights reserved.
//

#import "MyUINavigationController.h"

@interface MyUINavigationController ()

@property(strong,nonatomic) NSManagedObjectContext *managedObjectContext;

@end

@implementation MyUINavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) receiveMOC:(NSManagedObjectContext *)incomingMOC{
    
    self.managedObjectContext=incomingMOC;
    id<HandlerMOC> child =(id<HandlerMOC>)self.viewControllers[0];
    [child receiveMOC:self.managedObjectContext];

}

@end
