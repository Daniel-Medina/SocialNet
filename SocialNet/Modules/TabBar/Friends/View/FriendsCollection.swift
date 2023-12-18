//
//  FriendsCollection.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 14/12/23.
//
import Foundation
import UIKit
extension FriendsMessagesVC: UICollectionViewDelegate, UICollectionViewDataSource {
    /// Regresar el tamaño de la tabla
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    /// Crear los elementos de la celda
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "profile", for: indexPath) as? FriendsListHorizontalCell else { return UICollectionViewCell() }
        /// Si la celda y el index path son la misma activar el icono
        cell.setImage(isActive: self.idProfileCellActive == indexPath.row ? true : false)
        return cell
    }
    /// Al presionar un elemento mostrar la marca de activo y recargar la tabla
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if idProfileCellActive == indexPath.row {
            /// Si es el mismo valor asignar -1 para indicar que ninguna esta activado
            self.idProfileCellActive = -1
        } else {
            /// Si es diferente significa que alguna celda esta activada y se desea cambiar a esa
            self.idProfileCellActive = indexPath.row
        }
        self.collectionProfiles.reloadData()
    }
}
