//
//  NotificationListRouter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
import UIKit
final class NotificationListRouter {
    /// Cargar los componentes de la vista
    static func createModule(delegate: NotificationSplshDelegate) -> UIViewController {
        let viewController = getStoryboardID().instantiateViewController(withIdentifier: "NotificationListVC")
        if let view = viewController as? NotificationListVC {
            let presenter = NotificationListPresenter()
            let interactor = NotificationListInteractor()
            view.presenter = presenter
            view.delegate = delegate
            presenter.view = view
            presenter.interactor = interactor
            presenter.router = NotificationListRouter()
            interactor.presenter = presenter
            return viewController
        }
        return UIViewController()
    }
    /// Obtener el Storyboard del Modulo
    static func getStoryboardID() -> UIStoryboard {
        return UIStoryboard(name: "NotificationListView", bundle: Bundle.main)
    }
}
// MARK: ROUTER PROTOCOL
extension NotificationListRouter: NotificationListRouterProtocol {
}
