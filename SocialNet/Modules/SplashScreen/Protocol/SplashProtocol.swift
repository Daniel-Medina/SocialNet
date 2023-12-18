//
//  SplashProtocol.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
import UIKit
// MARK: VIEW -> PRESENTER
protocol SplashViewProtocol {
    /// CODE
}
// MARK: PRESENTER -> VIEW, ROUTER, INTERACTOR
protocol SplashPresenterProtocol {
    /// Funcion para ir al login
    func goToViewLogin()
}
// MARK: ALL COMPONENTS
protocol SplashRouterProtocol {
    /// Funcion para cambiar a la vista login
    /// - Parameter current:vista de origen
    func changeViewToLogin(current: UIViewController)
}
// MARK: PRESENTER -> INTERACTOR
protocol SplashInteractorInputProtocol {
    /// CODE
}
// MARK: INTERACTOR -> PRESENTER
protocol SplashInteractorOutputProtocol {
    /// CODE
}
