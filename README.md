iOSSharedViewTransition
=======================

iOS 7 based transition library for View Controllers having a Common View

![iOSSharedViewTransition](https://raw.githubusercontent.com/asifmujteba/iOSSharedViewTransition/master/sample.gif)

<h2>USAGE</h2>
Very Simple 3 Step Process:

- Download and include `ASFSharedViewTransition.h` and `ASFSharedViewTransition.m` in you Project.
- In your app delegate or somewhere else in Code do `#import "ASFSharedViewTransition.h"` and add tansitions like this:
````
[ASFSharedViewTransition addTransitionWithFromViewControllerClass:[ViewController class]
        ToViewControllerClass:[DetailViewController class]
     WithNavigationController:(UINavigationController *)self.window.rootViewController
                 WithDuration:0.3f];
````

**Note:** Transition needs to be added only one time and ASFSharedViewTransition will automatically apply transitions whenever specified UINavigationController navigates between any FromViewController and ToViewController instances.

- Confirm From & To View Controllers to `ASFSharedViewTransitionDataSource` and provide the Common View by implementing this method:
````
- (UIView *)sharedView
````

Thats it! A Sample Demo Application has been included for Help.

<h2>**Coming Soon**</h2>
- Adding more transitions to the library
- If you would like to request a new feature, feel free to raise as an issue.

<h2>**Author**</h2>
Asif Mujteba, asifmujteba@gmai.com

<h2>**License**</h2>
ASFSharedViewTransition is available under the MIT license. See the LICENSE file for more info.

