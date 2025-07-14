//
//  SceneDelegate.swift
//  UIKitExample
//
//  Created by Duong Thai on 12/7/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  var window: UIWindow?

  func scene(_ scene: UIScene, willConnectTo _: UISceneSession, options _: UIScene.ConnectionOptions) {
    guard let scene = (scene as? UIWindowScene) else { return }

    let w = UIWindow(windowScene: scene)
    let vc = ViewController()
    w.rootViewController = vc

    self.window = w
    self.window?.makeKeyAndVisible()
  }
}
