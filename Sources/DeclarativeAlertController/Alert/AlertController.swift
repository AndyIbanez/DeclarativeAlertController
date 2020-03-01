//
//  AlertController.swift
//  
//
//  Created by Andy Ibanez on 3/1/20.
//

import Foundation
import UIKit

public class AlertController {
    let alertController: UIAlertController
    
    public init
        (
        title: String? = nil,
        message: String? = nil,
        style: UIAlertController.Style,
        @AlertControllerBuilder _ content: () -> [UIAlertAction]
    ) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: style
        )
        
        content().forEach { alert.addAction($0) }
        
        self.alertController = alert
    }
}
