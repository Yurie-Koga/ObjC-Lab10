//
//  AmazonPaymentService.m
//  Lab10
//
//  Created by Uji Saori on 2021-03-02.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)processPaymentAmount:(NSInteger *) paymentAmount
{
    NSLog(@"<Amazon> Payment Service is called");
}

- (BOOL)canProcessPayment
{
    // between 0 and 1
    return arc4random_uniform(2);
}

@end
