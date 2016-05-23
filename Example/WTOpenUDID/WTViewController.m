//
//  WTViewController.m
//  WTOpenUDID
//
//  Created by wentianen on 05/23/2016.
//  Copyright (c) 2016 wentianen. All rights reserved.
//

#import "WTViewController.h"
#import "WTOpenUDID.h"

@interface WTViewController ()

@property (weak, nonatomic) IBOutlet UILabel *udidLabel;

@end

@implementation WTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSString *text = [NSString stringWithFormat:@"UDID -> %@", [WTOpenUDID openUDID]];
    self.udidLabel.text = text;
}

@end
