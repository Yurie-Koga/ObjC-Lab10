//
//  PaymentGateway.m
//  Lab10
//
//  Created by Uji Saori on 2021-03-02.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void)processPaymentAmount:(NSInteger *) paymentAmount
{
    if([self.delegate canProcessPayment]) {
        [self.delegate processPaymentAmount:paymentAmount];
        NSLog(@"Your Payment has been processed successfully");
    } else {
        NSLog(@"Oops! Something went wrong");
    }
}

@end
