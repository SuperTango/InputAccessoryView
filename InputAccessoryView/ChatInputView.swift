//
//  ChatInputView.swift
//  InputAccessoryView
//
//  Created by Alex Tang on 7/12/18.
//  Copyright © 2018 Alex Tang. All rights reserved.
//

import UIKit

class ChatInputView: NibView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!

    override var intrinsicContentSize: CGSize {
        let size = CGSize(width: 375, height: 100)
        NSLog("intrinsicContentSize for ChatInputView is: \(size)")
        return size
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        self.intrinsicContentSize = CGSize(width: self.frame.size.width, height: 100)
    }
    @IBAction func buttonTapped(_ sender: Any) {
        NSLog("subview size: \(self.subView.frame)")
        self.textField.becomeFirstResponder()
    }
}
