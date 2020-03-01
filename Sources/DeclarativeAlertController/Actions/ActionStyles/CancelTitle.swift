//
//  File.swift
//  
//
//  Created by Andy Ibanez on 3/1/20.
//

import Foundation
import UIKit

public struct CancelTitle: AlertActionStyleProtocol {
    public let title: String
    public let style: UIAlertAction.Style
    
    public init(_ title: String) {
        self.title = title
        self.style = .cancel
    }
}
