# UIStoryboard Best Practice


Are you familiar the this syntax when you try to initiate a view controller programmatically?

```
if let homeViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController {
    present(homeViewController, animated: true, completion: nil)
}
```      

or 

```
guard let homeViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController") as? HomeViewController
else {
    return
}

present(homeViewController, animated: true, completion: nil)

```
Sometimes we may found that a typo mistake on the string will crash the app. So with objective-C background we may improve it in a better version. :)

```
guard let homeViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String(describing: HomeViewController.self)) as? HomeViewController
    else {
        return
}
```
It seems to be better but still not what we want.

# Introducing UIViewController Protocol Extension

With the protocol and extension in the example project, now you can use a much cleaner way to instantiate your view controller. :)

A good practice may be create only one view controller in one storyboard, sound silly but it will reduce a lot of pain when comes to git control.

For example, the storyboard will has the same name as the view controller.

Way to instantiate
```
let viewController: SecondViewController = instantiateViewController()
viewController.identifier = SecondViewController.viewControllerIdentifier

present(viewController, animated: true, completion: nil)
```

You also can create multiple view controller in a storyboard.

Example:
Enter your storyboard name in UIStoryboard Extension

```
enum Storyboard: String {
        case main
        ...
```

Now you can instatiate your view controller by this way

```
let viewController: ViewControllerA = instantiateViewController(withParentStoryboard: .main)
viewController.viewAIdentifier = ViewControllerA.viewControllerIdentifier

navigationController?.pushViewController(viewController, animated: true)
```

Not only view controller can use the protocol, UITableViewCell can fully utilized the protocol.

# UITableViewCell

Replace
```
tableView.register(CustomTableViewCell.self(), forCellReuseIdentifier: String(describing: CustomTableViewCell.self))
```
with
```
tableView.registerCell(CustomTableViewCell.self)
```
Replace
```
guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: CustomTableViewCell.self), for: indexPath) as? CustomTableViewCell else { return UITableViewCell() }
```
with
```
let cell: CustomTableViewCell = tableView.dequeueCell(forIndexPath: indexPath)
```
Neat and easy right? : ) wish you like it.

## Ideas come from

* [AndyyHope](https://github.com/andyyhope/Blog_UIStoryboardSafety) - UIStoryboard: Safer with Enums, Protocol Extensions and Generics
* [Stan Ostrovskiy](https://medium.com/ios-os-x-development/xcode-a-better-way-to-deal-with-storyboards-8b6a8b504c06) - Xcode: A Better Way to Deal with Storyboards
* [Natasha The Robot](https://www.natashatherobot.com/swift-3-0-refactoring-cues/) - Swift 3.0 Refactoring Cues

Thanks.
