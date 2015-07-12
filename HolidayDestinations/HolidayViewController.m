//
//  HolidayViewController.m
//  HolidayDestinations
//
//  Created by NP ECE BME Centre on 12/7/15.
//  Copyright (c) 2015 NP ECE BME Centre. All rights reserved.
//

#import "HolidayViewController.h"
#import "BookingViewController.h"

@interface HolidayViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *travellerNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *travelPriceLabel;

@end

@implementation HolidayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.imageView.image = self.imageOfCountry;
    self.travellerNameLabel.text = [@"Hi, " stringByAppendingString: self.travellerNameEntered];
    self.travelPriceLabel.text = [@"S$" stringByAppendingString: self.priceRelatedToCountry];
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    BookingViewController *bookingViewController = segue.destinationViewController;
    bookingViewController.title = [sender currentTitle];
    bookingViewController.travellerNameConfirm = self.travellerNameEntered;
    bookingViewController.priceConfirm = self.priceRelatedToCountry;
    bookingViewController.destinationConfirm = self.travelCountry;
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
