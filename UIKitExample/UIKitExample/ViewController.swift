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

    let collectionView = UICollectionView(
      frame: view.window?.windowScene?.screen.bounds ?? .zero,
      collectionViewLayout: UICollectionViewFlowLayout()
    )
    collectionView.backgroundColor = .red
    self.view.addSubview(collectionView)

    print(
      #function,
      "view.window?.windowScene?.screen.bounds:",
      String(describing: view.window?.windowScene?.screen.bounds)
    )
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)

    print(
      #function,
      "view.window?.windowScene?.screen.bounds:",
      String(describing: view.window?.windowScene?.screen.bounds)
    )
  }

  override func viewIsAppearing(_ animated: Bool) {
    super.viewIsAppearing(animated)

    print(
      #function,
      "view.window?.windowScene?.screen.bounds:",
      String(describing: view.window?.windowScene?.screen.bounds)
    )
  }

  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    print(
      #function,
      "view.window?.windowScene?.screen.bounds:",
      String(describing: view.window?.windowScene?.screen.bounds)
    )
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print(
      #function,
      "view.window?.windowScene?.screen.bounds",
      String(describing: view.window?.windowScene?.screen.bounds)
    )
  }
}

#Preview {
  ViewController()
}
