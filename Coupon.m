//
//  Coupon.m
//  Lets Shop
//
//  Created by gentry on 7/18/17.
//  Copyright © 2017 gentry. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "Coupon.h"
#import "ADBMobile.h"

@interface CouponView ()

@end

@implementation CouponView {
    int number; 
}


- (void)viewDidLoad {
    [super viewDidLoad];
    /* Adobe Tracking - Analytics
     * call to trackState:data: increments page views
     */
    
    [ADBMobile trackState:@"Coupon screen" data:nil];

    number = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)generateNumber:(id)sender {
    // Proxy for purchaseId
    number = arc4random() % + 1000000 + 9999999;
    NSString * randomNumber = [NSString stringWithFormat:@"%i", number];
   
    // Prepend to random:
    NSString * prefix = @"z"; // indicates mobile purchase for classification
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


@end
