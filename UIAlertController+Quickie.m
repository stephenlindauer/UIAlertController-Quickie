//
//  UIAlertController+Quickie.m
//
//  Created by Stephen Lindauer on 7/28/16.
//  1 liner to show a simple alert using a UIAlertController
//

#import "UIAlertController+Quickie.h"


@implementation UIAlertController (Quickie)

+ (void)showQuickieAlertWithTitle:(NSString *)title message:(NSString *)message fromViewController:(UIViewController *)viewController
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alert dismissViewControllerAnimated:YES completion:nil];
    }]];
    
    [viewController presentViewController:alert animated:YES completion:nil];
}

+ (void)showQuickieAlertWithTitle:(NSString *)title message:(NSString *)message
{
    UIViewController *viewController = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
    [self showQuickieAlertWithTitle:title message:message fromViewController:viewController];
}

@end
