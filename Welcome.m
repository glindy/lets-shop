//
//  Welcome.m
//  Lets Shop
//
//  Created by gentry on 6/29/17.
//  Copyright © 2017 gentry. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Welcome.h"
#import "ADBMobile.h"

@interface Welcome ()

@end


@implementation Welcome {

}
// page after login

- (void)viewDidLoad {
    [super viewDidLoad];
    /* My edits start here
     * Adobe Tracking - Analytics
     *
     * call to trackState:data: increments page views
     */
    
    [ADBMobile trackState:@"Welcome" data:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
}

- (IBAction)button7Click:(id)sender {
    NSMutableDictionary * button7 = [NSMutableDictionary dictionary];
    [button7 setObject:@"Start Shopping" forKey:@"mobileSiteSection"];
    
    [ADBMobile trackAction:@"button_click" data:button7];
}

- (IBAction)button8Click:(id)sender {
    NSMutableDictionary * button8 = [NSMutableDictionary dictionary];
    [button8 setObject:@"Logout" forKey:@"mobileSiteSection"];
    
    [ADBMobile trackAction:@"button_click" data:button8];
    
    // handles authState change to 'logged out'; uses data source IC instead of DPID:
    [ADBMobile visitorSyncIdentifiers:@{@"ags163CRM":@"88956229"}
                authenticationState:ADBMobileVisitorAuthenticationStateLoggedOut];
    
    // UIViewAlert
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:@"Goodbye"
            message:@"You are logged out"
            preferredStyle:UIAlertControllerStyleAlert];
    
        UIAlertAction  * defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
            [self performSegueWithIdentifier:@"gotohomescreen" sender:self];
            }
        ];
    
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
}



@end
