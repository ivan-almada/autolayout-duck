//
//  ViewController.m
//  LiveLayout
//
//  Created by Ivan Almada on 16/08/16.
//  Copyright © 2016 Ivna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *text1;
@property (weak, nonatomic) IBOutlet UILabel *text2;
@property (weak, nonatomic) IBOutlet UILabel *text3;

@property (weak, nonatomic) IBOutlet UISlider *slider1;
@property (weak, nonatomic) IBOutlet UISlider *slider2;
@property (weak, nonatomic) IBOutlet UISlider *slider3;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	[self setInitialState];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (void)setInitialState {
	self.slider1.value = 0.269736856;
	self.slider2.value = 0.269736856;
	self.slider3.value = 0.388157904;
	
	[self updateText1:self];
	[self updateText2:self];
	[self updateText3:self];
}

- (IBAction)updateText1:(id)sender {
	self.text1.text = [self repeatString:@"kuak" ntimes:self.slider1.value * 200];
}

- (IBAction)updateText2:(id)sender {
	self.text2.text = [self repeatString:@"bla" ntimes:self.slider2.value * 200];
}

- (IBAction)updateText3:(id)sender {
	self.text3.text = [self repeatString:@"raw" ntimes:self.slider3.value * 230];
}

- (NSString *)repeatString:(NSString *)string ntimes:(NSInteger)times {
	NSMutableString *result = [[NSMutableString alloc] init];
	
	for (NSInteger i = 0; i < times; i++) {
		[result appendString:string];
	}
	
	return result;
}

@end
