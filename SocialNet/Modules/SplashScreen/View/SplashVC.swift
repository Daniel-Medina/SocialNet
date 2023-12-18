//
//  SplashVC.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import UIKit
final class SplashVC: UIViewController {
    /// Imagen para el logotipo
    @IBOutlet private weak var imgLogoType: UIImageView!
    /// Referencia al presenter
    var presenter: SplashPresenterProtocol?
    /// Al cargar la vista
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    /// Al cargar el view
    override func viewDidAppear(_ animated: Bool) {
        sleep(2)
        self.presenter?.goToViewLogin()
    }
    /// Funcion para ajustar los estilos del view
    private func setStyles() {
        //
    }
}
// MARK: VIEW PROTOCOL
extension SplashVC: SplashViewProtocol {
}
