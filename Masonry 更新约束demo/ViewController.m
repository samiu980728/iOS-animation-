//
//  ViewController.m
//  Masonry 更新约束demo
//
//  Created by 萨缪 on 2019/2/20.
//  Copyright © 2019年 萨缪. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "masonryView.h"
@interface ViewController ()

@property (nonatomic, strong) UILabel * label;

@property (nonatomic, assign) CGFloat height;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel * label = [[UILabel alloc] init];
//    label.backgroundColor = [UIColor blueColor];
    label.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"1.jpeg"]];
    label.frame = CGRectMake(200, 200, 200, 110);
//    [self.view addSubview:label];
//    [label mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(self.view.mas_left).offset(100);
//        make.top.equalTo(self.view.mas_top).offset(100);
//        make.height.mas_equalTo(110);
//        make.width.mas_equalTo(200);
//    }];
    UIImageView * imageView = [[UIImageView alloc] init];
    imageView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"1.jpeg"]];
    imageView.frame = CGRectMake(200, 200, 200, 110);
    [self.view addSubview:imageView];
    CABasicAnimation * animation = [CABasicAnimation animationWithKeyPath:@"position"];
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    animation.duration = 3;
    animation.toValue = [NSValue valueWithCGPoint:CGPointMake(200, 500)];
//    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
//    animation.repeatCount = 3;
//    [imageView.layer addAnimation:animation forKey:nil];

#pragma mark Request 现在已经实现了这个抖动效果 但不是永远抖动 需要用到CADisplayLink来让其跟随屏幕永久刷新使得抖动效果永久保持
    [UIView animateWithDuration:5.0 delay:1 usingSpringWithDamping:0.1 initialSpringVelocity:0.5 options:UIViewAnimationOptionCurveLinear animations:^{
        imageView.frame = CGRectMake(200, 220, 200, 110);
    } completion:^(BOOL finished) {
        
    }];
    
//    [self.view addSubview:label];

//    [UIView animateWithDuration:0.5 animations:^{
//        [label mas_remakeConstraints:^(MASConstraintMaker *make) {
//            make.left.equalTo(self.view.mas_left).offset(100);
//            make.top.equalTo(self.view.mas_top).offset(200);
//            make.height.mas_equalTo(110);
//            make.width.mas_equalTo(200);
//        }];
//    }];
    UIView * redView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    CABasicAnimation * animaiton = [CABasicAnimation animationWithKeyPath:@"position"];
    animaiton.removedOnCompletion = NO;
    animaiton.fillMode = kCAFillModeForwards;
    animaiton.duration = 2;
    animaiton.toValue = [NSValue valueWithCGPoint:CGPointMake(400, 400)];
    [redView.layer addAnimation:animaiton forKey:nil];
    
//    [imageView.layer addAnimation:animaiton forKey:nil];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch * touch = [[UITouch alloc] init];
    CGPoint location = [touch locationInView:self.view];
//    [UIView animateWithDuration:5.0 delay:1 usingSpringWithDamping:0.1 initialSpringVelocity:0.5 options:UIViewAnimationOptionCurveLinear animations:^{
//        <#code#>
//    } completion:<#^(BOOL finished)completion#>]
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
