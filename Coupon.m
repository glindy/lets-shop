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

}


- (void)viewDidLoad {
    [super viewDidLoad];
    /* call to trackState:data: increments page views */
    
    [ADBMobile trackState:@"Checkout screen" data:nil];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

// first button //
 
- (IBAction)buyBabyCrew:(id)sender {
 
    NSString *alphabet  = @"abcdefghijklmnopqrstuvwxyz";
    NSMutableString *str = [NSMutableString stringWithCapacity:7];
        for (NSUInteger i = 0U; i < 7; i++) {
            u_int32_t r = arc4random() % [alphabet length];
            unichar c = [alphabet characterAtIndex:r];
            [str appendFormat:@"%C", c];
        }
 
        NSString * prefix = @"bc2";      // Prepend to random
        NSString * purchaseId = [prefix stringByAppendingString:str];
 
    NSMutableDictionary * contextData = [NSMutableDictionary dictionary];
        [contextData setObject:@";Baby Crew;3;32.97" forKey:@"&&products"];
        [contextData setObject:@[purchaseId] forKey:@"m.purchaseId"];
        [contextData setObject:@"1" forKey:@"m.purchase"];
        [contextData setValue:@"12345" forKey:@"app.productId"];
        [contextData setValue:@[purchaseId] forKey:@"app.purchaseId"];
        [contextData setObject:@"order" forKey:@"mobileSiteSection"];
    
                NSLog(@"app.purchaseId:%@", purchaseId);
    
    [ADBMobile trackAction:@"orders" data:contextData];
    

    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Thank you!"
            message: [NSString stringWithFormat:@"Your confirmation number is: %@", purchaseId ]
            preferredStyle:UIAlertControllerStyleAlert];
    
        UIAlertAction * defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                    [self performSegueWithIdentifier:@"gotohomescreen" sender:self];
                    }
            ];
    
            [alert addAction:defaultAction];
            [self presentViewController:alert animated:YES completion:nil];
}


// next button //

 - (IBAction)buyBabyVneck:(id)sender {
 
    NSString *alphabet  = @"abcdefghijklmnopqrstuvwxyz";
    NSMutableString *str = [NSMutableString stringWithCapacity:7];
        for (NSUInteger i = 0U; i < 7; i++) {
            u_int32_t r = arc4random() % [alphabet length];
            unichar c = [alphabet characterAtIndex:r];
            [str appendFormat:@"%C", c];
        }
 
        NSString * prefix = @"bv2";      // Prepend to random
        NSString * purchaseId = [prefix stringByAppendingString:str];
     
     NSMutableDictionary * contextData = [NSMutableDictionary dictionary];
        [contextData setObject:@";Baby V;2;21.98" forKey:@"&&products"];
        [contextData setObject:@[purchaseId] forKey:@"m.purchaseId"];
        [contextData setObject:@"1" forKey:@"m.purchase"];
        [contextData setValue:@"23456" forKey:@"app.productId"];
        [contextData setValue:@[purchaseId] forKey:@"app.purchaseId"];
        [contextData setObject:@"order" forKey:@"mobileSiteSection"];
     
            NSLog(@"app.purchaseId:%@", purchaseId);
     
     [ADBMobile trackAction:@"orders" data:contextData];
     
     
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Thank you!"
            message: [NSString stringWithFormat:@"Your confirmation number is: %@", purchaseId ]
            preferredStyle:UIAlertControllerStyleAlert];
 
        UIAlertAction * defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                    [self performSegueWithIdentifier:@"gotohomescreen" sender:self];
                    }
            ];
 
            [alert addAction:defaultAction];
            [self presentViewController:alert animated:YES completion:nil];
 }

// next button //

- (IBAction)buyKidsCrew:(id)sender {
    
    NSString *alphabet  = @"abcdefghijklmnopqrstuvwxyz";
    NSMutableString *str = [NSMutableString stringWithCapacity:7];
        for (NSUInteger i = 0U; i < 7; i++) {
            u_int32_t r = arc4random() % [alphabet length];
            unichar c = [alphabet characterAtIndex:r];
            [str appendFormat:@"%C", c];
        }
    
        NSString * prefix = @"kc2";      // Prepend to random
        NSString * purchaseId = [prefix stringByAppendingString:str];
    
    NSMutableDictionary * contextData = [NSMutableDictionary dictionary];
        [contextData setObject:@";Kids Crew;3;59.97" forKey:@"&&products"];
        [contextData setObject:@[purchaseId] forKey:@"m.purchaseId"];
        [contextData setObject:@"1" forKey:@"m.purchase"];
        [contextData setValue:@"34567" forKey:@"app.productId"];
        [contextData setValue:@[purchaseId] forKey:@"app.purchaseId"];
        [contextData setObject:@"order" forKey:@"mobileSiteSection"];
    
            NSLog(@"app.purchaseId:%@", purchaseId);
    
    [ADBMobile trackAction:@"orders" data:contextData];
    

    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Thank you!"
                message: [NSString stringWithFormat:@"Your confirmation number is: %@", purchaseId ]
                preferredStyle:UIAlertControllerStyleAlert];
    
        UIAlertAction * defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                    [self performSegueWithIdentifier:@"gotohomescreen" sender:self];
                    }
            ];
    
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
}


// next  button

- (IBAction)buyKidsVneck:(id)sender {
    
    NSString *alphabet  = @"abcdefghijklmnopqrstuvwxyz";
    NSMutableString *str = [NSMutableString stringWithCapacity:7];
    for (NSUInteger i = 0U; i < 7; i++) {
        u_int32_t r = arc4random() % [alphabet length];
        unichar c = [alphabet characterAtIndex:r];
        [str appendFormat:@"%C", c];
    }
    
    NSString * prefix = @"kv2";      // Prepend to random
    NSString * purchaseId = [prefix stringByAppendingString:str];
    
    NSMutableDictionary * contextData = [NSMutableDictionary dictionary];
        [contextData setObject:@";Kids V;2;39.98" forKey:@"&&products"];
        [contextData setObject:@[purchaseId] forKey:@"m.purchaseId"];
        [contextData setObject:@"1" forKey:@"m.purchase"];
        [contextData setValue:@"45678" forKey:@"app.productId"];
        [contextData setValue:@[purchaseId] forKey:@"app.purchaseId"];
        [contextData setObject:@"order" forKey:@"mobileSiteSection"];
    
            NSLog(@"app.purchaseId:%@", purchaseId);
    
    [ADBMobile trackAction:@"orders" data:contextData];
 
    
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Thank you!"
                    message: [NSString stringWithFormat:@"Your confirmation number is: %@", purchaseId ]
                    preferredStyle:UIAlertControllerStyleAlert];
    
        UIAlertAction * defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                    [self performSegueWithIdentifier:@"gotohomescreen" sender:self];
                    }
            ];
    
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
}

// next button //

- (IBAction)buyMensCrew:(id)sender {
    
    NSString *alphabet  = @"abcdefghijklmnopqrstuvwxyz";
    NSMutableString *str = [NSMutableString stringWithCapacity:7];
        for (NSUInteger i = 0U; i < 7; i++) {
            u_int32_t r = arc4random() % [alphabet length];
            unichar c = [alphabet characterAtIndex:r];
            [str appendFormat:@"%C", c];
        }
    
        NSString * prefix = @"mc2";      // Prepend to random
        NSString * purchaseId = [prefix stringByAppendingString:str];
    
    NSMutableDictionary * contextData = [NSMutableDictionary dictionary];
        [contextData setObject:@";Mens Crew;3;74.97" forKey:@"&&products"];
        [contextData setObject:@[purchaseId] forKey:@"m.purchaseId"];
        [contextData setObject:@"1" forKey:@"m.purchase"];
        [contextData setValue:@"56789" forKey:@"app.productId"];
        [contextData setValue:@[purchaseId] forKey:@"app.purchaseId"];
        [contextData setObject:@"order" forKey:@"mobileSiteSection"];
    
            NSLog(@"app.purchaseId:%@", purchaseId);
    
    [ADBMobile trackAction:@"orders" data:contextData];
    
    
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Thank you!"
                    message: [NSString stringWithFormat:@"Your confirmation number is: %@", purchaseId ]
                    preferredStyle:UIAlertControllerStyleAlert];
    
        UIAlertAction * defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                    [self performSegueWithIdentifier:@"gotohomescreen" sender:self];
                    }
            ];
    
            [alert addAction:defaultAction];
            [self presentViewController:alert animated:YES completion:nil];
}

// next button //

- (IBAction)buyMensVneck:(id)sender {
    
    NSString *alphabet  = @"abcdefghijklmnopqrstuvwxyz";
    NSMutableString *str = [NSMutableString stringWithCapacity:7];
        for (NSUInteger i = 0U; i < 7; i++) {
            u_int32_t r = arc4random() % [alphabet length];
            unichar c = [alphabet characterAtIndex:r];
            [str appendFormat:@"%C", c];
        }
    
        NSString * prefix = @"mv2";      // Prepend to random
        NSString * purchaseId = [prefix stringByAppendingString:str];
    
    NSMutableDictionary * contextData = [NSMutableDictionary dictionary];
        [contextData setObject:@";Mens V;1;24.99" forKey:@"&&products"];
        [contextData setObject:@[purchaseId] forKey:@"m.purchaseId"];
        [contextData setObject:@"1" forKey:@"m.purchase"];
        [contextData setValue:@"67891" forKey:@"app.productId"];
        [contextData setValue:@[purchaseId] forKey:@"app.purchaseId"];
        [contextData setObject:@"order" forKey:@"mobileSiteSection"];
    
            NSLog(@"app.purchaseId:%@", purchaseId);
    
    [ADBMobile trackAction:@"orders" data:contextData];
    

    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Thank you!"
            message: [NSString stringWithFormat:@"Your confirmation number is: %@", purchaseId ]
            preferredStyle:UIAlertControllerStyleAlert];
    
        UIAlertAction * defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                    [self performSegueWithIdentifier:@"gotohomescreen" sender:self];
                    }
        ];
    
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
}

// next button //

- (IBAction)buyWomensCrew:(id)sender {
    
    NSString *alphabet  = @"abcdefghijklmnopqrstuvwxyz";
    NSMutableString *str = [NSMutableString stringWithCapacity:7];
        for (NSUInteger i = 0U; i < 7; i++) {
            u_int32_t r = arc4random() % [alphabet length];
            unichar c = [alphabet characterAtIndex:r];
            [str appendFormat:@"%C", c];
        }
    
        NSString * prefix = @"wc2";      // Prepend to random
        NSString * purchaseId = [prefix stringByAppendingString:str];
    
    NSMutableDictionary * contextData = [NSMutableDictionary dictionary];
        [contextData setObject:@";Womens Scoop;3;89.97" forKey:@"&&products"];
        [contextData setObject:@[purchaseId] forKey:@"m.purchaseId"];
        [contextData setObject:@"1" forKey:@"m.purchase"];
        [contextData setValue:@"78910" forKey:@"app.productId"];
        [contextData setValue:@[purchaseId] forKey:@"app.purchaseId"];
        [contextData setObject:@"order" forKey:@"mobileSiteSection"];
    
            NSLog(@"app.purchaseId:%@", purchaseId);
    
    [ADBMobile trackAction:@"orders" data:contextData];
    

    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Thank you!"
            message: [NSString stringWithFormat:@"Your confirmation number is: %@", purchaseId ]
            preferredStyle:UIAlertControllerStyleAlert];
    
        UIAlertAction * defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
                    [self performSegueWithIdentifier:@"gotohomescreen" sender:self];
                    }
        ];
    
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
}


// last button //


- (IBAction)buyWomensVneck:(id)sender {
    
    NSString *alphabet  = @"abcdefghijklmnopqrstuvwxyz";
    NSMutableString *str = [NSMutableString stringWithCapacity:7];
        for (NSUInteger i = 0U; i < 7; i++) {
            u_int32_t r = arc4random() % [alphabet length];
            unichar c = [alphabet characterAtIndex:r];
            [str appendFormat:@"%C", c];
        }
    
        NSString * prefix = @"wv2";      // Prepend to random
        NSString * purchaseId = [prefix stringByAppendingString:str];
    
    NSMutableDictionary * contextData = [NSMutableDictionary dictionary];
        [contextData setObject:@";Womens V;2;59.98" forKey:@"&&products"];
        [contextData setObject:@[purchaseId] forKey:@"m.purchaseId"];
        [contextData setObject:@"1" forKey:@"m.purchase"];
        [contextData setValue:@"89101" forKey:@"app.productId"];
        [contextData setValue:@[purchaseId] forKey:@"app.purchaseId"];
        [contextData setObject:@"order" forKey:@"mobileSiteSection"];
    
            NSLog(@"app.purchaseId:%@", purchaseId);
    
    [ADBMobile trackAction:@"orders" data:contextData];
    

    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Thank you!"
            message: [NSString stringWithFormat:@"Your confirmation number is: %@", purchaseId ]
            preferredStyle:UIAlertControllerStyleAlert];
    
        UIAlertAction * defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
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
