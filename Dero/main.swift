//
//  main.swift
//  Dero
//
//  Created by Jakob Lautrup Nysom on 08/09/16.
//  Copyright © 2016 Jakob Lautrup Nysom. All rights reserved.
//

import Foundation

let text = "annyeox haseyo"
var output = ""
text.withCString({ ptr in
    var out: UnsafeMutablePointer<UnsafePointer<Int8>?> = UnsafeMutablePointer.allocate(capacity: 1)
    let status = dero_convert(ptr, out)
    if status == DERO_OK {
        let converted = String(cString: out.pointee!)
        print("Converted: \(converted)")
    } else {
        dero_explain_error(ptr)
    }
})

//var cstr = dero_error_message(-1)
//let t = String(cString: cstr!)
//print("Message: \(t)")

//print("Hello, World!")

