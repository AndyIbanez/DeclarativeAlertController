//
//  AlertHandler.swift
//  
//
//  Created by Andy Ibanez on 3/1/20.
//

import Foundation
import UIKit

public struct AlertHandler {
    let action: () -> Void
    public init(_ action: @escaping () -> Void = {}) {
        self.action = action
    }
}
