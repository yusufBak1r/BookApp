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
       
//        MenuItem(color: .green, icon: "heart.fill", menuView: AnyView(Favorite()), selected: false),
        MenuItem(color: .orange, icon: "list.bullet.circle", menuView: AnyView(Cart(product: Booklist[0])), selected: false),
      MenuItem(color: .yellow, icon: "5.circle.fill", menuView: AnyView(Text("Fifth View")), selected: false)
// MenuItem(color: .blue, icon: "book.fill", menuView: AnyView(()), selected: false),
    ]
    
    var selectedMenu: MenuItem {
        guard let selected = menus.filter({$0.selected}).first  else {
            fatalError("You need to set one of the MenuItems in MenuViewModel.menus as selected: true")
        }
        return selected
    }
}
