//
//  HomeRootPresenter.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
final class HomeRootPresenter {
    /// Referencia a la view
    var view: HomeRootViewProtocol?
    /// Referencia al router
    var router: HomeRootRouterProtocol?
    /// Referencia al interactor
    var interactor: HomeRootInteractorInputProtocol?
}
// MARK: PRESENTER PROTOCOL
extension HomeRootPresenter: HomeRootPresenterProtocol {
}
// MARK: INTERACTOROUTPUT PROTOCOL
extension HomeRootPresenter: HomeRootInteractorOutputProtocol {
}
