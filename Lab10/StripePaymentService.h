//
//  StripePaymentService.h
//  Lab10
//
//  Created by Uji Saori on 2021-03-02.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface StripePaymentService : NSObject<PaymentDelegate>

- (void)processPaymentAmount:(NSInteger *) paymentAmount;
- (BOOL)canProcessPayment;

@end

NS_ASSUME_NONNULL_END
