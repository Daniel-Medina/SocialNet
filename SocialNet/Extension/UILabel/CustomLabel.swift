//
//  CustomLabel.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//

import Foundation
import UIKit
/// Clase custom para añadir funcionalidades adicionales al UIlabel
@IBDesignable
final class UILabelCustom: UILabel {
    /// Varaible para añadir la funcion de localizables al texto
    @IBInspectable
    var localizable: String = "" {
        didSet {
            self.text = self.localizable.localized
        }
    }
}
