//
//  LoginVC.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import UIKit
final class LoginVC: UIViewController {
    /// Imagen del logotipo
    @IBOutlet private weak var imgLogotiype: UIImageView!
    /// Text del titulo
    @IBOutlet private weak var lbLoginForContinue: UILabelCustom!
    /// Stack con todos los campos
    @IBOutlet private weak var stackContainer: UIStackView!
    /// Label para mostrar el texto de introducir nombre
    @IBOutlet private weak var lbEnterUsername: UILabelCustom!
    /// campo de texto para el nombre
    @IBOutlet private weak var txtUsername: UITextFieldCustom!
    /// label para mostrar el mensaje de agregar contraseña
    @IBOutlet private weak var lbEnterPassword: UILabelCustom!
    /// campo de texto para la contraseña
    @IBOutlet private weak var txtPassword: UITextFieldCustom!
    ///  opcion de recuperar contraseña
    @IBOutlet private weak var lbForgotMyPassword: UILabelCustom!
    /// Opcion para crear una nueva cuenta
    @IBOutlet private weak var lbCreateNewAccount: UILabelCustom!
    /// Boton para continuar
    @IBOutlet private weak var btnContinue: UIButtonCustom!
    /// Referencia al presenter
    var presenter: LoginPresenterProtocol?
    /// Al cargar la vista
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    /// Validar si el usuario es valido e ingresar
    @IBAction func btnContinueSetOnClickListener(_ sender: Any) {
        self.presenter?.goToViewTabbar()
    }
    /// Funcion para ir a la pantalla de nueva cuenta
    @IBAction func createNewAccount() {
        //
    }
    /// Funcion para ir a la pantalla de recuperar contraseña
    @IBAction func recoveryPassword() {
        //
    }
}
// MARK: VIEW PROTOCOL
extension LoginVC: LoginViewProtocol {
}
