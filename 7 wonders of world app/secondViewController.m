//
//  secondViewController.m
//  7 wonders of world app
//
//  Created by Student016 on 25/09/17.
//  Copyright (c) 2017 felix. All rights reserved.
//

#import "secondViewController.h"


@interface secondViewController ()

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    NSURL *url=[NSURL URLWithString:_tempstr];
    
    NSURLRequest *urlrequest=[NSURLRequest requestWithURL:url];
    
    
    [_webview1 loadRequest:urlrequest];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
