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
      frame: .zero,
      collectionViewLayout: UICollectionViewFlowLayout()
    )
    collectionView.backgroundColor = .red
    self.view.addSubview(collectionView)

    collectionView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      collectionView.topAnchor.constraint(equalTo: self.view.topAnchor),
      collectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
      collectionView.leftAnchor.constraint(equalTo: self.view.leftAnchor),
      collectionView.rightAnchor.constraint(equalTo: self.view.rightAnchor),
    ])
  }
}

#Preview {
  ViewController()
}
