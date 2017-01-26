//
//  AddNewItemController.swift
//  TableViewSample
//
//  Created by Okawa Hitoshi on 2017/01/26.
//  Copyright © 2017年 HitoshiOkawa. All rights reserved.
//

import UIKit

protocol AddNewItemControllerDelegate{
    func addNewItem(item: String)
}

class AddNewItemController: UIViewController {

    var delegate:AddNewItemControllerDelegate! = nil

    @IBOutlet weak var textField: UITextField!

    @IBAction func cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func add(_ sender: Any) {
        self.delegate.addNewItem(item: self.textField.text!)
        self.dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = UIApplication.shared.keyWindow?.rootViewController as! ViewController
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
