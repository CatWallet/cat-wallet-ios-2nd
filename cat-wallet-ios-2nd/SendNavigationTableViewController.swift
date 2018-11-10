//
//  SendNavigationTableViewController.swift
//  cat-wallet-ios-2nd
//
//  Created by kaidong pei on 11/9/18.
//  Copyright © 2018 CatWallet. All rights reserved.
//

import UIKit

class SendNavigationTableViewController: UITableViewController{
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "SendTableViewCell", bundle: nil), forCellReuseIdentifier: "sendCoinCell")
//        let viewTapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
//        view.addGestureRecognizer(viewTapGesture)

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sendCoinCell", for: indexPath) as! SendTableViewCell
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //guard let popupVC = storyboard?.instantiateViewController(withIdentifier: "popup") as? SendPopUpViewController else { return }
        let popupVC = SendPopUpViewController()
        popupVC.height = 300
        popupVC.topCornerRadius = 35
        popupVC.presentDuration = 0.4
        popupVC.dismissDuration = 0.3
        popupVC.shouldDismissInteractivelty = true
        popupVC.popupDelegate = self
        present(popupVC, animated: true, completion: nil)
    }
    @objc private func dismissKeyboard() {
        view.endEditing(true)
    }
}

extension SendNavigationTableViewController: BottomPopupDelegate {

    func bottomPopupViewLoaded() {
        print("bottomPopupViewLoaded")
    }

    func bottomPopupWillAppear() {
        print("bottomPopupWillAppear")
    }

    func bottomPopupDidAppear() {
        print("bottomPopupDidAppear")
    }

    func bottomPopupWillDismiss() {
        print("bottomPopupWillDismiss")
    }

    func bottomPopupDidDismiss() {
        print("bottomPopupDidDismiss")
    }

    func bottomPopupDismissInteractionPercentChanged(from oldValue: CGFloat, to newValue: CGFloat) {
        print("bottomPopupDismissInteractionPercentChanged fromValue: \(oldValue) to: \(newValue)")
    }
}