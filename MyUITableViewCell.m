//
//  MyUITableViewCell.m
//  ToDoManager
//
//  Created by Ruby on 9/13/16.
//  Copyright © 2016 Ruby. All rights reserved.
//

#import "MyUITableViewCell.h"

@implementation MyUITableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) setInternalFields:(ToDoEntity *) incomingToDoEntity{
    
    self.toDoTitleLabel.text = incomingToDoEntity.toDoTitle;
    self.toDoAddedByLabel.text = incomingToDoEntity.toDoAddedBy;
    
    self.localToDoEntity = incomingToDoEntity;

}

@end
