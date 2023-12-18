//
//  SplashRouter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
import UIKit
final class SplashRouter {
    /// Cargar los componentes de la vista
    static func createModule() -> UIViewController {
        let viewController = getStoryboardID().instantiateViewController(withIdentifier: "SplashVC")
        if let view = viewController as? SplashVC {
            let presenter = SplashPresenter()
            let interactor = SplashInteractor()
            view.presenter = presenter
            presenter.view = view
            presenter.interactor = interactor
            presenter.router = SplashRouter()
            interactor.presenter = presenter
            return viewController
        }
        return UIViewController()
    }
    /// Obtener el Storyboard del Modulo
    static func getStoryboardID() -> UIStoryboard {
        return UIStoryboard(name: "SplashView", bundle: Bundle.main)
    }
}
// MARK: ROUTER PROTOCOL
extension SplashRouter: SplashRouterProtocol {
    /// Funcion para cambiar a la vista login
    /// - Parameter current:vista de origen
    func changeViewToLogin(current: UIViewController) {
        let router = LoginRouter.createModule()
        router.modalPresentationStyle = .fullScreen
        current.present(router, animated: true)
    }
}
