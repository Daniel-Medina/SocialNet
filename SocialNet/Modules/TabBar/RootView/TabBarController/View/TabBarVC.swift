//
//  TabBarVC.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import UIKit
final class TabBarVC: UITabBarController {
    /// Referencia al presenter
    var presenter: TabBarPresenterProtocol?
    /// Elementos del tab bar
    private var elementsTabbar: [TabBarEntity]?
    /// UILabel con la cantidad de notificaciones del header
    private var lbCountbadgeHeader: UILabel?
    /// UIView Para el badge
    private var viewBadge: UIView?
    /// Al cargar la vista
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.getListOfElements()
        self.createHeaderConfig()
    }
    /// Al mostrarse la pagina
    override func viewWillAppear(_ animated: Bool) {
        self.createIconHeaderRight()
    }
    /// Funcion para cargar los views en el tabbar y los iconos
    private func configTabbar() {
        var listView: [UIViewController] = []
        /// Crear los items y los elementos
        for element in self.elementsTabbar ?? [] {
            let item = UITabBarItem(title: nil, image: UIImage(systemName: element.ico), selectedImage: UIImage(systemName: element.ico + ".fill"))
            element.router.tabBarItem = item
            listView.append(element.router)
        }
        /// Estilos de los iconos
        let appearance = UITabBarAppearance()
        let itemAppearance = UITabBarItemAppearance()
        itemAppearance.normal.iconColor = UIColor(named: "iconTabbar")
        itemAppearance.selected.iconColor = UIColor(named: "iconTabbar")
        appearance.backgroundColor = UIColor(named: "backgroundTabbar")
        appearance.compactInlineLayoutAppearance = itemAppearance
        appearance.inlineLayoutAppearance = itemAppearance
        appearance.stackedLayoutAppearance = itemAppearance
        self.tabBar.standardAppearance = appearance
        self.tabBar.scrollEdgeAppearance = appearance
        self.viewControllers = listView
    }
    /// funcion para crear y configurar el header
    private func createHeaderConfig() {
        self.createIconHeaderRight()
        self.createIconHeaderLeft()
        self.createIconHeaderCenter()
    }
    /// Funcion para crear los icons de la derecha
    func createIconHeaderRight() {
        let customSizeIcon: CGFloat = 30
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "backgroundLogin")
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.standardAppearance = appearance
        self.navigationController?.navigationBar.scrollEdgeAppearance = appearance
        self.navigationController?.navigationBar.compactAppearance = appearance
        /// Iconos de navegacion - Icono de la derecha de configuracion
        let imageRight = UIImage(systemName: "gearshape")
        let iconRightConfig = UIBarButtonItem(image: imageRight, style: .plain, target: self, action: #selector(self.goToConfig))
        /// Custom view Bell
        let custonViewBell = UIView()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.goToNotificationMenu))
        custonViewBell.isUserInteractionEnabled = true
        custonViewBell.addGestureRecognizer(tapGesture)
        custonViewBell.widthAnchor.constraint(equalToConstant: customSizeIcon).isActive = true
        custonViewBell.heightAnchor.constraint(equalToConstant: customSizeIcon).isActive = true
        custonViewBell.translatesAutoresizingMaskIntoConstraints = false
        let bellImage = UIImageView(image: UIImage(systemName: "bell.fill"))
        /// Imagen de la campana
        custonViewBell.addSubview(bellImage)
        bellImage.topAnchor.constraint(equalTo: custonViewBell.topAnchor).isActive = true
        bellImage.bottomAnchor.constraint(equalTo: custonViewBell.bottomAnchor).isActive = true
        bellImage.leadingAnchor.constraint(equalTo: custonViewBell.leadingAnchor).isActive = true
        bellImage.trailingAnchor.constraint(equalTo: custonViewBell.trailingAnchor).isActive = true
        bellImage.translatesAutoresizingMaskIntoConstraints = false
        /// Badge
        self.viewBadge = UIView()
        self.viewBadge?.backgroundColor = .red
        custonViewBell.addSubview(self.viewBadge ?? UIView())
        self.viewBadge?.translatesAutoresizingMaskIntoConstraints = false
        self.viewBadge?.widthAnchor.constraint(equalToConstant: (customSizeIcon / 2)).isActive = true
        self.viewBadge?.heightAnchor.constraint(equalToConstant: (customSizeIcon / 2)).isActive = true
        self.viewBadge?.layer.cornerRadius = (customSizeIcon / 4)
        self.viewBadge?.layer.masksToBounds = true
        self.viewBadge?.topAnchor.constraint(equalTo: custonViewBell.topAnchor).isActive = true
        self.viewBadge?.trailingAnchor.constraint(equalTo: custonViewBell.trailingAnchor).isActive = true
        /// Texto del numero de notificaciones
        self.lbCountbadgeHeader = UILabel()
        let counterBangedInt = NotificationCenterCustom.getNumberOfNotification()
        self.lbCountbadgeHeader?.text = counterBangedInt < 10 ? "\(counterBangedInt)" : "9"
        self.lbCountbadgeHeader?.textColor = .white
        self.lbCountbadgeHeader?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        self.lbCountbadgeHeader?.textAlignment = .center
        self.viewBadge?.addSubview(self.lbCountbadgeHeader ?? UILabel())
        self.lbCountbadgeHeader?.topAnchor.constraint(equalTo: self.viewBadge!.topAnchor).isActive = true
        self.lbCountbadgeHeader?.bottomAnchor.constraint(equalTo: self.viewBadge!.bottomAnchor).isActive = true
        self.lbCountbadgeHeader?.leadingAnchor.constraint(equalTo: self.viewBadge!.leadingAnchor).isActive = true
        self.lbCountbadgeHeader?.trailingAnchor.constraint(equalTo: self.viewBadge!.trailingAnchor).isActive = true
        self.lbCountbadgeHeader?.translatesAutoresizingMaskIntoConstraints = false
        self.viewBadge?.isHidden = counterBangedInt == 0 ? true : false
        /// Icono derecho de la campana
        let iconRightBell = UIBarButtonItem()
        iconRightBell.customView = custonViewBell
        /// Asignar los iconos
        self.navigationItem.rightBarButtonItems = [iconRightConfig, iconRightBell]
    }
    /// Funcion para crear los icons de la izquierda
    private func createIconHeaderLeft() {
        /// Icono izquierdo
        let imageLeft = UIImageView(image: UIImage(named: "test"))
        imageLeft.contentMode = .scaleToFill
        let custonViewLeft = UIView()
        custonViewLeft.layer.cornerRadius = 15
        custonViewLeft.layer.masksToBounds = true
        custonViewLeft.isUserInteractionEnabled = true
        custonViewLeft.addSubview(imageLeft)
        imageLeft.topAnchor.constraint(equalTo: custonViewLeft.topAnchor).isActive = true
        imageLeft.leadingAnchor.constraint(equalTo: custonViewLeft.leadingAnchor).isActive = true
        imageLeft.trailingAnchor.constraint(equalTo: custonViewLeft.trailingAnchor).isActive = true
        imageLeft.bottomAnchor.constraint(equalTo: custonViewLeft.bottomAnchor).isActive = true
        imageLeft.translatesAutoresizingMaskIntoConstraints = false
        custonViewLeft.widthAnchor.constraint(equalToConstant: 30).isActive = true
        custonViewLeft.heightAnchor.constraint(equalToConstant: 30).isActive = true
        custonViewLeft.translatesAutoresizingMaskIntoConstraints = false
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.goToProfileMenu))
        custonViewLeft.addGestureRecognizer(tapGesture)
        let itemleft = UIBarButtonItem(customView: custonViewLeft)
        itemleft.style = .plain
        self.navigationItem.leftBarButtonItem = itemleft
    }
    /// Funcion para crear los icons del centro
    private func createIconHeaderCenter() {
        let centerIcoView = UIView()
        let imageicoCenter = UIImageView(image: UIImage(systemName: "pawprint.fill"))
        centerIcoView.addSubview(imageicoCenter)
        imageicoCenter.topAnchor.constraint(equalTo: centerIcoView.topAnchor).isActive = true
        imageicoCenter.bottomAnchor.constraint(equalTo: centerIcoView.bottomAnchor).isActive = true
        imageicoCenter.leadingAnchor.constraint(equalTo: centerIcoView.leadingAnchor).isActive = true
        imageicoCenter.trailingAnchor.constraint(equalTo: centerIcoView.trailingAnchor).isActive = true
        imageicoCenter.translatesAutoresizingMaskIntoConstraints = false
        centerIcoView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        centerIcoView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        centerIcoView.translatesAutoresizingMaskIntoConstraints = false
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.iconCenterPressed))
        centerIcoView.isUserInteractionEnabled = true
        centerIcoView.addGestureRecognizer(tapGesture)
        self.navigationItem.titleView = centerIcoView
    }
    /// Funcion para abrir el menu de configuracion
    @IBAction func goToConfig() {
        self.presenter?.goToViewToConfigMenu()
    }
    /// Funcion para abrir el menu de perfil
    @IBAction func goToProfileMenu() {
        self.presenter?.goToViewToProfileMenu()
    }
    /// Funcion para abrir el menu de notificaiones
    @IBAction func goToNotificationMenu() {
        self.presenter?.goToSplashNotification()
        NotificationCenterCustom.deleteCountBadge()
        LocalValuesFromUser.resetValue(key: .notificationCount)
        self.lbCountbadgeHeader?.text = ""
        self.viewBadge?.isHidden = true
    }
    /// Funcion al presionar el icono centrarl / (Por definir)
    @IBAction func iconCenterPressed() {
        NotificationCenterCustom.sendNotificationForTime(title: "Hey mira esto!", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin augue nibh, ornare sed justo at, bibendum elementum enim. Ut ornare id ipsum nec commodo. Praesent dignissim enim quis magna tincidunt lacinia. Praesent odio sapien, maximus ut sem quis proin.", seconds: 1)
    }
}
// MARK: VIEW PROTOCOL
extension TabBarVC: TabBarViewProtocol {
    /// Mostrar los elementos en la vista
    /// - Parameter list: Lista de vistas para el tabbar
    func showListView(list: [TabBarEntity]) {
        self.elementsTabbar = list
        DispatchQueue.main.async {
            self.configTabbar()
        }
    }
}
// MARK: Delegado de la funciones del menu de perfil
extension TabBarVC: ProfileMenuDelegate {
    //
}
// MARK: DELEGATE FROM NOTIFICATION
extension TabBarVC: NotificationSplshDelegate {
    //
}
