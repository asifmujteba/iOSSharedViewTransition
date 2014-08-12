//
//  ViewController.m
//  ASFTransitionTest
//
//  Created by Asif Mujteba on 08/08/2014.
//  Copyright (c) 2014 Asif Mujteba. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "ASFSharedViewTransition.h"

@interface ViewController () <ASFSharedViewTransitionDataSource>

@property (nonatomic, retain) NSMutableArray *arrImages;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Add Transition
    [ASFSharedViewTransition addTransitionWithFromViewControllerClass:[ViewController class]
                                                ToViewControllerClass:[DetailViewController class]
                                             WithNavigationController:self.navigationController
                                                         WithDuration:0.3f];
    
	_arrImages = [[NSMutableArray alloc] init];
    for (int i=1; i<=8; i++) {
        [_arrImages addObject:[UIImage imageNamed:[NSString stringWithFormat:@"nature%d.jpg", i]]];
    }
    
    for (int i=1; i<=8; i++) {
        [_arrImages addObject:[UIImage imageNamed:[NSString stringWithFormat:@"nature%d.jpg", i]]];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.destinationViewController isKindOfClass:[DetailViewController class]]) {
        // Get the selected item index path
        NSIndexPath *selectedIndexPath = [[_collectionView indexPathsForSelectedItems] firstObject];
        
        // Set the thing on the view controller we're about to show
        if (selectedIndexPath != nil) {
            DetailViewController *detailVC = segue.destinationViewController;
            detailVC.image = self.arrImages[selectedIndexPath.row];
        }
    }
}

#pragma mark UICollectionViewControllerDataSource methods

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.arrImages count];
}

- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell"
                                                                           forIndexPath:indexPath];
    
    UIImage *img = self.arrImages[indexPath.row];
    
    cell.layer.contents = (id)img.CGImage;
    
    return cell;
}

#pragma mark - ASFSharedViewTransitionDataSource

- (UIView *)sharedView
{
    return [_collectionView cellForItemAtIndexPath:[[_collectionView indexPathsForSelectedItems] firstObject]];
}


@end
