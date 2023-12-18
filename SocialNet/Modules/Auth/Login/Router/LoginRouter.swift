//
//  LoginRouter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
import UIKit
final class LoginRouter {
    /// Cargar los componentes de la vista
    static func createModule() -> UIViewController {
        let viewController = getStoryboardID().instantiateViewController(withIdentifier: "LoginVC")
        if let view = viewController as? LoginVC {
            let presenter = LoginPresenter()
            let interactor = LoginInteractor()
            view.presenter = presenter
            presenter.view = view
            presenter.interactor = interactor
            presenter.router = LoginRouter()
            interactor.presenter = presenter
            return viewController
        }
        return UIViewController()
    }
    /// Obtener el Storyboard del Modulo
    static func getStoryboardID() -> UIStoryboard {
        return UIStoryboard(name: "LoginView", bundle: Bundle.main)
    }
}
// MARK: ROUTER PROTOCOL
extension LoginRouter: LoginRouterProtocol {
    /// Ir a la vista del Tabbar
    /// - Parameter current: Vista de donde se accede
    func changeViewToTabbar(current: UIViewController) {
        let router = TabBarRouter.createModule()
        let navigation = UINavigationController(rootViewController: router)
        navigation.modalPresentationStyle = .fullScreen
        guard let window = UIWindowCustom().getWindow() else { return }
        window.rootViewController = navigation
        window.makeKeyAndVisible()
        UIView.transition(with: window, duration: 1, options: .transitionCrossDissolve, animations: nil)
    }
}
