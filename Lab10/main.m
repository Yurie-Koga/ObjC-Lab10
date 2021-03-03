//
//  main.m
//  Lab10
//
//  Created by Uji Saori on 2021-03-02.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (YES) {
            // random betweeen 100 and 1000
            int payAmount = arc4random_uniform(901) + 100;
            
            NSString *prompt = [NSString stringWithFormat:@"Thank you for shopping at Acme.com. Your total today is $%d. Please select your payment method --- 1: Paybal, 2: Stripee, 3: Amazon, 4: Apple", payAmount];
            NSString *inputStr = [InputHandler getUserInputWithMax:255 AndPrompt:prompt];
            if([[inputStr lowercaseString] isEqualToString:@"q"]) { break; }
            
            int selectedPaymentMethod = (int)[inputStr intValue];
            NSLog(@"selected: %d", selectedPaymentMethod);
            
            PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
            
            switch (selectedPaymentMethod) {
                case 1:;
                {
                    PaypalPaymentService *paypal = [[PaypalPaymentService alloc] init];
                    paymentGateway.delegate = paypal;
                    // should access in the same level as Delegate declaration. otherwise Delegate will be nil
                    [paymentGateway processPaymentAmount:payAmount];

                    break;
                }
                case 2:;
                {
                    StripePaymentService *stripe = [[StripePaymentService alloc] init];
                    paymentGateway.delegate = stripe;
                    [paymentGateway processPaymentAmount:payAmount];
                    break;
                }
                case 3:;
                {
                    AmazonPaymentService *amazon = [[AmazonPaymentService alloc] init];
                    paymentGateway.delegate = amazon;
                    [paymentGateway processPaymentAmount:payAmount];
                    break;
                }
                case 4:;
                {
                    ApplePaymentService *apple = [[ApplePaymentService alloc] init];
                    paymentGateway.delegate = apple;
                    [paymentGateway processPaymentAmount:payAmount];
                    break;
                }
                default:
                    NSLog(@"input is invalid");
                    break;
            }
        }
    }
    return 0;
}
