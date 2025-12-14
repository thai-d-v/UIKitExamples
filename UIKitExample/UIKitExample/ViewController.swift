//
//  ViewController.swift
//  UIKitExample
//
//  Created by Duong Thai on 12/7/25.
//

import UIKit

class ViewController: UIViewController {

  let data = [
    [ "Pacman", "Space Invaders", "Space Patrol"],
    [ "Pacman 1", "Space Invaders 1", "Space Patrol 1"]
  ]

  override func viewDidLoad() {
    super.viewDidLoad()

    // 1. Table view itself is a scrollable view frame
    let tableView = UITableView()

    // 2. delegate to handle
    //   - interaction: selection, swipe action, editing
    //   - headers and footer
    //   - heigh estimation
    //   - row indentation
    tableView.delegate = self

    // 3. data source provides data
    tableView.dataSource = self

    // 4. cell present items' data
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CELL")

    view.addSubview(tableView)
    tableView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      tableView.topAnchor.constraint(equalTo: view.topAnchor),
      tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
      tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
      tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
    ])
  }
}

extension ViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("Table did select \(data[indexPath.item])")
  }

  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    let label = UILabel()
    label.font = .systemFont(ofSize: 18)
    label.backgroundColor = .systemBlue.withAlphaComponent(0.3)
    label.text = "Section \(section)"

    return label
  }

  func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
    let label = UILabel()
    label.font = .systemFont(ofSize: 18)
    label.backgroundColor = .systemYellow.withAlphaComponent(0.3)
    label.text = "Footer Section \(section)"

    return label
  }

  func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int {
    indexPath.section + indexPath.item
  }
}

extension ViewController: UITableViewDataSource {
  func numberOfSections(in tableView: UITableView) -> Int { 2 }
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { data[section].count }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath)
    cell.textLabel?.text = data[indexPath.section][indexPath.item]

    return cell
  }
}

#Preview {
  ViewController()
}
