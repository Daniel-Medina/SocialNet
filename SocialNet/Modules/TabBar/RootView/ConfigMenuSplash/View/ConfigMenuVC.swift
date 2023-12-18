//
//  ConfigMenuVC.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import UIKit
final class ConfigMenuVC: UIViewController {
    /// Referencia al presenter
    var presenter: ConfigMenuPresenterProtocol?
    /// Al cargar la vista
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
// MARK: VIEW PROTOCOL
extension ConfigMenuVC: ConfigMenuViewProtocol {
}
