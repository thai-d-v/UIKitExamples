//
//  ViewController.swift
//  UIKitExample
//
//  Created by Duong Thai on 12/7/25.
//

import UIKit

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = .green
  }
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("--- viewWillAppear ---")
    print("View added to hierarchy: \(view.window != nil)")
    print("Trait collection: \(traitCollection)")
    print("View frame: \(view.frame)")
    print("Safe area insets: \(view.safeAreaInsets)")
  }

  override func viewIsAppearing(_ animated: Bool) {
    super.viewIsAppearing(animated)
    print("\n--- viewIsAppearing ---")
    print("View added to hierarchy: \(view.window != nil)")
    print("Trait collection: \(traitCollection)")
    print("View frame: \(view.frame)")
    print("Safe area insets: \(view.safeAreaInsets)")
  }
}
