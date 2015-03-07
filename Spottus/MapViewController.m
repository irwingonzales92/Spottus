//
//  MapViewController.m
//  Spottus
//
//  Created by Irwin Gonzales on 3/1/15.
//  Copyright (c) 2015 Irwin Gonzales. All rights reserved.
//

#import "MapViewController.h"
#import <MapKit/MapKit.h>

@interface MapViewController () <CLLocationManagerDelegate, MKMapViewDelegate>
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property CLLocationManager *locationManager;

@end

@implementation MapViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.mapView.delegate = self;
    self.locationManager.delegate = self;
    self.locationManager = [CLLocationManager new];

}

#pragma mark - "Memory Methods"
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    CLLocationCoordinate2D location = [userLocation coordinate];
    MKCoordinateRegion zoomRegion = MKCoordinateRegionMakeWithDistance(location, 500, 500);
    [self.mapView setRegion:zoomRegion animated:YES];

}

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKAnnotationView *pin = [[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:nil];

    pin.canShowCallout = YES;
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    [rightButton setTitle:@"What Up Nigga" forState:UIControlStateNormal];

    return pin;
}

@end
