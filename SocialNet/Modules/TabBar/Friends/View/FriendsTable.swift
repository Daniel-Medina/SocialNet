//
//  FriendsTable.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 14/12/23.
//
import Foundation
import UIKit
/// Extension para administrar la tabla de post
extension FriendsMessagesVC: UITableViewDelegate, UITableViewDataSource {
    /// tamaño del arreglo
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    /// Crear las celdas de la tabla
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "post", for: indexPath) as? PostViewDetailsCell else { return UITableViewCell() }
        return cell
    }
    /// Devolver la altura de la celda
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
