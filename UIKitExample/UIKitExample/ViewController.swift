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

    // The Collection View is a scrollable view frame
    let collectionView = UICollectionView(
      frame: .zero,
      collectionViewLayout: UICollectionViewFlowLayout()
    )

    // Data source
    collectionView.dataSource = self

    // UI Presentation
    // 1. layout
    // 2. cell
    collectionView.delegate = self
    collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "CELL")

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

extension ViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return .init(width: collectionView.frame.width/4, height: 200)
  }
}

extension ViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    30
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CELL", for: indexPath)
    cell.backgroundColor = .systemBlue

    return cell
  }
}

#Preview {
  ViewController()
}
