//
//  PostDetailsRouter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 15/12/23.
//  
//
import Foundation
import UIKit
final class PostDetailsRouter {
    /// Cargar los componentes de la vista
    static func createModule() -> UIViewController {
        let viewController = getStoryboardID().instantiateViewController(withIdentifier: "PostDetailsVC")
        if let view = viewController as? PostDetailsVC {
            let presenter = PostDetailsPresenter()
            let interactor = PostDetailsInteractor()
            view.presenter = presenter
            presenter.view = view
            presenter.interactor = interactor
            presenter.router = PostDetailsRouter()
            interactor.presenter = presenter
            return viewController
        }
        return UIViewController()
    }
    /// Obtener el Storyboard del Modulo
    static func getStoryboardID() -> UIStoryboard {
        return UIStoryboard(name: "PostDetailsView", bundle: Bundle.main)
    }
}
// MARK: ROUTER PROTOCOL
extension PostDetailsRouter: PostDetailsRouterProtocol {
}
