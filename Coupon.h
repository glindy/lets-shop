//
//  Coupon.h
//  Lets Shop
//
//  Created by gentry on 7/18/17.
//  Copyright © 2017 gentry. All rights reserved.
//
// FOR TARGET TESTING

#ifndef Coupon_h
#define Coupon_h


#endif /* Coupon_h */

#import <UIKit/UIKit.h>

@interface CouponView : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *dataLabel;
@property (strong, nonatomic) id dataObject;

// testing number - 1/24:
- (IBAction)generateNumber:(id)sender;

@end
