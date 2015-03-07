//
//  LogInViewController.m
//  Spottus
//
//  Created by Irwin Gonzales on 3/2/15.
//  Copyright (c) 2015 Irwin Gonzales. All rights reserved.
//

#import "LogInViewController.h"
#import "SignUpViewController.h"
#import "RootViewController.h"
#import "UserOnboardingOneViewController.h"
#import "Singleton.h"

@interface LogInViewController ()
@property (strong, nonatomic) IBOutlet UITextField *startEmailLogIn;
@property (strong, nonatomic) IBOutlet UITextField *startPasswordEmail;
@property Singleton *originalObject;


@end

@implementation LogInViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.originalObject = [[Singleton alloc]init];
}
- (IBAction)logInOnButtonPressed:(id)sender
{
    if (self.originalObject == nil)
    {
        self.originalObject.email = self.startEmailLogIn.text;
        self.originalObject.password = self.startPasswordEmail.text;
    }
}

#pragma mark - "Transfer Methods"
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqual:@"LogInSegue"])
    {
        RootViewController *vc = [segue destinationViewController];
        vc.userObject = self.originalObject;
    }
    else([segue.identifier isEqual:@"SignUpSegue"]);
    {
        UserOnboardingOneViewController *vc = [segue destinationViewController];
    }
}

//unwind segue method
-(IBAction)reset:(UIStoryboardSegue *)segue
{

}

#pragma mark - "Memory Methods"
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
