//
//  UserOnboardingOneViewController.m
//  Spottus
//
//  Created by Irwin Gonzales on 3/4/15.
//  Copyright (c) 2015 Irwin Gonzales. All rights reserved.
//

#import "UserOnboardingOneViewController.h"
#import "UserOnboardingTwoViewController.h"

@interface UserOnboardingOneViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation UserOnboardingOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView = [UIImageView new];
    self.view.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    UserOnboardingTwoViewController *vc = [segue destinationViewController];
}



@end
