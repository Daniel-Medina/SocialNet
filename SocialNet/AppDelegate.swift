//
//  AppDelegate.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        UNUserNotificationCenter.current().delegate = self
        return true
    }

    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // Override point for customization after application finish.
        UNUserNotificationCenter.current().delegate = self
        return true
    }
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
 
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

}
// MARK: DELEGAR NOTIFICACIONES
extension AppDelegate: UNUserNotificationCenterDelegate {
    /// Al presionar una notificacion
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        NotificationCenterCustom.deleteCountBadge()
        LocalValuesFromUser.saveValue(key: .notificationCount, value: "\(NotificationCenterCustom.setValueBadgeInBellTabBar())")
        completionHandler()
    }
    /// Al recibir una notificacion con la app en uso
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        /// Obtener la vista del tabbar y asignar un mensaje
        let rootView = UIWindowCustom().getWindowRoot()
        for view in rootView?.children ?? [] {
            if let current = view as? TabBarVC {
                NotificationCenterCustom.setValueBadgeInBellTabBar()
                current.createIconHeaderRight()
            }
        }
        print(notification.request.content.userInfo[KeyForNotificationDataEnum.action.rawValue])
        completionHandler([.sound, .banner, .list])
    }
    
}
