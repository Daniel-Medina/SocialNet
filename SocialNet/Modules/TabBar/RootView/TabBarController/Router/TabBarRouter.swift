//
//  TabBarRouter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
import UIKit
final class TabBarRouter {
    /// Cargar los componentes de la vista
    static func createModule() -> UIViewController {
        let viewController = getStoryboardID().instantiateViewController(withIdentifier: "TabBarVC")
        if let view = viewController as? TabBarVC {
            let presenter = TabBarPresenter()
            let interactor = TabBarInteractor()
            view.presenter = presenter
            presenter.view = view
            presenter.interactor = interactor
            presenter.router = TabBarRouter()
            interactor.presenter = presenter
            return viewController
        }
        return UIViewController()
    }
    /// Obtener el Storyboard del Modulo
    static func getStoryboardID() -> UIStoryboard {
        return UIStoryboard(name: "TabBarView", bundle: Bundle.main)
    }
}
// MARK: ROUTER PROTOCOL
extension TabBarRouter: TabBarRouterProtocol {
    /// Ir a la vista del menu de configuraciones
    /// - Parameter current: Vista actual
    func changeViewToConfigMenu(current: UIViewController) {
        let router = ConfigMenuRouter.createModule()
        router.modalPresentationStyle = .fullScreen
        current.navigationController?.pushViewController(router, animated: true)
    }
    /// Ir a la vista del menu de perfil
    /// - Parameter current: Vista actual
    func changeViewToProfileMenu(current: TabBarVC) {
        let router = ProfileMenuRouter.createModule(delegate: current)
        router.modalPresentationStyle = .fullScreen
        current.present(router, animated: true)
    }
    /// Ir a la vista de las notificaciones
    /// - Parameter current: Vista actual
    func changeSViewToSplashNotification(current: TabBarVC) {
        let router = NotificationListRouter.createModule(delegate: current)
        router.modalPresentationStyle = .fullScreen
        current.present(router, animated: true)
    }
    /// Ir a la vista del detalle del post
    /// - Parameter current: Vista actual
    func changeViewToPostDetails(current: UIViewController) {
        let router = PostDetailsRouter.createModule()
        current.navigationController?.pushViewController(router, animated: true)
    }
}
