//
//  cartButtonview.swift
//  MyProject
//
//  Created by yusuf bakır on 24.08.2023.
//

import SwiftUI

struct cartButtonview: View {
    var numberOfProduct :Int
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ZStack(alignment: .topLeading){
            Image(systemName: "cart").padding(.top,5)
            if numberOfProduct > 0 {
                Text("\(numberOfProduct)").font(.caption2).bold().foregroundColor(.white).frame(width:15 ,height: 15).background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835)).cornerRadius(15)
            }
        }
    }
}

struct cartButtonview_Previews: PreviewProvider {
    static var previews: some View {
        cartButtonview(numberOfProduct: 1)

            .environmentObject(CartManager())
    }
}
