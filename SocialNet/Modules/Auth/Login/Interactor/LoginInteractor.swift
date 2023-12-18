//
//  LoginInteractor.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
import Foundation
final class LoginInteractor {
    /// Referencia al presenter
    var presenter: LoginInteractorOutputProtocol?
}
// MARK: INTERACTOR PROTOCOL
extension LoginInteractor: LoginInteractorInputProtocol {
}
