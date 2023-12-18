//
//  ProfileMenuPresenter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
final class ProfileMenuPresenter {
    /// Referencia a la view
    var view: ProfileMenuViewProtocol?
    /// Referencia al router
    var router: ProfileMenuRouterProtocol?
    /// Referencia al interactor
    var interactor: ProfileMenuInteractorInputProtocol?
}
// MARK: PRESENTER PROTOCOL
extension ProfileMenuPresenter: ProfileMenuPresenterProtocol {
}
// MARK: INTERACTOROUTPUT PROTOCOL
extension ProfileMenuPresenter: ProfileMenuInteractorOutputProtocol {
}
