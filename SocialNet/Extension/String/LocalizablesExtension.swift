//
//  LocalizablesExtension.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//
import Foundation
/// Clase para añadir la opcion de textos localizables a los strings
extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
