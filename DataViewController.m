//
//  DataViewController.m
//  Lets Shop
//
//  Created by gentry on 6/5/17.
//  Copyright © 2017 gentry. All rights reserved.
//

#import "DataViewController.h"
/* My edits here
 * Adobe Tracking - Analytics
 * import ADBMobile.h so we can use methods from SDK
 */
#import "ADBMobile.h"



@interface DataViewController ()

@end

@implementation DataViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    /* My edits start here
     * Adobe Tracking - Analytics
     *
     * call to trackState:data: increments page views
     */
    
    [ADBMobile trackState:@"Home screen" data:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
}

/* Home screen button object dictionaries and keys: */

- (IBAction)button1Click:(id)sender {
    NSMutableDictionary * button1 = [NSMutableDictionary dictionary];
    [button1 setObject:@"Baby" forKey:@"mobileSiteSection"];
    
    [ADBMobile trackAction:@"button_click" data:button1];
}

- (IBAction)button2Click:(id)sender {
    NSMutableDictionary * button2 = [NSMutableDictionary dictionary];
    [button2 setObject:@"Kids" forKey:@"mobileSiteSection"];
        
    [ADBMobile trackAction:@"button_click" data:button2];
}

- (IBAction)button3Click:(id)sender {
    NSMutableDictionary * button3 = [NSMutableDictionary dictionary];
    [button3 setObject:@"Mens" forKey:@"mobileSiteSection"];
    
    [ADBMobile trackAction:@"button_click" data:button3];
}

- (IBAction)button4Click:(id)sender {
    NSMutableDictionary * button4 = [NSMutableDictionary dictionary];
    [button4 setObject:@"Womens" forKey:@"mobileSiteSection"];
    
    [ADBMobile trackAction:@"button_click" data:button4];
}
    
- (IBAction)button5Click:(id)sender {
    NSMutableDictionary * button5 = [NSMutableDictionary dictionary];
    [button5 setObject:@"Login" forKey:@"mobileSiteSection"];
    
    [ADBMobile trackAction:@"button_click" data:button5];
}
 
- (IBAction)button8Click:(id)sender {
    NSMutableDictionary * button8 = [NSMutableDictionary dictionary];
        [button8 setObject:@"Checkout" forKey:@"mobileSiteSection"];
 
    [ADBMobile trackAction:@"button_click" data:button8];
}


@end

/* Saving original printed button titles:
 
 - (IBAction) buttonClicked:(id)sender {
 NSLog(@"button clicked: %@", [sender currentTitle]);
 }
 
 */
