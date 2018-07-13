//
//  ViewController.swift
//  InputAccessoryView
//
//  Created by Alex Tang on 7/12/18.
//  Copyright © 2018 Alex Tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var chatInputView: ChatInputView?

    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    override var inputAccessoryView: UIView? {
        NSLog("getting inputAccessoryView: view is: \(String(describing: self.chatInputView))")
        return self.chatInputView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let chatInputView = ChatInputView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: 124))
        chatInputView.awakeFromNib()
        self.chatInputView = chatInputView
    }


    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var show: Bool = false
    @IBAction func buttonTapped(_ sender: Any) {
        self.view.endEditing(true)
        self.chatInputView?.textField.resignFirstResponder()
    }

}

