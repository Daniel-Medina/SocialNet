//
//  LocalValuesFromUser.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 14/12/23.
//
import Foundation
/// Enum para almacenar las claves de los valores
enum KeyDefaulsValueEnum: String {
    /// Numero de notificaciones del usuario
    case notificationCount = "NotificationCount"
}
/// Clase para obtener la lista de valores locales del usuario
final class LocalValuesFromUser {
    /// Devolver el valor de la clave
    static func getValue(key: KeyDefaulsValueEnum) -> String {
        return UserDefaults.standard.string(forKey: key.rawValue) ?? ""
    }
    /// Almacenar un nuevo valor
    static func saveValue(key: KeyDefaulsValueEnum, value: String) {
        UserDefaults.standard.set(value, forKey: key.rawValue)
    }
    /// Limpiar un valor
    static func resetValue(key: KeyDefaulsValueEnum) {
        self.saveValue(key: key, value: "")
    }
}
