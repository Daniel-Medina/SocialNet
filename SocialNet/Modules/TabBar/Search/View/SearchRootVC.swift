//
//  SearchRootVC.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 13/12/23.
//  
//
import UIKit
final class SearchRootVC: UIViewController {
    /// Referencia al presenter
    var presenter: SearchRootPresenterProtocol?
    var searchController: UISearchController {
        let sc = UISearchController(searchResultsController: nil)
        sc.delegate = self
        sc.searchBar.delegate = self
        sc.obscuresBackgroundDuringPresentation = true
        sc.searchBar.placeholder = "Buscar"
        sc.searchBar.autocapitalizationType = .allCharacters
        sc.isActive = true
        return sc
    }
    /// Al cargar la vista
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.navigationItem.searchController = searchController
    }
    override func viewWillDisappear(_ animated: Bool) {
        tabBarController?.navigationItem.searchController = nil
    }
}
// MARK: VIEW PROTOCOL
extension SearchRootVC: SearchRootViewProtocol {
}
extension SearchRootVC: UISearchControllerDelegate, UISearchBarDelegate {
    func updateSearchResults(for searchController: UISearchController) {
        //
        print(searchController)
        print(searchController.searchBar.text)
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        print(searchBar.text)
    }
    
}
