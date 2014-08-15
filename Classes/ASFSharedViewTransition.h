//
//  ASFSharedViewTransition.h
//  ASFTransitionTest
//
//  Created by Asif Mujteba on 09/08/2014.
//  Copyright (c) 2014 Asif Mujteba. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ASFSharedViewTransitionDataSource <NSObject>

- (UIView *)sharedView;

@end

@interface ASFSharedViewTransition : NSObject<UIViewControllerAnimatedTransitioning, UINavigationControllerDelegate>

@property (nonatomic, weak) Class fromVCClass;
@property (nonatomic, weak) Class toVCClass;

+ (void)addTransitionWithFromViewControllerClass:(Class<ASFSharedViewTransitionDataSource>)aFromVCClass
                                  ToViewControllerClass:(Class<ASFSharedViewTransitionDataSource>)aToVCClass
                        WithNavigationController:(UINavigationController *)aNav
                                      WithDuration:(NSTimeInterval)aDuration;

@end
