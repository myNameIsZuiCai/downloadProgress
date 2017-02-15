//
//  ViewController.m
//  模拟下载进度
//
//  Created by 上海均衡 on 2017/1/19.
//  Copyright © 2017年 上海均衡. All rights reserved.
//

#import "ViewController.h"
#import "progressView.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *percentLabel;

@property (strong, nonatomic) IBOutlet progressView *progressView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}
- (IBAction)progressChange:(UISlider *)sender {
    self.percentLabel.text=[NSString stringWithFormat:@"%.2f%%",sender.value];
    self.progressView.progress=sender.value;
    NSLog(@"%f",sender.value);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
