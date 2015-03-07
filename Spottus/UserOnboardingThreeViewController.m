//
//  UserOnboardingThreeViewController.m
//  Spottus
//
//  Created by Irwin Gonzales on 3/4/15.
//  Copyright (c) 2015 Irwin Gonzales. All rights reserved.
//

#import "UserOnboardingThreeViewController.h"
#import "UserOnboardingFourViewController.h"

@interface UserOnboardingThreeViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation UserOnboardingThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView = [UIImageView new];
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UserOnboardingFourViewController *vc = [segue destinationViewController];
}



@end
