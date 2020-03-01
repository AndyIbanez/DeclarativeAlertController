//
//  UIAlertActionBuilder.swift
//  
//
//  Created by Andy Ibanez on 2/28/20.
//

import Foundation
import UIKit

@_functionBuilder
public struct UIAlertActionBuilder {
    public static func buildBlock
        (
        _ style: AlertActionStyleProtocol,
        _ alertHandler: AlertHandler
    ) -> UIAlertAction {
        return UIAlertAction(title: style.title, style: style.style) { _ in
            alertHandler.action()
        }
    }
}
