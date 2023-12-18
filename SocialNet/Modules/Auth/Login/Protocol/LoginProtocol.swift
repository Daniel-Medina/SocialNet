//
//  LoginProtocol.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
import UIKit
// MARK: VIEW -> PRESENTER
protocol LoginViewProtocol {
    /// CODE
}
// MARK: PRESENTER -> VIEW, ROUTER, INTERACTOR
protocol LoginPresenterProtocol {
    /// Ir a la vista del Tabbar
    func goToViewTabbar()
}
// MARK: ALL COMPONENTS
protocol LoginRouterProtocol {
    /// Ir a la vista del Tabbar
    /// - Parameter current: Vista de donde se accede
    func changeViewToTabbar(current: UIViewController)
}
// MARK: PRESENTER -> INTERACTOR
protocol LoginInteractorInputProtocol {
    /// CODE
}
// MARK: INTERACTOR -> PRESENTER
protocol LoginInteractorOutputProtocol {
    /// CODE
}
