//
//  ContentView.swift
//  NewNavigation
//
//  Created by Stewart Lynch on 2020-05-17.
//  Copyright © 2020 CreaTECH Solutions. All rights reserved.
//

import SwiftUI

struct HomePage: View {
    @State private var isActivated = false
    @ObservedObject var menuVM = MenuViewModel()
    
    var body: some View {
        
        ZStack {
            menuVM.selectedMenu.menuView
            ZStack {
                Color.black.opacity(isActivated ? 0.2 : 0)
                VStack {
                    Spacer()
                    ZStack {
                        ForEach(0..<menuVM.menus.count) { i in
                            MenuButton(isActivated: self.$isActivated,
                                       menuVM: self.menuVM,
                                       currentItemIndex: i
                            )
                        }
                        SelectidMenuButton(menuItem: menuVM.selectedMenu, isActivated: self.$isActivated)
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(isActivated ? .all : .horizontal)
        .animation(.spring())
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
            
    }
}
