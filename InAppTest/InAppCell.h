//
//  InAppCell.h
//  InAppTest
//
//  Created by Daniel Payne on 10/05/2013.
//  Copyright (c) 2013 o2. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InAppCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *descLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UIButton *purchaseButton;

@end
