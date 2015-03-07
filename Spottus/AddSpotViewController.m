//
//  AddSpotViewController.m
//  Spottus
//
//  Created by Irwin Gonzales on 3/3/15.
//  Copyright (c) 2015 Irwin Gonzales. All rights reserved.
//

#import "AddSpotViewController.h"
#import <MapKit/MapKit.h>
@import MapKit;

@interface AddSpotViewController () <MKMapViewDelegate,CLLocationManagerDelegate>

@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) CLLocationManager *locationManager;

@end

@implementation AddSpotViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _mapView = [[MKMapView alloc]init];
    _mapView.delegate = self;

    _locationManager = [[CLLocationManager alloc]init];
    _locationManager.delegate = self;

}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    CLLocationCoordinate2D myLocation = [userLocation coordinate];
    MKCoordinateRegion zoomRegion = MKCoordinateRegionMakeWithDistance(myLocation, 1200, 1200);
    [_mapView setRegion:zoomRegion animated:YES];
}

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKAnnotationView *pin = [[MKAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:nil];
    pin.canShowCallout = YES;
    UIButton *rightbutton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    [rightbutton setTitle:nil forState:UIControlStateNormal];
    rightbutton.tintColor = [UIColor redColor];
    [pin setRightCalloutAccessoryView:rightbutton];

    return pin;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
