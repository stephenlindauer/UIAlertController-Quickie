//
//  UIAlertController+Quickie.h
//
//  Created by Stephen Lindauer on 7/28/16.
//  1 liner to show a simple alert using a UIAlertController
//


#import <Foundation/Foundation.h>

@interface UIAlertController (Quickie)

+ (void)showQuickieAlertWithTitle:(NSString *)title message:(NSString *)message fromViewController:(UIViewController *)viewController;
+ (void)showQuickieAlertWithTitle:(NSString *)title message:(NSString *)message;

@end
