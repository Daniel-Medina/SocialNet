//
//  PostDetailsVC.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 15/12/23.
//  
//
import UIKit
final class PostDetailsVC: UIViewController {
    /// Referencia al presenter
    var presenter: PostDetailsPresenterProtocol?
    /// Al cargar la vista
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
// MARK: VIEW PROTOCOL
extension PostDetailsVC: PostDetailsViewProtocol {
}
