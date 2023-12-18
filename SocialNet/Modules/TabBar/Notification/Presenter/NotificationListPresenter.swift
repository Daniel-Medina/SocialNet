//
//  NotificationListPresenter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
final class NotificationListPresenter {
    /// Referencia a la view
    var view: NotificationListViewProtocol?
    /// Referencia al router
    var router: NotificationListRouterProtocol?
    /// Referencia al interactor
    var interactor: NotificationListInteractorInputProtocol?
}
// MARK: PRESENTER PROTOCOL
extension NotificationListPresenter: NotificationListPresenterProtocol {
}
// MARK: INTERACTOROUTPUT PROTOCOL
extension NotificationListPresenter: NotificationListInteractorOutputProtocol {
}
