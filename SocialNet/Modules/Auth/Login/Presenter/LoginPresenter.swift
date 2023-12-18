//
//  LoginPresenter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
import UIKit
final class LoginPresenter {
    /// Referencia a la view
    var view: LoginViewProtocol?
    /// Referencia al router
    var router: LoginRouterProtocol?
    /// Referencia al interactor
    var interactor: LoginInteractorInputProtocol?
}
// MARK: PRESENTER PROTOCOL
extension LoginPresenter: LoginPresenterProtocol {
    /// Funcion para ir al tabbar
    func goToViewTabbar() {
        guard let current = self.view as? UIViewController else { return }
        self.router?.changeViewToTabbar(current: current)
    }
}
// MARK: INTERACTOROUTPUT PROTOCOL
extension LoginPresenter: LoginInteractorOutputProtocol {
}
