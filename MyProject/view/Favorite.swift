//
//  Favorite.swift
//  MyProject
//
//  Created by yusuf bakır on 24.08.2023.
//

import SwiftUI

struct Favorite: View {
    var body: some View {
        Image("olasılıksız")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .clipShape(Circle()) // Görüntüyü bir daire şeklinde keser
                    .rotation3DEffect(Angle(degrees: 30), axis: (x: 10.0, y: 10.0, z: 10.0))
    }
}

struct Favorite_Previews: PreviewProvider {
    static var previews: some View {
        Favorite()
    }
}
