//
//  HomeRootVC.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import UIKit
final class HomeRootVC: UIViewController {
    /// Tabla con los elementos a mostrar
    @IBOutlet weak var tableNewPost: UITableView!
    /// Referencia al presenter
    var presenter: HomeRootPresenterProtocol?
    /// Al cargar la vista
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadTable()
    }
    /// crear la tabla e inicializar la celda
    private func loadTable() {
        self.tableNewPost.delegate = self
        self.tableNewPost.dataSource = self
        self.tableNewPost.register(UINib(nibName: "PostViewDetailsCell", bundle: nil), forCellReuseIdentifier: "item")
    }
}
// MARK: VIEW PROTOCOL
extension HomeRootVC: HomeRootViewProtocol {
}
// MARK: TABLE DELEGATE
extension HomeRootVC: UITableViewDelegate, UITableViewDataSource {
    /// Regersar el tamaño de la tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    /// Crear la tabla y las celdas
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "item", for: indexPath) as? PostViewDetailsCell else { return UITableViewCell() }
        cell.selectionStyle = .none
        return cell
    }
    /// al presionar un elemento de la celda
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let tab = tabBarController as? TabBarVC, let tabPresenter = tab.presenter else { return }
        tabPresenter.goToPostDetails()
    }
}
