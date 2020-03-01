//
//  File.swift
//  
//
//  Created by Andy Ibanez on 3/1/20.
//

import Foundation
import UIKit

public class AlertAction {
    let alertAction: UIAlertAction
    
    public init(@UIAlertActionBuilder _ content: () -> UIAlertAction) {
        alertAction = content()
    }
}
