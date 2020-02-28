# DeclarativeAlertController

`DeclarativeAlertController` makes provides a declarative interface and makes it easier and faster to create `UIAlertController`s in iOS.

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
