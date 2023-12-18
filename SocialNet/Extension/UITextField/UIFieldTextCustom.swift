//
//  UIFieldTextCustom.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//
import Foundation
import UIKit
/// Clase para agregar funciones adicioneles al UITextField
@IBDesignable
final class UITextFieldCustom: UITextField {
    /// Variable para agregar un localized al palceholder
    @IBInspectable
    var localizadPlaceholder: String = "" {
        didSet {
            self.placeholder = self.localizadPlaceholder.localized
        }
    }
    /// Variable para añadir un localized al campo de text
    @IBInspectable
    var localizadText: String = "" {
        didSet {
            self.placeholder = self.localizadText.localized
        }
    }
}
