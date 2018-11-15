//
//  SuccessCreationViewController.swift
//  cat-wallet-ios-2nd
//
//  Created by kaidong pei on 11/14/18.
//  Copyright © 2018 CatWallet. All rights reserved.
//

import UIKit

class SuccessCreationViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    var getAddress = ""
    var getMnemonics = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = getAddress
        textView.text = getMnemonics
    }

    @IBAction func doneAction(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
