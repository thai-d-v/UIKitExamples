//
//  ViewController.swift
//  UIKitExample
//
//  Created by Duong Thai on 12/7/25.
//

import UIKit

class ViewController: UIViewController {
  let outsideView = MyView(name: "Outside Hierarchy View")

  override func viewDidLoad() {
    super.viewDidLoad()
    view = MyView(name: "Inside Hierarchy View")

    Task {
      let colors: [UIColor] = [.green, .blue, .red, .yellow, .brown, .cyan, .gray]

      for _ in 0..<10 {
        try? await Task.sleep(for: .seconds(0.5))

        let color = colors.randomElement()!
        print("set new background color to")
        view.backgroundColor = color
        outsideView.backgroundColor = color
      }
    }
  }
}

final class MyView: UIView {
  let name: String

  override func setNeedsDisplay() {
    super.setNeedsDisplay()
    print("(\(name))", #function, )
  }

  override func draw(_ rect: CGRect) {
    super.draw(rect)
    print("(\(name))", #function, )
  }

  init(name: String) {
    self.name = name
    super.init(frame: .zero)
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
