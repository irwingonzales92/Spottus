//
//  UserOnboardingFourViewController.m
//  Spottus
//
//  Created by Irwin Gonzales on 3/4/15.
//  Copyright (c) 2015 Irwin Gonzales. All rights reserved.
//

#import "UserOnboardingFourViewController.h"
#import "SignUpViewController.h"

@interface UserOnboardingFourViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation UserOnboardingFourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView = [UIImageView new];
    self.view.backgroundColor = [UIColor cyanColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SignUpViewController *vc = [segue destinationViewController];
}


@end
