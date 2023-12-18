//
//  MessageListPresenter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
final class MessageListPresenter {
    /// Referencia a la view
    var view: MessageListViewProtocol?
    /// Referencia al router
    var router: MessageListRouterProtocol?
    /// Referencia al interactor
    var interactor: MessageListInteractorInputProtocol?
}
// MARK: PRESENTER PROTOCOL
extension MessageListPresenter: MessageListPresenterProtocol {
}
// MARK: INTERACTOROUTPUT PROTOCOL
extension MessageListPresenter: MessageListInteractorOutputProtocol {
}
