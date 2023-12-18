//
//  MessageListVC.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import UIKit
final class MessageListVC: UIViewController {
    /// Referencia al presenter
    var presenter: MessageListPresenterProtocol?
    /// Al cargar la vista
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
// MARK: VIEW PROTOCOL
extension MessageListVC: MessageListViewProtocol {
}
