//
//  Decrypt.swift
//  Secret Messages
//
//  Created by Raghav Vashisht on 29/05/17.
//  Copyright © 2017 Raghav Vashisht. All rights reserved.
//

import Foundation

class Decrypt {
     var _hex:String!
    //private var _data:Data
     var _decrypted:String!

    
    var hex:String {
        if _hex != nil {
            return _hex
        } else {
            _hex = ""
            return _hex
        }
    }
    //var data:Data {
    //    return _data
    //}
    
    var decrypted:String {
        if _decrypted != nil {
            return _decrypted
        } else {
            _decrypted = ""
            return _decrypted
        }
    }
    
    
    func getHex(enterHex: String) {
        let hex1 = String(enterHex.characters.reversed()).replacingOccurrences(of: "()", with: "6").replacingOccurrences(of: "{-}", with: "7").replacingOccurrences(of: "^", with: "3")
        let data = decryptData(hex: hex1)
        let string = String(data: data, encoding: .utf8)
        
        _decrypted = string!
        
        
    }
    
    func decryptData(hex: String) -> Data {
        var hex = hex
        var data = Data()
        while(hex.characters.count > 0) {
            let c: String = hex.substring(to: hex.index(hex.startIndex, offsetBy: 2))
            hex = hex.substring(from: hex.index(hex.startIndex, offsetBy: 2))
            var ch: UInt32 = 0
            Scanner(string: c).scanHexInt32(&ch)
            var char = UInt8(ch)
            data.append(&char, count: 1)
        }
        self._hex = hex
        //self_.data = data
        return data
        
    }
    
    
    

}
