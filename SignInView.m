//
//  signinview.m
//  Lets Shop
//
//  Created by gentry on 6/29/17.
//  Copyright © 2017 gentry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SignInView.h"
#import "ADBMobile.h"

@interface SignInView ()

@end

@implementation SignInView {
    int number; // test 1/24 - adding property here for random ID below
}


- (void)viewDidLoad {
    [super viewDidLoad];
    /* My edits start here
     * Adobe Tracking - Analytics
     *
     * call to trackState:data: increments page views
     */
    
    number = 0; // for customerID generation
    
    [ADBMobile trackState:@"Login screen" data:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
}

- (IBAction)button6Click:(id)sender {
    
    // begin test...
     
     number = arc4random() %  + 2014 + 88956229;
     NSString * customerId = [NSString stringWithFormat:@"%i", number];
     
     NSMutableDictionary * eVar4 = [NSMutableDictionary dictionary];
     [eVar4 setObject:@"submit" forKey:@"mobileSiteSection"];
     [eVar4 setValue:@{@"app.customerId": customerId} forKey:@"app.customerId"];
        NSLog(@"app.customerId:%@", customerId);
     
     [ADBMobile trackAction:@"logins" data:eVar4];
     
     // handles ID sync via MCID + auth state [1]; uses data source IC instead of DPID:
    [ADBMobile visitorSyncIdentifiers:@{@"ags163CRM":@[customerId]}
                  authenticationState:ADBMobileVisitorAuthenticationStateAuthenticated];
     
     

     // ... end test

    
    /* ORIGINAL...
     
    NSMutableDictionary * eVar4 = [NSMutableDictionary dictionary];
    [eVar4 setObject:@"submit" forKey:@"mobileSiteSection"];
    [eVar4 setValue:@"88956229" forKey:@"app.customerId"];

    [ADBMobile trackAction:@"logins" data:eVar4];
    
    // handles ID sync via MCID + auth state [1]; uses data source IC instead of DPID:
    [ADBMobile visitorSyncIdentifiers:@{@"ags163CRM":@"88956229"}
                  authenticationState:ADBMobileVisitorAuthenticationStateAuthenticated];
  
     */
    
    // UIAlertView
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Welcome back!"
            message:@"You are signed in"
            preferredStyle:UIAlertControllerStyleAlert];
    
        UIAlertAction * defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action)  {
            [self performSegueWithIdentifier:@"gotowelcomescreen" sender:self];
            }
        ];
    
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
}


@end

/*
 [1] Replaces audienceSetDpid:​dpuuid: methods
 [2] removed audienceVisitorProfile method from documentation
    * syntax:
    * + (NSDictionary *) audienceVisitorProfile;
    * example:
    * NSDictionary *profile = [ADBMobile audienceVisitorProfile];
*/


