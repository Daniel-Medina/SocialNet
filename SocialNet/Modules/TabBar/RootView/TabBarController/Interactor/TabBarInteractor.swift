//
//  TabBarInteractor.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
import Foundation
final class TabBarInteractor {
    /// Referencia al presenter
    var presenter: TabBarInteractorOutputProtocol?
}
// MARK: INTERACTOR PROTOCOL
extension TabBarInteractor: TabBarInteractorInputProtocol {
    /// Construir la lista de elementos del view
    func createListOfElements() {
        let listElements = [
            TabBarEntity(ico: "pawprint", router: HomeRootRouter.createModule()),
            TabBarEntity(ico: "person.3", router: FriendsMessagesRouter.createModule()),
            TabBarEntity(ico: "magnifyingglass.circle", router: SearchRootRouter.createModule()),
            TabBarEntity(ico: "envelope", router: MessageListRouter.createModule())
        ]
        self.presenter?.returnListOfElements(list: listElements)
    }
}
