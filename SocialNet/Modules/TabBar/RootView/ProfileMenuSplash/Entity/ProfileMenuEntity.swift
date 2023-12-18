//
//  ProfileMenuEntity.swift
//  SocialNet
//
//  Created by DANIEL CONCEPCION MEDINA PISTE on 14/12/23.
//
import Foundation
import UIKit
/// Enum para conocer el tipo de elemento del menu
enum MenuOptionItemEnum {
    case profile
    case save
    case randomMessage
    case randomProfile
}
/// Structure los elementos del menu de navegation
struct ProfileMenuEntity {
    let name: String
    let icon: String
    let action: MenuOptionItemEnum
}
