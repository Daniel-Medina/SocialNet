//
//  NotificationListInteractor.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
import Foundation
final class NotificationListInteractor {
    /// Referencia al presenter
    var presenter: NotificationListInteractorOutputProtocol?
}
// MARK: INTERACTOR PROTOCOL
extension NotificationListInteractor: NotificationListInteractorInputProtocol {
}
