//
//  productCart.swift
//  MyProject
//
//  Created by yusuf bakır on 24.08.2023.
//

import SwiftUI

struct productCart: View {
    var product : Book
    @EnvironmentObject  var cartManger : CartManager
    var body: some View {
        ZStack (alignment: .topTrailing){
            ZStack (alignment: .bottom ){
                Image(product.imagename).resizable().cornerRadius(20).scaledToFit().frame(width: 150)
                VStack(alignment: .leading,spacing: 3){
                    Text(product.bookname).bold()
                  
                    Text("\(product.price) TL").foregroundColor(.red).font(.system(size: 15))
                     
                }.padding()
                    .frame(width: 180,alignment: .leading)
                    .background(.ultraThinMaterial).cornerRadius(20)
                
                
                
            }.frame(width:175 ,height: 225).cornerRadius(3)
            Button {
                
                cartManger.addToCart(product: product)
            }label: {
                Image(systemName: "plus.circle").padding(10).foregroundColor(.white).background(.black ).cornerRadius(50).padding()
               
            }
        }
    }
}

struct productCart_Previews: PreviewProvider {
    static var previews: some View {
        productCart(product: Booklist[0]).environmentObject(CartManager())
            
    }
}


