//
//  ProductRow.swift
//  MyProject
//
//  Created by yusuf bakır on 30.08.2023.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager : CartManager
    var product :Book
    var body: some View {
        HStack(spacing: 20) {
            Image(product.imagename).resizable().aspectRatio( contentMode: .fit).frame(width: 80).cornerRadius(10)
            VStack(alignment: .leading, spacing: 10){
                Text(product.bookname).foregroundColor(.white)
                Text(product.uothorname).bold().foregroundColor(.white)
                Text("\(product.price) TL").bold().foregroundColor(.red)
                
            }
            Spacer()
            Image(systemName: "trash").foregroundColor(Color(hue: 1.0, saturation: 0.89, brightness: 0.835)) .onTapGesture {
                cartManager.removeFromcart(product)
            }
        }.padding(.horizontal).frame(maxWidth: .infinity,alignment: .leading)
        
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: Booklist[3]).environmentObject(CartManager())
    }
}
