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
