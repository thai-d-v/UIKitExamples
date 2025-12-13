//
//  ViewController.swift
//  UIKitExample
//
//  Created by Duong Thai on 12/7/25.
//

import UIKit

class ViewController: UIViewController {
  var redView: UIView! = nil

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white

    redView = UIView()
    view.addSubview(redView)

    redView.backgroundColor = .red
    redView.bounds = CGRect(x: 0, y: 0, width: 100, height: 200)
    redView.center = view.center

    // Apply transform before adding to hierarchy
    print("Frame before adding to hierarchy:", redView.frame)
    redView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2)
    print("Frame after adding to hierarchy:", redView.frame)

    redView.layoutIfNeeded()
    redView.setNeedsDisplay()

    Task {
      try? await Task.sleep(for: .seconds(1))
      UIView.animate(withDuration: 0.1, delay: 0) { [weak self] in
        self?.redView.transform = CGAffineTransform(rotationAngle: 0)
      }
      try? await Task.sleep(for: .seconds(1))
      UIView.animate(withDuration: 0.1, delay: 0) { [weak self] in
        self?.redView.transform = CGAffineTransform(rotationAngle: -.pi/2)
      }
      try? await Task.sleep(for: .seconds(1))
      UIView.animate(withDuration: 0.1, delay: 0) { [weak self] in
        self?.redView.transform = CGAffineTransform(rotationAngle: -.pi)
      }
    }
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
  }
}

#Preview {
  ViewController()
}
