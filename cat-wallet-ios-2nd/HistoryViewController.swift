//
//  SendReceiveViewController.swift
//  cat-wallet-ios-2nd
//
//  Created by kaidong pei on 11/9/18.
//  Copyright © 2018 CatWallet. All rights reserved.
//

import UIKit

class HistoryViewController: BottomPopupViewController {

    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var receiveButton: UIButton!
    @IBOutlet weak var purchaseButton: UIButton!
    @IBOutlet weak var historyButton: UIButton!
    
    var height: CGFloat?
    var topCornerRadius: CGFloat?
    var presentDuration: Double?
    var dismissDuration: Double?
    var shouldDismissInteractivelty: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        definButton(sendButton)
//        definButton(receiveButton)
//        definButton(purchaseButton)
//        definButton(historyButton)

        // Do any additional setup after loading the view.
    }
    
    func definButton(_ button: UIButton){
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        button.layer.masksToBounds = false
        button.layer.cornerRadius = button.frame.width / 2
        button.layer.borderWidth = 1
    }
    
    override func getPopupHeight() -> CGFloat {
        return height ?? CGFloat(300)
    }
    
    override func getPopupTopCornerRadius() -> CGFloat {
        return topCornerRadius ?? CGFloat(10)
    }
    
    override func getPopupPresentDuration() -> Double {
        return presentDuration ?? 1.0
    }
    
    override func getPopupDismissDuration() -> Double {
        return dismissDuration ?? 1.0
    }
    
    override func shouldPopupDismissInteractivelty() -> Bool {
        return shouldDismissInteractivelty ?? true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}