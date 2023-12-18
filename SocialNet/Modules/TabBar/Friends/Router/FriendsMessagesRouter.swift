//
//  FriendsMessagesRouter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
import UIKit
final class FriendsMessagesRouter {
    /// Cargar los componentes de la vista
    static func createModule() -> UIViewController {
        let viewController = getStoryboardID().instantiateViewController(withIdentifier: "FriendsMessagesVC")
        if let view = viewController as? FriendsMessagesVC {
            let presenter = FriendsMessagesPresenter()
            let interactor = FriendsMessagesInteractor()
            view.presenter = presenter
            presenter.view = view
            presenter.interactor = interactor
            presenter.router = FriendsMessagesRouter()
            interactor.presenter = presenter
            return viewController
        }
        return UIViewController()
    }
    /// Obtener el Storyboard del Modulo
    static func getStoryboardID() -> UIStoryboard {
        return UIStoryboard(name: "FriendsMessagesView", bundle: Bundle.main)
    }
}
// MARK: ROUTER PROTOCOL
extension FriendsMessagesRouter: FriendsMessagesRouterProtocol {
}
