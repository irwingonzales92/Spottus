//
//  MapViewController.h
//  Spottus
//
//  Created by Irwin Gonzales on 3/1/15.
//  Copyright (c) 2015 Irwin Gonzales. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface MapViewController : UIViewController

@property (nonatomic, strong) PFObject *locationObject;

@end
