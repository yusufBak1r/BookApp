//
//  Favorite.swift
//  MyProject
//
//  Created by yusuf bakır on 12.07.2023.
//

import SwiftUI

struct Favorite: View {
    var body: some View {
        NavigationView {
                   VStack {
                       
                       Text("favorite")
                       .navigationBarTitle("Favorite")
                       .navigationBarBackButtonHidden(false)
                   }
               }
    }
}

struct Favorite_Previews: PreviewProvider {
    static var previews: some View {
        Favorite()
    }
}
