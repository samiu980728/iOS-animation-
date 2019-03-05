//
//  masonryView.m
//  Masonry 更新约束demo
//
//  Created by 萨缪 on 2019/2/20.
//  Copyright © 2019年 萨缪. All rights reserved.
//

#import "masonryView.h"
#import <Masonry.h>
@implementation masonryView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blueColor];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.viewHeight = 5;
    [self mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(self.superview.mas_width);
        make.top.mas_equalTo(self.superview.mas_top).offset(300);
        make.height.mas_equalTo(self.viewHeight);
    }];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
