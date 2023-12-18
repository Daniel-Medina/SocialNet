//
//  NotificationCenterCustom.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 14/12/23.
//
import Foundation
import UserNotifications
import UIKit
/// Enum para las claves del usertdata de la notificacion
enum KeyForNotificationDataEnum: String {
    /// Tipo de ventana a mostrar segun notificacion
    case action = "action"
    /// Id para recuperar el valor
    case identfier = "uniqueId"
}
/// enum para las acciones del Userdata de las notificaciones
enum ActionForNotificationDataEnum: Int {
    /// Cuando alguien sigue al usuario
    case follower = 0
    /// Cuando seguidor sube un post
    case post = 1
    /// Alertas de la aplicacion
    case alert = 2
    /// Cuando se tiene una mencion
    case tag = 3
}
/// Clase para administrar las notificaciones
final class NotificationCenterCustom {
    /// Crear un ID unico para cada notificacion
    static private func createUniqueId() -> String {
        let uuidObject = CFUUIDCreate(nil)
        let uuid = CFUUIDCreateString(nil, uuidObject)
        guard let unique = uuid as? String else { return "" }
        return unique
    }
    /// Crear una notificacion
    static func sendNotificationForTime(title: String, subtitle: String = "", body: String, seconds: TimeInterval, loop: Bool = false) {
        /// Notificacion
        let content = UNMutableNotificationContent()
        content.title = title
        content.body = body
        content.subtitle = subtitle
        content.sound = .default
        content.badge = (UIApplication.shared.applicationIconBadgeNumber + 1) as NSNumber
        let valueArray: [AnyHashable: Any] = [KeyForNotificationDataEnum.action.rawValue: ActionForNotificationDataEnum.post.rawValue, KeyForNotificationDataEnum.identfier.rawValue: "12324353453"]
        content.userInfo = valueArray
        /// Trigger
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: seconds, repeats: loop)
        /// Request
        let request = UNNotificationRequest(identifier: self.createUniqueId(), content: content, trigger: trigger)
        /// Crear la notficacion
        UNUserNotificationCenter.current().add(request) {(error) in
            if let error = error {
                print(error)
            }
        }
    }
    /// Funcion para solicitar los permisos a la aplicacion al iniciar
    static func requestNotificationPermission() {
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .badge, .sound]) { (granted, error) in
            if let error = error {
                print(error)
            }
        }
    }
    /// Funcion para eliminar todos los badges de la notificacion
    static func deleteCountBadge() {
        UIApplication.shared.applicationIconBadgeNumber = 0
    }
    /// Agregar un contador al Tabbar en el icono de la campana
    static func setValueBadgeInBellTabBar() {
        var count = LocalValuesFromUser.getValue(key: .notificationCount)
        /// Si no existe el contador crearlo
        if count == "" {
            count = "0"
            LocalValuesFromUser.saveValue(key: .notificationCount, value: count)
        }
        /// Intentar convertir el string a int
        guard let counterbadge: Int = Int(count) else { return }
        LocalValuesFromUser.saveValue(key: .notificationCount, value: "\(counterbadge + 1)")
    }
    /// Funcion para regresar el numero de badges actuales y de notificacion
    static func getNumberOfNotification() -> Int {
        let count = Int(LocalValuesFromUser.getValue(key: .notificationCount)) ?? 0
        let bagdeFromApp = UIApplication.shared.applicationIconBadgeNumber
        let totalBagde = count + bagdeFromApp
        return totalBagde
    }
    /// Funcion para actualizar la vista si la app pasa a segundo plano y se reanuda
    static func updateTabBarViewFromRestaureView() {
        let window = UIWindowCustom().getWindowRoot()
        /// Validar si existe el tab bar y refrescar los iconos
        for view in window?.children ?? [] {
            if let tab = view as? TabBarVC {
                tab.createIconHeaderRight()
            }
        }
    }
}
