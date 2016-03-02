//
//  SYProfileController.m
//  zhihuDaily
//
//  Created by yang on 16/3/2.
//  Copyright © 2016年 yang. All rights reserved.
//

#import "SYProfileController.h"
#import "UIImageView+WebCache.h"
#import "SYAccount.h"

@interface SYProfileController ()
@property (weak, nonatomic) IBOutlet UIImageView *avatarImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation SYProfileController

- (void)awakeFromNib {
    self.avatarImageView.layer.cornerRadius = 40;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.avatarImageView sd_setImageWithURL:[NSURL URLWithString:[SYAccount sharedAccount].avatar]];
    self.nameLabel.text = [SYAccount sharedAccount].name;
    
    NSLog(@"sasdfsf");
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
