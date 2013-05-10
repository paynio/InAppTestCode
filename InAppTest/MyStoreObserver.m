//
//  MyStoreObserver.m
//  InAppTest
//
//  Created by Daniel Payne on 10/05/2013.
//  Copyright (c) 2013 o2. All rights reserved.
//

#import "MyStoreObserver.h"

@implementation MyStoreObserver

- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transactions
{
    for (SKPaymentTransaction *transaction in transactions)
    {
        switch (transaction.transactionState)
        {
            case SKPaymentTransactionStatePurchased:
                [self completeTransaction:transaction];
                break;
                
            case SKPaymentTransactionStateFailed:
                [self failedTransaction:transaction];
                break;
            
            case SKPaymentTransactionStateRestored:
                [self restoreTransaction:transaction];
                break;
                
            default:
                break;
        }
    }
}

- (void)completeTransaction:(SKPaymentTransaction*)transaction
{
    NSLog(@"Completed Transaction");
    [self recordTransaction:transaction];
    [self provideContent:transaction.payment.productIdentifier];
    
    [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
}

- (void)restoreTransaction:(SKPaymentTransaction*)transaction
{
    NSLog(@"Restored Transaction");
    [self recordTransaction:transaction];
    [self provideContent:transaction.originalTransaction.payment.productIdentifier];
    
    [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
}

- (void)failedTransaction:(SKPaymentTransaction*)transaction
{
    NSLog(@"Failed Transaction");
    if (transaction.error.code != SKErrorPaymentCancelled)
    {
        NSLog(@"transaction.error.code != SKErrorPaymentCancelled, but %d", transaction.error.code);
    }
    
    [[SKPaymentQueue defaultQueue] finishTransaction:transaction];
}

- (void)recordTransaction:(SKPaymentTransaction*)transaction
{
    // SEND TO SERVER
}

- (void)provideContent:(NSString*)productIdentifier
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Success!" message:[NSString stringWithFormat:@"You have purchased: %@", productIdentifier] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}

@end
