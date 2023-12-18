//
//  MessageListRouter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
import UIKit
final class MessageListRouter {
    /// Cargar los componentes de la vista
    static func createModule() -> UIViewController {
        let viewController = getStoryboardID().instantiateViewController(withIdentifier: "MessageListVC")
        if let view = viewController as? MessageListVC {
            let presenter = MessageListPresenter()
            let interactor = MessageListInteractor()
            view.presenter = presenter
            presenter.view = view
            presenter.interactor = interactor
            presenter.router = MessageListRouter()
            interactor.presenter = presenter
            return viewController
        }
        return UIViewController()
    }
    /// Obtener el Storyboard del Modulo
    static func getStoryboardID() -> UIStoryboard {
        return UIStoryboard(name: "MessageListView", bundle: Bundle.main)
    }
}
// MARK: ROUTER PROTOCOL
extension MessageListRouter: MessageListRouterProtocol {
}
