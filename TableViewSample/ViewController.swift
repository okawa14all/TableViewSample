//
//  ViewController.swift
//  TableViewSample
//
//  Created by Okawa Hitoshi on 2017/01/23.
//  Copyright © 2017年 HitoshiOkawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, AddNewItemControllerDelegate {

    @IBOutlet var tableView: UITableView!

    var items = [Item(title: "item 1"), Item(title: "item 2"), Item(title: "item 3")]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SampleCell", for: indexPath)
        let label = cell.viewWithTag(1) as! UILabel
        label.text = items[indexPath.row].title
        return cell
    }

    func addNewItem(item: String) {
        print("***" + item)
        items.append(Item(title: item))
        self.tableView.reloadData()
    }

}

