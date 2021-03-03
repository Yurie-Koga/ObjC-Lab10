//
//  PaymentGateway.h
//  Lab10
//
//  Created by Uji Saori on 2021-03-02.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// this class is Delegator
@class PaymentGateway;

@protocol PaymentDelegate <NSObject>

- (void)processPaymentAmount:(NSInteger *) paymentAmount;
- (BOOL)canProcessPayment;

@end


@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> delegate;

- (void)processPaymentAmount:(NSInteger *) paymentAmount;

@end

NS_ASSUME_NONNULL_END
