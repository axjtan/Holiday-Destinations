//
//  BookingViewController.m
//  HolidayDestinations
//
//  Created by NP ECE BME Centre on 12/7/15.
//  Copyright (c) 2015 NP ECE BME Centre. All rights reserved.
//

#import "BookingViewController.h"

@interface BookingViewController ()
@property (weak, nonatomic) IBOutlet UILabel *confirmTravellerNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *confirmDestinationLabel;
@property (weak, nonatomic) IBOutlet UILabel *confirmPriceLabel;
@property (weak, nonatomic) IBOutlet UILabel *confirmTaxLabel;
@property (weak, nonatomic) IBOutlet UILabel *confirmTotalPriceLabel;

@end

@implementation BookingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.confirmTravellerNameLabel.text = self.travellerNameConfirm;
    self.confirmDestinationLabel.text = self.destinationConfirm;
    self.confirmPriceLabel.text = self.priceConfirm;
    self.confirmTaxLabel.text = @"7";
    
    [self doTotalPriceCalculation];

}

- (void) doTotalPriceCalculation{
    float taxAmount = self.confirmTaxLabel.text.floatValue;
    float priceAmount = self.confirmPriceLabel.text.floatValue;
    float totalPrice = ((taxAmount*priceAmount)/100)+priceAmount;
    self.confirmTotalPriceLabel.text = [NSString stringWithFormat:@"%.2f", totalPrice];
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
