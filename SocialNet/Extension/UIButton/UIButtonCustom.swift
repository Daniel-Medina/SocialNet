//
//  UIButtonCustom.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//
import Foundation
import UIKit
/// Clase para agregar funciones adicioneles al UIbutton
final class UIButtonCustom: UIButton {
    /// Variable para agregar localized al button
    @IBInspectable
    var localizable: String = "" {
        didSet {
            self.setTitle(self.localizable.localized, for: .normal)
        }
    }
    /// Variable para agregar la opcion de corner radius al boton
    @IBInspectable
    var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = self.cornerRadius
        }
    }
}
