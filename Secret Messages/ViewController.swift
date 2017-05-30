//
//  ViewController.swift
//  Secret Messages
//
//  Created by Raghav Vashisht on 29/05/17.
//  Copyright © 2017 Raghav Vashisht. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate, UITextFieldDelegate {
    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var txtView: UITextView!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var decryptTxtField: UITextField!
    
    
    var encrypt:Encrypt!
    var decrypt:Decrypt!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        encrypt = Encrypt()
        decrypt = Decrypt()
        txtView.delegate = self
        txtField.delegate = self
        decryptTxtField.delegate = self
        
        textFieldShouldReturn(txtField)
        textFieldShouldReturn(decryptTxtField)
    }
    @IBAction func btnPressed(_ sender: Any) {
        dataEncrypt()
    }
    
    
    
    @IBAction func decryptBtnPressed(_ sender: Any) {
        dataDecrypt()
        
        
    }
    
    
    @IBAction func hintPressed(_ sender: Any) {
        
        // create the alert
        let alert = UIAlertController(title: "Welcome To Secret Messages", message: "You can use this App to create simple Encrypted messages.\n\n1)This app converts String to Hex-String\n\n2)Then replaces some digits so that its hard to decrypt the text back\n\n3)It does the complete opposite to Decrypt the encrypted Sentence.", preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    
    func textView(_ txtView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if(text == "\n") {
            txtView.resignFirstResponder()
            return false
        }
        return true
    }
    
    func dataEncrypt() {
        
        if txtField.hasText {
            self.encrypt.encryptData(dat: txtField.text!)
            txtView.text = ""
            txtView.text = self.encrypt.encrypted
            txtField.endEditing(true)
            
        } else {
            
        }
        
    }
    func dataDecrypt() {
        if decryptTxtField.hasText {
            self.decrypt.getHex(enterHex: decryptTxtField.text!)
            txtView.text = ""
            txtView.text = self.decrypt.decrypted
            txtField.endEditing(true)
        } else {
            
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}

