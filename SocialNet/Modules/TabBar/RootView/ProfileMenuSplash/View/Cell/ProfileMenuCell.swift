//
//  ProfileMenuCell.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 14/12/23.
//

import UIKit

class ProfileMenuCell: UITableViewCell {
    /// Imagen del icono
    @IBOutlet weak var imgIconOption: UIImageView!
    /// Texto de la opcion
    @IBOutlet weak var lbProfileOption: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    /// Crear la funcion para inicializar las funciones
    func setvalues(icon: String, name: String) {
        self.imgIconOption.image = UIImage(systemName: icon)
        self.lbProfileOption.text = name
    }
}
