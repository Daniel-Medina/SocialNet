//
//  TabBarProtocol.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import Foundation
import UIKit
// MARK: VIEW -> PRESENTER
protocol TabBarViewProtocol {
    /// Mostrar los elementos en la vista
    /// - Parameter list: Lista de vistas para el tabbar
    func showListView(list: [TabBarEntity])
}
// MARK: PRESENTER -> VIEW, ROUTER, INTERACTOR
protocol TabBarPresenterProtocol {
    /// Solicitar la lista de elementos al view
    func getListOfElements()
    /// Ir a la vista del menu de configuraciones
    func goToViewToConfigMenu()
    /// Ir a la vista del menu de perfil
    func goToViewToProfileMenu()
    /// Ir al splash de nofiticaciones
    func goToSplashNotification()
    /// funcion para ir a la vista de detalles del post
    func goToPostDetails()
}
// MARK: ALL COMPONENTS
protocol TabBarRouterProtocol {
    /// Ir a la vista del menu de configuraciones
    /// - Parameter current: Vista actual
    func changeViewToConfigMenu(current: UIViewController)
    /// Ir a la vista del menu de perfil
    /// - Parameter current: Vista actual
    func changeViewToProfileMenu(current: TabBarVC)
    /// Ir a la vista de las notificaciones
    /// - Parameter current: Vista actual
    func changeSViewToSplashNotification(current: TabBarVC)
    /// Ir a la vista del detalle del post
    /// - Parameter current: Vista actual
    func changeViewToPostDetails(current: UIViewController)
}
// MARK: PRESENTER -> INTERACTOR
protocol TabBarInteractorInputProtocol {
    /// Construir la lista de elementos del view
    func createListOfElements()
}
// MARK: INTERACTOR -> PRESENTER
protocol TabBarInteractorOutputProtocol {
    /// devolver la lista de elementos del tabbar
    /// - Parameter list: Lista de vistas para el tabbar
    func returnListOfElements(list: [TabBarEntity])
}
