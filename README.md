# UIAlertController-Quickie
A small Objective-C category that allows creating a UIAlertView with 1 line of code

## Usage

The old way:
```objc
UIAlertController *alert = [UIAlertController alertControllerWithTitle:title 
                                                               message:message 
                                                        preferredStyle:UIAlertControllerStyleAlert];
UIAlertAction *action = [UIAlertAction actionWithTitle:@"Ok" 
                                                 style:UIAlertActionStyleCancel 
                                               handler:^(UIAlertAction * _Nonnull action) {
    [alert dismissViewControllerAnimated:YES completion:nil];
}];
[alert addAction:action];
[viewController presentViewController:alert animated:YES completion:nil];
```

Using the UIAlertController+Quickie Category:
```objc
[UIAlertController showQuickieAlertWithTitle:@"Wow!" message:@"Hey, that was easy!"];
```
Or show on a specific UIViewController:
```objc
[UIAlertController showQuickieAlertWithTitle:@"Wow!" message:@"Hey, that was easy!" fromViewController:otherViewController];
```
