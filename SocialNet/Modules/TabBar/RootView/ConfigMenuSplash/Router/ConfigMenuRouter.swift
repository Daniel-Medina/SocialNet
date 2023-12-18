//
//  ConfigMenuRouter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
import UIKit
final class ConfigMenuRouter {
    /// Cargar los componentes de la vista
    static func createModule() -> UIViewController {
        let viewController = getStoryboardID().instantiateViewController(withIdentifier: "ConfigMenuVC")
        if let view = viewController as? ConfigMenuVC {
            let presenter = ConfigMenuPresenter()
            let interactor = ConfigMenuInteractor()
            view.presenter = presenter
            presenter.view = view
            presenter.interactor = interactor
            presenter.router = ConfigMenuRouter()
            interactor.presenter = presenter
            return viewController
        }
        return UIViewController()
    }
    /// Obtener el Storyboard del Modulo
    static func getStoryboardID() -> UIStoryboard {
        return UIStoryboard(name: "ConfigMenuView", bundle: Bundle.main)
    }
}
// MARK: ROUTER PROTOCOL
extension ConfigMenuRouter: ConfigMenuRouterProtocol {
}
