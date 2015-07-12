//
//  ViewController.m
//  HolidayDestinations
//
//  Created by NP ECE BME Centre on 12/7/15.
//  Copyright (c) 2015 NP ECE BME Centre. All rights reserved.
//

#import "HomeViewController.h"
#import "HolidayViewController.h"

@interface HomeViewController ()
@property (weak, nonatomic) IBOutlet UITextField *travellerNameToBeEnter;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //UIViewController *destinationViewController = segue.destinationViewController;
    HolidayViewController *destinationViewController = segue.destinationViewController;
    
    destinationViewController.title = [sender currentTitle];
    destinationViewController.travellerNameEntered = self.travellerNameToBeEnter.text;
    
    [self.travellerNameToBeEnter resignFirstResponder];
    
    if ([segue.identifier isEqualToString:@"Australia"]) {
        //destinationViewController.view.backgroundColor = [UIColor greenColor];
        destinationViewController.imageOfCountry = [UIImage imageNamed:@"australia"];
        destinationViewController.priceRelatedToCountry = @"2000.00";
        destinationViewController.travelCountry = @"Australia";
    }
    else {
        //destinationViewController.view.backgroundColor = [UIColor redColor];
        destinationViewController.imageOfCountry = [UIImage imageNamed:@"greece"];
        destinationViewController.priceRelatedToCountry = @"3000.00";
        destinationViewController.travelCountry = @"Greece";
    }
}

- (IBAction)unwindToThisViewController:(UIStoryboardSegue *)segue {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
