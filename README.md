# view-code-guide


# 👷🏽‍♂️ How to build layouts using iOS


| Storyboard | Xib | ViewCode | SwiftUI |
| --------------------- |:--------------:|:-----------------:| ------------:|
| Graphical Interface | Graphical Interface | Code Interface |  Code Interface |
| Graphical Navigation | Code Navigation | Code Navigation | Code Navigation |
| Low learning curve | Medium learning curve | Medium learning curve | Medium/High learning curve |
| Hard to solve merge conflicts | Hard to solve merge conflicts | Easy to solve merge conflicts | Easy to solve merge conflicts |
| Hard to reuse components | Easier than storyboard to reuse components | Easy to reuse components | Easy to reuse components | 
| Doesn't Scale well | Scales better than Storyboard | Scales well | Scales well | 
| Available iOS 5+ | Not sure, but older than Storyboards | Available in all versions | Available iOS 13+ |

# ⁉️ Why ViewCode


- Easy to work as a team
- Dependency injection control
- Reuse
- Considerable number of users with iOS 12.x and lower

# 👨🏻‍💻 Setup ViewCode


- Remove Storyboard reference
    - Remove from `Info.plist` :
        - `UIApplicationSceneManifest > UISceneConfigurations > UIWindowSceneSessionRoleApplication > UISceneStoryboardFile`
        - `UIMainStoryboardFile`
    - Remove `Main.storyboard` File

- Setup AppDelegate/SceneDelegate

```swift
guard let windowScene = (scene as? UIWindowScene) else { return }
        
let window = UIWindow(windowScene: windowScene)
let viewController = ViewController()
let navigationController = UINavigationController(rootViewController: viewController)
window.rootViewController = navigationController
self.window = window
window.makeKeyAndVisible()
```

- Setup ViewController

```swift
override func loadView() {
    let view = UIView(frame: .zero)
    view.backgroundColor = .orange
    self.view = view
}
```

# ✋🏻 Hands On!


- [Move view configuration to separated view file](https://github.com/emmendesf/view-code-guide/commit/6fb1c12ce115adca0c390773bef9b2f811c0f253)
- [Build title and subtitle label on view's init](https://github.com/emmendesf/view-code-guide/commit/d466007d7f455b0500c550df85ef1dd8bdb54777)
- [Separate view creation in methods](https://github.com/emmendesf/view-code-guide/commit/460a8a4583561308f23969869187c528bdba0d81)
- [Create TitleSubtitleView component](https://github.com/emmendesf/view-code-guide/commit/97cac76457dcba1f38582291abfcac65da6dd6a6)
- [Create ViewCodeProtocol](https://github.com/emmendesf/view-code-guide/commit/f43956acb863f0ca62bbbd83534cc704fd36ca75)
- [Implement ViewCodeProtocol](https://github.com/emmendesf/view-code-guide/commit/b7a76a1c50c70c8cd733eb38cb7e6dabf9e9c34a)
- [Create constraint assistant](https://github.com/emmendesf/view-code-guide/commit/f6f638415745071c7cc76f4eda7d26406e0d152e)
- [Refactor constraint setup using new extension method](https://github.com/emmendesf/view-code-guide/commit/d4f8df13505df22ad2c5c9047bcca6090decb5a0)

# ⏮ Recap


- `override func loadView()`
- View in separated file
- `translatesAutoresizingMaskIntoConstraints = false`
- Build view order
- `ViewCodeProtocol`
- Auto-layout helper

# 📖 Useful sources


- [translatesAutoresizingMaskIntoConstraints](https://developer.apple.com/documentation/uikit/uiview/1622572-translatesautoresizingmaskintoco)
- [Tutorial ViewCode](https://medium.com/@tpLioy/curso-ios-módulo-sobre-view-code-af0f6188297b)
- [Layout Anchors by Sundell](https://www.swiftbysundell.com/basics/layout-anchors/)
