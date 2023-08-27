//
//  MenuModel.swift
//  MyProject
//
//  Created by yusuf bakır on 17.07.2023.
//

import Foundation

import SwiftUI

class MenuViewModel: ObservableObject {
   
    @Published var menus: [MenuItem] = [
        MenuItem(color: .red, icon: "house.fill", menuView: AnyView(home()), selected: true),
       MenuItem(color: .green, icon: "heart.fill", menuView: AnyView(Favorite()), selected: false),
      MenuItem(color: .yellow, icon: "figure.wave", menuView: AnyView(Text("Profile")), selected: false)
// MenuItem(color: .blue, icon: "book.fill", menuView: AnyView(()), selecannot convert value of type 'Published<[Book]>.Publisher' to expected argument type 'Book'ted: false),
    ]
    
    var selectedMenu: MenuItem {
        guard let selected = menus.filter({$0.selected}).first  else {
            fatalError("You need to set one of the MenuItems in MenuViewModel.menus as selected: true")
        }
        return selected
    }
}
