//
//  ApplePaymentService.h
//  Lab10
//
//  Created by Uji Saori on 2021-03-02.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

NS_ASSUME_NONNULL_BEGIN

@interface ApplePaymentService : NSObject<PaymentDelegate>

@end

NS_ASSUME_NONNULL_END
