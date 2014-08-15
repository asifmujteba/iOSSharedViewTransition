//
//  DetailViewController.m
//  ASFTransitionTest
//
//  Created by Asif Mujteba on 09/08/2014.
//  Copyright (c) 2014 Asif Mujteba. All rights reserved.
//

#import "DetailViewController.h"
#import "ASFSharedViewTransition.h"

@interface DetailViewController () <ASFSharedViewTransitionDataSource>

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    _imageView.image = _image;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - ASFSharedViewTransitionDataSource

- (UIView *)sharedView
{
    return _imageView;
}

@end
