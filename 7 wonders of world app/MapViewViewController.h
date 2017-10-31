//
//  MapViewViewController.h
//  7 wonders of world app
//
//  Created by Student016 on 25/09/17.
//  Copyright (c) 2017 felix. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewViewController : UIViewController<MKMapViewDelegate>



@property (strong, nonatomic) IBOutlet MKMapView *mapview;

@property(nonatomic,retain) MKPointAnnotation *wonder1,*wonder2,*wonder3,*wonder4,*wonder5,*wonder6,*wonder7;

@property(nonatomic,retain)UIButton *btn;




@end
