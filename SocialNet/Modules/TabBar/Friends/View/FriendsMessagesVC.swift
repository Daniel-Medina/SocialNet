//
//  FriendsMessagesVC.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import UIKit
final class FriendsMessagesVC: UIViewController {
    /// Tabla con los mensajes enviados por seguidores
    @IBOutlet weak var tableListPost: UITableView!
    /// Colleccion views con los perfiles a mostrar
    @IBOutlet weak var collectionProfiles: UICollectionView!
    /// Referencia al presenter
    var presenter: FriendsMessagesPresenterProtocol?
    /// variable para conocer que elemento esta activo
    var idProfileCellActive: Int = -1
    /// Al cargar la vista
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadCollection()
        self.loadTable()
    }
    /// Funcion para cargar el collection view
    private func loadCollection() {
        self.collectionProfiles.dataSource = self
        self.collectionProfiles.delegate = self
        self.collectionProfiles.register(UINib(nibName: "FriendsListHorizontalCell", bundle: nil), forCellWithReuseIdentifier: "profile")
    }
    /// Funcion para cargar el table view
    private func loadTable() {
        self.tableListPost.dataSource = self
        self.tableListPost.delegate = self
        self.tableListPost.register(UINib(nibName: "PostViewDetailsCell", bundle: nil), forCellReuseIdentifier: "post")
    }
}
// MARK: VIEW PROTOCOL
extension FriendsMessagesVC: FriendsMessagesViewProtocol {
}
