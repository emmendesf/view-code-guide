# view-code-guide

---
---

# 👷🏽‍♂️ How to build layouts using iOS

---

## Storyboard

- Graphical Interface
- Graphical Navigation
- Low learning curve
- Hard to solve merge conflicts
- Hard to reuse components
- Doesn't scale well

## Xib

- Graphical Interface
- Medium learning curve
- Hard to solve merge conflicts
- Easier than storyboard to reuse components
- Scale better than Storyboard

## ViewCode

- Code Interface
- Medium learning curve
- Easy to solve merge conflicts
- Easy to reuse components
- Scales well

## SwiftUI

- Code Interface
- Medium/High learning curve
- Easy to solve merge conflicts
- Easy to reuse components
- Scales well
- New iOS Technology
- Available iOS 13+

# ⁉️ Why <ViewCode/>

---

- Easy to work as a team
- Dependency injection control
- Reuse
- Considerable number of users with iOS 12.x and lower

# 👨🏻‍💻 Setup <ViewCode/>

---

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

---

- Move view configuration to separated view file
- Build title and subtitle label on view's init
- Separate view creation in methods
- Create TitleSubtitleView component
- Create ViewCodeProtocol
- Implement ViewCodeProtocol
- Create constraint assistant
- Refactor constraint setup using new extension method

# ⏮ Recap

---

- `override func loadView()`
- View in separated file
- `translatesAutoresizingMaskIntoConstraints = false`
- Build view order
- `ViewCodeProtocol`
- Auto-layout helper

# 📖 Useful sources

---

- [translatesAutoresizingMaskIntoConstraints](https://developer.apple.com/documentation/uikit/uiview/1622572-translatesautoresizingmaskintoco)
- [Tutorial ViewCode](https://medium.com/@tpLioy/curso-ios-módulo-sobre-view-code-af0f6188297b)
- [Layout Anchors by Sundell](https://www.swiftbysundell.com/basics/layout-anchors/)
