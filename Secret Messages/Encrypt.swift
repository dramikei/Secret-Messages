//
//  Encrypt.swift
//  Secret Messages
//
//  Created by Raghav Vashisht on 29/05/17.
//  Copyright © 2017 Raghav Vashisht. All rights reserved.
//

import Foundation

class Encrypt {
    
    var _string:String!
    var _data:Data!
    var _encrypted:String!
    
    var str:String {
        if _string != nil {
        return _string
        }
        else {
        return ""
        }
    }

    var encrypted:String {
        if _encrypted != nil {
            return _encrypted
        }
        else {
            return ""
        }
    }
    
    func encryptData(dat: String) {
        self._string = "\(dat)"
        self._data = self._string.data(using: String.Encoding.utf8)!
        let hexString = self._data.map{ String(format:"%02x", $0) }.joined()
        
        self._encrypted = String(hexString.replacingOccurrences(of: "6", with: "()").replacingOccurrences(of: "7", with: "{-}").replacingOccurrences(of: "3", with: "^").characters.reversed())
        
    }
    
}
