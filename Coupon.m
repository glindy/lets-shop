//
//  Coupon.m
//  Lets Shop
//
//  Created by gentry on 7/18/17.
//  Copyright © 2017 gentry. All rights reserved.
//
// FOR TARGET TESTING

#import <Foundation/Foundation.h>
#import "Coupon.h"
#import "ADBMobile.h"

@interface CouponView ()

@end

@implementation CouponView {
    int number; // testing for number generator; added this here
}


- (void)viewDidLoad {
    [super viewDidLoad];
    /* My edits start here
     * Adobe Tracking - Analytics
     *
     * call to trackState:data: increments page views
     */
    
    [ADBMobile trackState:@"Coupon screen" data:nil];
    
    // testing for number generator:
    number = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

    // THIS WORKS: Generate number on 'Test Order Submit' button:

- (IBAction)generateNumber:(id)sender {
    number = arc4random() % + 1000000 + 9999999;
    NSString * randomNumber = [NSString stringWithFormat:@"%i", number];
    
    
    // Prepend to random:
    NSString * prefix = @"z";
    NSString * purchaseId = [prefix stringByAppendingString:randomNumber];
    
    
    NSMutableDictionary * purchase = [NSMutableDictionary dictionary];
    [purchase setObject:@"order" forKey:@"mobileSiteSection"];
    [purchase setValue:@{@"app.purchaseId": purchaseId} forKey:@"app.purchaseId"];
    NSLog(@"app.purchaseId:%@", purchaseId);

    [ADBMobile trackAction:@"orders" data:purchase];
    
    
    // UIAlertView
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Thank you!"
            message: [NSString stringWithFormat:@"Your order number is %@", purchaseId ]
            preferredStyle:UIAlertControllerStyleAlert];
    
        UIAlertAction * defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action)  {
            [self performSegueWithIdentifier:@"gotohomescreen" sender:self];
            }
        ];
    
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
}


/* for Target test

// this is content location (mbox)
 
 - (IBAction)targetMbox:(id)sender {
     NSDictionary * parametersTarget = @{
        @"couponCode1":@"FREESHIP",
        @"couponCode2":@"20OFF"};
 }

 what about this?
- (UIDynamicItemBehavior)
*/


/* Need to create mbox here:

ADBTargetLocationRequest * myRequest =
 [ADBMobile targetCreateRequestWithName:@"TargetCouponCode"
 defaultContent:@"Free Shipping! Use code FREESHIP" parameters: parametersTarget];
 
* need to figure out parameters in ADBTargetLocationRequest call
 
*/

@end
