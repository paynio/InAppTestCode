//
//  InAppCell.m
//  InAppTest
//
//  Created by Daniel Payne on 10/05/2013.
//  Copyright (c) 2013 o2. All rights reserved.
//

#import "InAppCell.h"

@implementation InAppCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
