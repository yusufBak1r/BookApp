//
//  Categories.swift
//  MyProject
//
//  Created by yusuf bakır on 12.07.2023.
//

import SwiftUI

struct Cart: View {
    
    var product : Book
    var body: some View {
        ZStack  {
            Color("color3")
            ZStack(alignment: .bottomTrailing) {
                VStack(alignment: .leading) {
                    Image(product.imagename).resizable().frame(width:175 ,height: 196).cornerRadius(12)
                    
                    Text(product.bookname).font(.headline).padding(.vertical,1).foregroundColor(Color.black).padding(.leading,10)
                    Text(product.uothorname).font(.caption).padding(.vertical,1).foregroundColor(.black).padding(.leading,10)
                    Text("\(product.price) TL").padding(.leading,10).foregroundColor(.red).bold()
                }
                Button(action: {
                    
                }, label: {
                    Image(systemName: "plus.circle.fill").resizable().foregroundColor(Color("color1")).frame(width: 35,height: 35).padding(.trailing)
                })
            }.padding(.bottom)
        }.frame(width:175 ,height: 280)
            .cornerRadius(15)
    }
   
}

struct Cart_Previews: PreviewProvider {
    static var previews: some View {
        Cart(product: Booklist[3])
    }
}
