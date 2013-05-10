//
//  ViewController.h
//  InAppTest
//
//  Created by Daniel Payne on 10/05/2013.
//  Copyright (c) 2013 o2. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <StoreKit/StoreKit.h>

@interface ViewController : UIViewController <SKProductsRequestDelegate, UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
- (IBAction)purchasePressed:(id)sender;

@end
