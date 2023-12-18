//
//  TabBarPresenter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
import UIKit
final class TabBarPresenter {
    /// Referencia a la view
    var view: TabBarViewProtocol?
    /// Referencia al router
    var router: TabBarRouterProtocol?
    /// Referencia al interactor
    var interactor: TabBarInteractorInputProtocol?
}
// MARK: PRESENTER PROTOCOL
extension TabBarPresenter: TabBarPresenterProtocol {
    /// Ir a la vista de configuracion
    func goToViewToConfigMenu() {
        guard let current = self.view as? UIViewController else { return }
        self.router?.changeViewToConfigMenu(current: current)
    }
    /// Ir a la vista del menu del perfil
    func goToViewToProfileMenu() {
        guard let current = self.view as? TabBarVC else { return }
        self.router?.changeViewToProfileMenu(current: current)
    }
    /// Solicitar la lista de elementos al view
    func getListOfElements() {
        self.interactor?.createListOfElements()
    }
    /// Ir a la vista de las notificaciones
    func goToSplashNotification() {
        guard let current = view as? TabBarVC else { return }
        self.router?.changeSViewToSplashNotification(current: current)
    }
    /// Ir a los detalles del post
    func goToPostDetails() {
        guard let current = view as? UIViewController else { return }
        self.router?.changeViewToPostDetails(current: current)
    }
}
// MARK: INTERACTOROUTPUT PROTOCOL
extension TabBarPresenter: TabBarInteractorOutputProtocol {
    /// devolver la lista de elementos del tabbar
    /// - Parameter list: Lista de vistas para el tabbar
    func returnListOfElements(list: [TabBarEntity]) {
        self.view?.showListView(list: list)
    }
}
