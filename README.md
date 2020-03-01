# DeclarativeAlertController

`DeclarativeAlertController` provides a declarative interface and makes it easier and faster to create `UIAlertController`s in iOS.

Instead of writing code like this:

```swift
let alert = UIAlertController(
    title: "Delete all data?",
    message: "All your data will be deleted!",
    preferredStyle: .alert)

let deleteAction = UIAlertAction(title: "Yes, Delete it All", style: .destructive) { (_) in
    print("Deleting all data")
}

let moreOptionsAction = UIAlertAction(title: "Show More Options", style: .default) { (_) in
    print("Show more options")
}

let cancelAction = UIAlertAction(title: "No, Don't Delete Anything", style: .cancel, handler: nil)

alert.addAction(deleteAction)
alert.addAction(moreOptionsAction)
alert.addAction(cancelAction)

present(alert, animated: true)
```

It allows you to write code like this:

```swift
let alert = AlertController(
    title: "Delete all data?",
    message: "All your data will be deleted!",
    style: .alert) {
        
        AlertAction {
            DestructiveTitle("Yes, Delete it All")
            AlertHandler {
                print("Deleting all data")
            }
        }
        
        AlertAction {
            DefaultTitle("Show More Options")
            AlertHandler {
                print("showing more options")
            }
        }
        
        AlertAction {
            CancelTitle("No, Don't Delete Anything")
            AlertHandler()
        }
}

present(alert.alertController, animated: true)
```

Making your `UIAlertController` code easier and faster to write, and easier to undestand.

## API Usage

To declare an AlertController, use the `AlertController(title:message:style:content)` constructor. `title` and `message` may be left nil and take strings. You must specify the style, which are the same as standard `UIAlertController`s: `.actionSheet` or `alert`.

The `content` parameter takes in the function builder where you specify a variable amount of `AlertAction`s you want to pass. Each `AlertAction` must take at least one title (which can be `DefaultTitle`, `CancelTitle`, or `DestructiveTitle`) and an `ActionHandler` which takes a closure to execute when that action is tapped. The constructor for this object takes an optional closure, so if you don't need to do anything specific, you just need to call it without passing a closure.

#### Usage Notes

This was build for UIKit. While the syntax is similar to SwiftUI, this is not compatible with SwiftUI at all.
