//
//  PostDetailsPresenter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 15/12/23.
//  
//
import Foundation
final class PostDetailsPresenter {
    /// Referencia a la view
    var view: PostDetailsViewProtocol?
    /// Referencia al router
    var router: PostDetailsRouterProtocol?
    /// Referencia al interactor
    var interactor: PostDetailsInteractorInputProtocol?
}
// MARK: PRESENTER PROTOCOL
extension PostDetailsPresenter: PostDetailsPresenterProtocol {
}
// MARK: INTERACTOROUTPUT PROTOCOL
extension PostDetailsPresenter: PostDetailsInteractorOutputProtocol {
}
