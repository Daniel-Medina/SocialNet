//
//  UIWindowCustom.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 15/12/23.
//
import Foundation
import UIKit
final class UIWindowCustom {
    var window: UIWindow? {
        return UIApplication.shared.connectedScenes
            .filter{ $0.activationState == .foregroundActive }
            .first(where: { $0 is UIWindowScene })
            .flatMap({$0 as? UIWindowScene})?.windows
            .first(where: \.isKeyWindow)
    }
    /// Funcion para obtener el window base
    func getWindow() -> UIWindow? {
        return self.window
    }
    /// Funcion para obtener el rootViewController
    func getWindowRoot() -> UIViewController? {
        return self.window?.rootViewController
    }
}
