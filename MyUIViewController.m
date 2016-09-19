//
//  MyUIViewController.m
//  ToDoManager
//
//  Created by Ruby on 9/13/16.
//  Copyright © 2016 Ruby. All rights reserved.
//

#import "MyUIViewController.h"


@interface MyUIViewController ()

@property(strong,nonatomic) NSManagedObjectContext *managedObjectContext;
@property(strong,nonatomic) ToDoEntity *localToDoEntity;
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UITextView *descriptionField;

@property (weak, nonatomic) IBOutlet UITextField *addedByTextField;

@property (nonatomic,assign) BOOL wasDeleted;

@end

@implementation MyUIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (void) viewWillAppear:(BOOL)animated{
    
    //setup delete state
    self.wasDeleted = NO;
    
    
    //setup Form
    
    
    self.titleField.text = self.localToDoEntity.toDoTitle;
    self.descriptionField.text = self.localToDoEntity.toDoDescription;
    self.addedByTextField.text = self.localToDoEntity.toDoAddedBy;
    
    //detect edit ends
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewDidEndEditing:) name:UITextViewTextDidEndEditingNotification object:self];
    
    
    
    
}


- (void) saveMyToDoEnity{
    
    NSError *err;
    BOOL success = [self.managedObjectContext save:&err];
    if(!success){
        
        @throw [NSException exceptionWithName:NSGenericException reason:@"Couldn't Save" userInfo:@{NSUnderlyingErrorKey:err}];
    }
    
}


- (void) receiveMOC:(NSManagedObjectContext *)incomingMOC{
    
    self.managedObjectContext=incomingMOC;
    
    
}
- (IBAction)addedByEdited:(id)sender {
    
    self.localToDoEntity.toDoAddedBy = self.addedByTextField.text;
    
    [self saveMyToDoEnity];
}

- (void) receiveToDoEntity:(ToDoEntity *)incomingToDoEntity{
    
    self.localToDoEntity = incomingToDoEntity;
}

- (IBAction)deleteTapped:(id)sender {
    self.wasDeleted=YES;
    
    [self.managedObjectContext deleteObject:self.localToDoEntity];
    //if(self.localToDoEntity != nil){
        [self saveMyToDoEnity];
    //}
    [self.navigationController popViewControllerAnimated:YES];
    
}


- (void) viewWillDisappear:(BOOL)animated{
    
    if(self.wasDeleted == NO){
        self.localToDoEntity.toDoTitle = self.titleField.text;
        
        self.localToDoEntity.toDoDescription = self.descriptionField.text;
        
        
        self.localToDoEntity.toDoAddedBy = self.addedByTextField.text;
        
        [self saveMyToDoEnity];
        
    }
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewDidEndEditing:) name:UITextViewTextDidEndEditingNotification object:self];
}
- (void) textViewDidEndEditing:(NSNotification *) notification{
    
    if([notification object] == self){
        self.localToDoEntity.toDoDescription = self.descriptionField.text;
        
        [self saveMyToDoEnity];
    }
    
}
- (IBAction)textFieldEditing:(id)sender {
    self.localToDoEntity.toDoTitle = self.titleField.text;
    
    [self saveMyToDoEnity];
    
}

@end
