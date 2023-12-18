//
//  NotificationListVC.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import UIKit
final class NotificationListVC: UIViewController {
    /// Referencia al presenter
    var presenter: NotificationListPresenterProtocol?
    /// delegate para realizar las acciones en el tabbar
    var delegate: NotificationSplshDelegate?
    /// Al cargar la vista
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func btnCloseSetOnClickListener(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
// MARK: VIEW PROTOCOL
extension NotificationListVC: NotificationListViewProtocol {
}
