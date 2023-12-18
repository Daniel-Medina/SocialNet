//
//  ProfileMenuRouter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
import UIKit
final class ProfileMenuRouter {
    /// Cargar los componentes de la vista
    static func createModule(delegate: ProfileMenuDelegate) -> UIViewController {
        let viewController = getStoryboardID().instantiateViewController(withIdentifier: "ProfileMenuVC")
        if let view = viewController as? ProfileMenuVC {
            let presenter = ProfileMenuPresenter()
            let interactor = ProfileMenuInteractor()
            view.presenter = presenter
            presenter.view = view
            presenter.interactor = interactor
            presenter.router = ProfileMenuRouter()
            interactor.presenter = presenter
            return viewController
        }
        return UIViewController()
    }
    /// Obtener el Storyboard del Modulo
    static func getStoryboardID() -> UIStoryboard {
        return UIStoryboard(name: "ProfileMenuView", bundle: Bundle.main)
    }
}
// MARK: ROUTER PROTOCOL
extension ProfileMenuRouter: ProfileMenuRouterProtocol {
}
