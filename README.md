# AlertController

This is easy to use demo about UIAlertController with code held in one file and access in all other views. This demo is avaialble in both programming lanauage Objective-C & Swift.

# What is AlertController?

An object that displays an alert message to the user.

# Output:

![AlertController](UIAlertController.gif)

# Basic Config:

1. Xcode 10.0 or above
2. Objective-C
3. Swift 4.0 or above
4. Development Target 10.0 or above
5. Device Universal Supported

# How it Works?

You just need to download this demo and run it inot SIMULATOR or REAL device whatever you want. OR Just copy and paste code from Utility.swift | Utility.h & Utility.m file into your projects and access it!

There are two different project in this repositor:

1. **Objective-C** (Utility.h & Utility.m file)

```objective-c

typedef void (^ _Nullable completion)(int index);

+ (void)
shwoAlertControllerInViewController: (UIViewController *)vc withTitle: (nullable NSString *)title andMessage: (nullable NSString *)message withButtons: (NSArray *)button withCompletion: (completion)completionBlock
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    for (int index = 0; index < button.count; index++) {
        
        UIAlertAction *action = [UIAlertAction actionWithTitle:button[index] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
            if (completionBlock != nil) {

                completionBlock(index);
            }
        }];
        
        [alertController addAction:action];
    }
    
    [vc presentViewController:alertController animated:YES completion:nil];
}
```

2. **Swift** (Utility.swift file)

```swift
static func shwoAlertControllerInViewController(vc: UIViewController, withTitle title: String?, andMessage message: String?, withButtons button: [String], completion:((_ index: Int) -> Void)!) -> Void
{
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)

    for index in 0 ..< button.count  {

        let action = UIAlertAction(title: button[index], style: .default, handler: { (alert: UIAlertAction!) in

            if completion != nil {

                completion(index)
            }
        })

        alertController.addAction(action)
    }

    vc.present(alertController, animated: true, completion: nil)
}
```

# License

This line of codes are avaialble for public use by [**9Brainz**](https://www.9brainz.com). If you have any doubts or query regarding this code or any particular topic reagrding iOS Application development, Feel free to [**Contact Us**](https://9brainz.com/contact-us.html).

# Helpful!!

Is this demo helpful for your project? OR Reducing tiny bit of work in your project?
Let us know about it 🔥🔥🔥
