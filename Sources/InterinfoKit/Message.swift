//
//  Message.swift
//  
//
//  Created by 開發人員張軒瑋 on 2023/11/21.
//

import Foundation
import UIKit

final public class Message {
    
    public static let shared = Message()
    
    public init() {}
    
    public func show(title: String, message: String, confirm: (()->Void)? = nil) -> UIAlertController {
        let controller = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "確認", style: .default, handler: {_ in confirm?() })
        controller.addAction(action)
        
        return controller
    }
}
