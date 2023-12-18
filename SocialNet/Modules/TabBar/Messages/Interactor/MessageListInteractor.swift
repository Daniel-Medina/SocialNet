//
//  MessageListInteractor.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
import Foundation
final class MessageListInteractor {
    /// Referencia al presenter
    var presenter: MessageListInteractorOutputProtocol?
}
// MARK: INTERACTOR PROTOCOL
extension MessageListInteractor: MessageListInteractorInputProtocol {
}
