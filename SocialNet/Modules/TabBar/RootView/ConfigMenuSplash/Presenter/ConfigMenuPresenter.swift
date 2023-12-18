//
//  ConfigMenuPresenter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
final class ConfigMenuPresenter {
    /// Referencia a la view
    var view: ConfigMenuViewProtocol?
    /// Referencia al router
    var router: ConfigMenuRouterProtocol?
    /// Referencia al interactor
    var interactor: ConfigMenuInteractorInputProtocol?
}
// MARK: PRESENTER PROTOCOL
extension ConfigMenuPresenter: ConfigMenuPresenterProtocol {
}
// MARK: INTERACTOROUTPUT PROTOCOL
extension ConfigMenuPresenter: ConfigMenuInteractorOutputProtocol {
}
