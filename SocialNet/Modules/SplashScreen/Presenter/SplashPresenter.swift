//
//  SplashPresenter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
import UIKit
final class SplashPresenter {
    /// Referencia a la view
    var view: SplashViewProtocol?
    /// Referencia al router
    var router: SplashRouterProtocol?
    /// Referencia al interactor
    var interactor: SplashInteractorInputProtocol?
}
// MARK: PRESENTER PROTOCOL
extension SplashPresenter: SplashPresenterProtocol {
    /// Funcion para ir al login
    func goToViewLogin() {
        guard let current = self.view as? UIViewController else { return }
        self.router?.changeViewToLogin(current: current)
    }
}
// MARK: INTERACTOROUTPUT PROTOCOL
extension SplashPresenter: SplashInteractorOutputProtocol {
}
