//
//  LocationScreen.h
//  E-Fiesta
//
//  Created by nayan mistry on 18/02/16.
//  Copyright © 2016 PC-104. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface LocationScreen : UIViewController<MKMapViewDelegate,CLLocationManagerDelegate>
{
    IBOutlet UIButton *btnStandard,*btnSetellite,*btnHybride;
    CLLocationManager *locationManager;

}
@property (nonatomic) BOOL alreadySetZoomScale;
@property (nonatomic, strong) IBOutlet MKMapView *mapView;

@end
