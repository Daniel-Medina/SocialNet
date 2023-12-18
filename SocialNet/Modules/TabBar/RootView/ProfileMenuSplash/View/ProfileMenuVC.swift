//
//  ProfileMenuVC.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import UIKit
final class ProfileMenuVC: UIViewController {
    /// tabla con los elementos del menu
    @IBOutlet private weak var tableMenuOptions: UITableView!
    /// Referencia al presenter
    var presenter: ProfileMenuPresenterProtocol?
    /// Variable con los elementos del menu
    var listMenuOption: [ProfileMenuEntity]?
    /// Al cargar la vista
    override func viewDidLoad() {
        super.viewDidLoad()
        self.listMenuOption = [
            ProfileMenuEntity(name: "Mi cuenta", icon: "person.fill", action: .profile),
            ProfileMenuEntity(name: "Colección", icon: "bookmark.fill", action: .save),
            ProfileMenuEntity(name: "Sorprendeme", icon: "scope", action: .randomMessage),
            ProfileMenuEntity(name: "Sugerir amigo", icon: "person.fill.questionmark", action: .randomMessage)
        ]
        self.loadTable()
    }
    /// Al aparecer la vista ocultar el header
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    /// Crear los elementos de la tabla
    func loadTable() {
        self.tableMenuOptions.dataSource = self
        self.tableMenuOptions.delegate = self
        self.tableMenuOptions.register(UINib(nibName: "ProfileMenuCell", bundle: nil), forCellReuseIdentifier: "item")
        self.tableMenuOptions.separatorStyle = .none
    }
    /// Al desaparecer la vista mostrar el header
    override func viewDidDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    /// Cerrar el modal
    @IBAction func btnCloseSetOnClickListener(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
// MARK: VIEW PROTOCOL
extension ProfileMenuVC: ProfileMenuViewProtocol {
}
// MARK: TABLE DELEGATE
extension ProfileMenuVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listMenuOption?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "item", for: indexPath) as? ProfileMenuCell else { return UITableViewCell()}
        if let values = self.listMenuOption?[indexPath.row] {
            cell.setvalues(icon: values.icon, name: values.name)
        }
        return cell
    }
    
}
