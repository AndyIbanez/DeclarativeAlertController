//
//  AlertActionStyleProtocol.swift
//  
//
//  Created by Andy Ibanez on 3/1/20.
//

import Foundation
import UIKit

public protocol AlertActionStyleProtocol {
    var title: String { get }
    var style: UIAlertAction.Style { get }
}

public struct DefaultTitle: AlertActionStyleProtocol {
    let title: String
    let style: UIAlertAction.Style
    
    init(_ title: String) {
        self.title = title
        self.style = .default
    }
}
