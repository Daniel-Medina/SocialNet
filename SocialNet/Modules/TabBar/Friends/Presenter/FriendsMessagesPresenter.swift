//
//  FriendsMessagesPresenter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
final class FriendsMessagesPresenter {
    /// Referencia a la view
    var view: FriendsMessagesViewProtocol?
    /// Referencia al router
    var router: FriendsMessagesRouterProtocol?
    /// Referencia al interactor
    var interactor: FriendsMessagesInteractorInputProtocol?
}
// MARK: PRESENTER PROTOCOL
extension FriendsMessagesPresenter: FriendsMessagesPresenterProtocol {
}
// MARK: INTERACTOROUTPUT PROTOCOL
extension FriendsMessagesPresenter: FriendsMessagesInteractorOutputProtocol {
}
