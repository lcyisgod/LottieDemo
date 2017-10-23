//
//  ViewController.m
//  LottieDemo
//
//  Created by 小龙虾 on 2017/5/4.
//  Copyright © 2017年 杭州迪火科技有限公司. All rights reserved.
//

#import "ViewController.h"
#import <lottie-ios/Lottie/Lottie.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    LOTAnimationView *anmiation = [LOTAnimationView animationNamed:@"fish"];
    anmiation.frame = CGRectMake(self.view.center.x-100, self.view.center.y-100, 200, 200);
    [self.view addSubview:anmiation];
    [anmiation playWithCompletion:^(BOOL animationFinished) {
        NSLog(@"1234");
    }];
    
    LOTAnimationView *anmiation1 = [LOTAnimationView animationNamed:@"servishero_loading"];
    anmiation1.frame = CGRectMake(anmiation.frame.origin.x, CGRectGetMaxY(anmiation.frame)+30, 200, 200);
    [self.view addSubview:anmiation1];
    [anmiation1 play];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
