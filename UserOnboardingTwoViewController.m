//
//  UserOnboardingTwoViewController.m
//  Spottus
//
//  Created by Irwin Gonzales on 3/4/15.
//  Copyright (c) 2015 Irwin Gonzales. All rights reserved.
//

#import "UserOnboardingTwoViewController.h"
#import "UserOnboardingThreeViewController.h"

@interface UserOnboardingTwoViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation UserOnboardingTwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView = [UIImageView new];
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UserOnboardingThreeViewController *vc = [segue destinationViewController];
}

@end
