//
//  AlertControllerBuilder.swift
//  
//
//  Created by Andy Ibanez on 3/1/20.
//

import Foundation
import UIKit

@_functionBuilder
public struct Alert {
    public static func buildBlock(_ actions: AlertAction...) -> [UIAlertAction] {
        return actions.map { $0.alertAction }
    }
}
