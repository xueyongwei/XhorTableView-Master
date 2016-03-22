//
//  ViewController.m
//  XhorTableView-Master
//
//  Created by xueyongwei on 16/3/22.
//  Copyright © 2016年 xueyongwei. All rights reserved.
//

#import "ViewController.h"
#import "XhorTableView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet XhorTableView *xbView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.xbView XhorTbaleViewDidSelectedWIthBlock:^(NSInteger index) {
        NSLog(@"点击了第 %ld 个",index);
    }];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
