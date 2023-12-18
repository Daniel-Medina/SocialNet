//
//  SearchRootPresenter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
final class SearchRootPresenter {
    /// Referencia a la view
    var view: SearchRootViewProtocol?
    /// Referencia al router
    var router: SearchRootRouterProtocol?
    /// Referencia al interactor
    var interactor: SearchRootInteractorInputProtocol?
}
// MARK: PRESENTER PROTOCOL
extension SearchRootPresenter: SearchRootPresenterProtocol {
}
// MARK: INTERACTOROUTPUT PROTOCOL
extension SearchRootPresenter: SearchRootInteractorOutputProtocol {
}
