//
//  MapViewViewController.m
//  7 wonders of world app
//
//  Created by Student016 on 25/09/17.
//  Copyright (c) 2017 felix. All rights reserved.
//

#import "MapViewViewController.h"
#import <MapKit/MapKit.h>
#import "secondViewController.h"

@interface MapViewViewController ()

@end

@implementation MapViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    CLLocationCoordinate2D Locat1,Locat2,Locat3,Locat4,Locat5,Locat6,Locat7;
    
    _wonder1=[[MKPointAnnotation alloc]init];
    
    _wonder1.title=@"Chichen Itza";
    _wonder1.subtitle=@"Mayan City, Mexico";
    
    Locat1.latitude=20.6667;
    Locat1.longitude=-88.5667;
    
    _wonder1.coordinate=Locat1;
    
    
    _wonder2=[[MKPointAnnotation alloc]init];
    _wonder2.title=@"Christ Redeemer";
    _wonder2.subtitle=@"Brazil";
    
    Locat2.latitude=22.9519;
    Locat2.longitude=43.2105;
    
    _wonder2.coordinate=Locat2;
    
    _wonder3=[[MKPointAnnotation alloc]init];
    _wonder3.title=@"The Great Wall";
    _wonder3.subtitle=@"China";
    
    Locat3.latitude=40.4319;
    Locat3.longitude=116.5704;
    _wonder3.coordinate=Locat3;
    
    _wonder4=[[MKPointAnnotation alloc]init];
    _wonder4.title=@"Machu Picchu";
    _wonder4.subtitle=@"Peru";
    
    Locat4.latitude=13.1631;
    Locat4.longitude=13.1631;
    _wonder4.coordinate=Locat4;
    

    _wonder5=[[MKPointAnnotation alloc]init];
    _wonder5.title=@"Petra, Jordan ";
    _wonder5.subtitle=@"Ancient City.";
    
    Locat5.latitude=30.3285;
    Locat5.longitude=35.4444;
    _wonder5.coordinate=Locat5;
    
    _wonder6=[[MKPointAnnotation alloc]init];
    _wonder6.title=@"The Roman Colosseum";
    _wonder6.subtitle=@"Italy";
    
    Locat6.latitude=41.8902;
    Locat6.longitude=12.4922;
    _wonder6.coordinate=Locat6;
    
    _wonder7=[[MKPointAnnotation alloc]init];
    _wonder7.title=@"The Taj Mahal";
    _wonder7.subtitle=@"India";
    
    Locat7.latitude=27.1750;
    Locat7.longitude=78.0422;
    _wonder7.coordinate=Locat7;

    [self.view addSubview:_mapview];
    
    [_mapview addAnnotation:_wonder1];
    [_mapview addAnnotation:_wonder2];
    [_mapview addAnnotation:_wonder3];
    [_mapview addAnnotation:_wonder4];
    [_mapview addAnnotation:_wonder5];
    [_mapview addAnnotation:_wonder6];
    [_mapview addAnnotation:_wonder7];
    
    
    
    
    
}
-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKPinAnnotationView *pin=[[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"pin"];
    
    pin.canShowCallout=YES;
    pin.pinColor=MKPinAnnotationColorPurple;
    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 50)];
    
    UIImageView *image=[[UIImageView alloc]initWithFrame:CGRectMake(5, 5, 40, 30)];
    
    if(annotation==_wonder1)
    {
        image.image=[UIImage imageNamed:@"Chichen.jpeg"];
        UIButton *btn1=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn1.frame=CGRectMake(60, 15, 20, 20);
        
        [btn1 addTarget:self action:@selector(btnclick1) forControlEvents:UIControlEventTouchUpInside];
       
        
        [view addSubview:btn1];
        
    }
    else if (annotation==_wonder2)
    {
        image.image=[UIImage imageNamed:@"Redeemer.jpeg"];
        UIButton *btn2=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn2.frame=CGRectMake(60, 15, 20, 20);
        
        [btn2 addTarget:self action:@selector(btnclick2) forControlEvents:UIControlEventTouchUpInside];
        
        
        [view addSubview:btn2];
    }
    else if (annotation==_wonder3)
    {
        image.image=[UIImage imageNamed:@"ChinaWall.jpeg"];
        UIButton *btn3=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn3.frame=CGRectMake(60, 15, 20, 20);
        
        [btn3 addTarget:self action:@selector(btnclick3) forControlEvents:UIControlEventTouchUpInside];
        
        
        [view addSubview:btn3];
    }
    else if (annotation==_wonder4)
    {
        image.image=[UIImage imageNamed:@"Macchu.jpeg"];
        UIButton *btn4=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn4.frame=CGRectMake(60, 15, 20, 20);
        
        [btn4 addTarget:self action:@selector(btnclick4) forControlEvents:UIControlEventTouchUpInside];
      
        
        [view addSubview:btn4];
    }
    else if (annotation==_wonder5)
    {
        image.image=[UIImage imageNamed:@"Petra.jpeg"];
        UIButton *btn5=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn5.frame=CGRectMake(60, 15, 20, 20);
        
        [btn5 addTarget:self action:@selector(btnclick5) forControlEvents:UIControlEventTouchUpInside];
  
        
        [view addSubview:btn5];
    }
    else if (annotation==_wonder6)
    {
        image.image=[UIImage imageNamed:@"RomanColosseum.jpeg"];
        UIButton *btn6=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn6.frame=CGRectMake(60, 15, 20, 20);
        
        [btn6 addTarget:self action:@selector(btnclick6) forControlEvents:UIControlEventTouchUpInside];
      
        
        [view addSubview:btn6];

        
    }
    else
    {
        image.image=[UIImage imageNamed:@"TajMahal.jpeg"];
        UIButton *btn7=[UIButton buttonWithType:UIButtonTypeInfoDark];
        btn7.frame=CGRectMake(60, 15, 20, 20);
        
        [btn7 addTarget:self action:@selector(btnclick7) forControlEvents:UIControlEventTouchUpInside];
      
        
        [view addSubview:btn7];
    }
    
    [view addSubview:image];
    
    pin.rightCalloutAccessoryView=view;
    
    
    return pin;
    
}


-(void)btnclick1
{
    UIStoryboard *storyboard1=[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    secondViewController *svc1=[storyboard1 instantiateViewControllerWithIdentifier:@"svc"];
    
    [self.navigationController pushViewController:svc1 animated:YES];
    

   NSString *str1=@"https://en.wikipedia.org/wiki/Chichen_Itza";
    
    svc1.tempstr=str1;
   

    
}



-(void)btnclick2
{
    UIStoryboard *storyboard2=[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    secondViewController *svc2=[storyboard2 instantiateViewControllerWithIdentifier:@"svc"];
    
    [self.navigationController pushViewController:svc2 animated:YES];
    
    
    NSString *str2=@"https://en.wikipedia.org/wiki/Christ_the_Redeemer_%28statue%29";
    
   svc2.tempstr=str2;

}


-(void)btnclick3
{
    UIStoryboard *storyboard3=[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    secondViewController *svc3=[storyboard3 instantiateViewControllerWithIdentifier:@"svc"];
    
      [self.navigationController pushViewController:svc3 animated:YES];
    
    
    NSString *str3=@"https://en.wikipedia.org/wiki/Great_Wall_of_China";
    
    svc3.tempstr=str3;
    
}



-(void)btnclick4
{
    UIStoryboard *storyboard4=[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    secondViewController *svc4=[storyboard4 instantiateViewControllerWithIdentifier:@"svc"];
    
    
    [self.navigationController pushViewController:svc4 animated:YES];
    
    
    NSString *str4=@"https://en.wikipedia.org/wiki/Machu_Picchu";
    
    svc4.tempstr=str4;
   

}

-(void)btnclick5
{
    UIStoryboard *storyboard5=[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    secondViewController *svc5=[storyboard5 instantiateViewControllerWithIdentifier:@"svc"];
    
       [self.navigationController pushViewController:svc5 animated:YES];
    
    
    NSString *str5=@"https://en.wikipedia.org/wiki/Petra";
    
    svc5.tempstr=str5;
    
}

-(void)btnclick6
{
    UIStoryboard *storyboard6=[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    secondViewController *svc6=[storyboard6 instantiateViewControllerWithIdentifier:@"svc"];
    
    
    [self.navigationController pushViewController:svc6 animated:YES];
    
    
    NSString *str6=@"https://en.wikipedia.org/wiki/Colosseum";
    
    svc6.tempstr=str6;
  
    
    
}

-(void)btnclick7
{
    UIStoryboard *storyboard7=[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    secondViewController *svc7=[storyboard7 instantiateViewControllerWithIdentifier:@"svc"];
    
      [self.navigationController pushViewController:svc7 animated:YES];
    
    
    NSString *str7=@"https://en.wikipedia.org/wiki/Taj_Mahal";
    
    svc7.tempstr=str7;
 
    
    
}

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
