//
//  LocationScreen.m
//  E-Fiesta
//
//  Created by nayan mistry on 18/02/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import "LocationScreen.h"
#define METERS_PER_MILE 1609.344

@interface LocationScreen ()

@end
//The Latitude of Vandan Party Plot is 23.0156575. The Longitude of Vandan Party Plot is 72.5161384. 
@implementation LocationScreen
@synthesize mapView;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.mapView.delegate = self;
    btnStandard.backgroundColor=[UIColor blackColor];
    [btnStandard setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    locationManager = [[CLLocationManager alloc] init];
    locationManager.delegate = self;
    locationManager.distanceFilter = kCLDistanceFilterNone;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [locationManager startUpdatingLocation];
    
    if (([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0 &&
        [CLLocationManager authorizationStatus] != kCLAuthorizationStatusAuthorizedWhenInUse) ||
        [CLLocationManager authorizationStatus] != kCLAuthorizationStatusAuthorizedAlways
        ) {
        // Will open an confirm dialog to get user's approval
        [locationManager requestWhenInUseAuthorization];
        //[_locationManager requestAlwaysAuthorization];
    } else {
        [locationManager startUpdatingLocation]; //Will update location immediately
    }
    
    self.mapView.showsUserLocation = YES;
    
    

 }
- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate,800,800);
    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
    
    // Add an annotation
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = userLocation.coordinate;
    point.title = @"Party Ploat";
    point.subtitle = @"Vandan";
    
    [self.mapView addAnnotation:point];
    
    CLLocationCoordinate2D coord=CLLocationCoordinate2DMake(23.022505, 72.571362);
    MKPointAnnotation * pointAnnotation = [[MKPointAnnotation alloc] init];
    pointAnnotation.title = @"Party Plot";
    pointAnnotation.subtitle = @"Kesar";
    pointAnnotation.coordinate = coord;
    [self.mapView addAnnotation:pointAnnotation];
    
    
    
    CLLocationCoordinate2D coord2=CLLocationCoordinate2DMake(23.985244, 72.494203);
    MKPointAnnotation * pointAnnotation2 = [[MKPointAnnotation alloc] init];
    pointAnnotation2.title = @"Party Plot";
    pointAnnotation2.subtitle = @"Jalsa";
    pointAnnotation2.coordinate = coord2;
    [self.mapView addAnnotation:pointAnnotation2];
    
    CLLocationCoordinate2D coord3=CLLocationCoordinate2DMake(23.022505, 72.571362);
    MKPointAnnotation * pointAnnotation3 = [[MKPointAnnotation alloc] init];
    pointAnnotation3.title = @"Party Plot";
    pointAnnotation3.subtitle = @"Panchratna";
    pointAnnotation3.coordinate = coord3;
    [self.mapView addAnnotation:pointAnnotation3];
    
    CLLocationCoordinate2D coord4=CLLocationCoordinate2DMake(23.056151, 72.547933);
    MKPointAnnotation * pointAnnotation4 = [[MKPointAnnotation alloc] init];
    pointAnnotation4.title = @"Party Plot";
    pointAnnotation4.subtitle = @"Manorama";
    pointAnnotation4.coordinate = coord4;
    [self.mapView addAnnotation:pointAnnotation4];
    
    CLLocationCoordinate2D coord5=CLLocationCoordinate2DMake(23.1133442, 72.5341625);
    MKPointAnnotation * pointAnnotation5 = [[MKPointAnnotation alloc] init];
    pointAnnotation5.title = @"Party Plot";
    pointAnnotation5.subtitle = @"Prasang";
    pointAnnotation5.coordinate = coord5;
    [self.mapView addAnnotation:pointAnnotation5];
}

#pragma mark - CLLocationManagerDelegate
- (void)locationManager:(CLLocationManager*)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
    switch (status) {
        case kCLAuthorizationStatusNotDetermined: {
            NSLog(@"User still thinking..");
        } break;
        case kCLAuthorizationStatusDenied: {
            NSLog(@"User hates you");
        } break;
        case kCLAuthorizationStatusAuthorizedWhenInUse:
        case kCLAuthorizationStatusAuthorizedAlways: {
            [locationManager startUpdatingLocation]; //Will update location immediately
        } break;
        default:
            break;
    }
}
- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"OldLocation %f %f", oldLocation.coordinate.latitude, oldLocation.coordinate.longitude);
    NSLog(@"NewLocation %f %f", newLocation.coordinate.latitude, newLocation.coordinate.longitude);
    MKCoordinateRegion region;
    MKCoordinateSpan span;
    span.latitudeDelta = 2.5;
    span.longitudeDelta = 2.5;
    CLLocationCoordinate2D location;
    location.latitude = newLocation.coordinate.latitude;
    location.longitude = newLocation.coordinate.longitude;
    
    region.span = span;
    region.center = location;
    if (!self.alreadySetZoomScale)
    {
        MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(newLocation.coordinate, 200000, 200000); // 1 mile = 1609.34 meters
        self.mapView.region = region;
        [self.mapView setRegion:region animated:YES];
        self.alreadySetZoomScale = YES;
    }
    else
    {
//        [self.mapView setCenterCoordinate:newLocation.coordinate animated:YES];
    }
//    [self.mapView setRegion:region animated:YES];
    
}

- (void)viewWillAppear:(BOOL)animated {
    // 1
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 23.030357;
    zoomLocation.longitude= 72.517845;
    
    // 2
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.5*METERS_PER_MILE, 0.5*METERS_PER_MILE);
    viewRegion.span.longitudeDelta  = 0.05;
    viewRegion.span.latitudeDelta  = 0.05;
    // 3
    [mapView setRegion:viewRegion animated:YES];
}
-(IBAction)onChangeType:(id)sender
{
    UIButton *btn=sender;
    btnHybride.backgroundColor=[UIColor grayColor];
    [btnHybride setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    btnSetellite.backgroundColor=[UIColor grayColor];
    [btnSetellite setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    btnStandard.backgroundColor=[UIColor grayColor];
    [btnStandard setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    if (btn.tag==1)
    {
        [mapView setMapType:MKMapTypeStandard];
        btn.backgroundColor=[UIColor blackColor];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
    else if (btn.tag==2)
    {
        [mapView setMapType:MKMapTypeSatellite];
        btn.backgroundColor=[UIColor blackColor];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
    else
    {
        [mapView setMapType:MKMapTypeHybrid];
        btn.backgroundColor=[UIColor blackColor];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
}
//- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
//{
//    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 800, 800);
//    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
//}
//- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
//{
//    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 800, 800);
//    [self.mapView setRegion:[self.mapView regionThatFits:region] animated:YES];
//    
//    // Add an annotation
//    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
//    point.coordinate = userLocation.coordinate;
//    point.title = @"Where am I?";
//    point.subtitle = @"I'm here!!!";
//    
//    [self.mapView addAnnotation:point];
//}
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
