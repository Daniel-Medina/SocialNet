//
//  FriendsListHorizontalCell.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 14/12/23.
//

import UIKit

class FriendsListHorizontalCell: UICollectionViewCell {
    /// Se activa cuando un elemento esta activo
    @IBOutlet weak var imgCheckmark: UIImageView!
    /// Imagen del perfil a mostrar
    @IBOutlet weak var imgProfile: UIImageView!
    /// Vista contenedor de la imagen
    @IBOutlet weak var viewContainer: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.viewContainer.layer.cornerRadius = self.viewContainer.frame.width / 2
        self.viewContainer.layer.masksToBounds = true
    }
    /// Funcion para asignar la imagen
    func setImage(image: String = "pawprint.circle.fill", isActive: Bool = false) {
        self.imgCheckmark.isHidden = !isActive
        self.imgProfile.image = UIImage(systemName: image)
    }
}
