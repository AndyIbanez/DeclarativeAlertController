//
//  File.swift
//  
//
//  Created by Andy Ibanez on 3/1/20.
//

import Foundation
import UIKit

public struct CancelTitle: AlertActionStyleProtocol {
    let title: String
    let style: UIAlertAction.Style
    
    init(_ title: String) {
        self.title = title
        self.style = .cancel
    }
}
