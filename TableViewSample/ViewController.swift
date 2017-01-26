//
//  ViewController.swift
//  TableViewSample
//
//  Created by Okawa Hitoshi on 2017/01/23.
//  Copyright © 2017年 HitoshiOkawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!

    let labels = ["label1", "label2", "label3"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return labels.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SampleCell", for: indexPath)
        let label = tableView.viewWithTag(1) as! UILabel
        label.text = labels[indexPath.row]
        return cell
    }

}

