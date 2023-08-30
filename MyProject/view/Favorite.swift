//
//  Favorite.swift
//  MyProject
//
//  Created by yusuf bakır on 24.08.2023.
//

import SwiftUI

struct Favorite: View {
    
    @EnvironmentObject var cartmanager : CartManager
    var body: some View {
        ScrollView {
            if cartmanager.likedProduct.count > 0 {
                ForEach(cartmanager.likedProduct,id: \.id) {product in
                    FavoriteView(product: product)
                }
                HStack{
                    Spacer()
                    Text(" Ürün Sayısı :\(cartmanager.likedProduct.count)").foregroundColor(.red)
                    
                }.padding()
                
            }else{
                Text("Favorilerinizde Ürün bulunmamaktadır").foregroundColor(.white)
            }
        }.navigationTitle("Favoriler").padding(.top).foregroundColor(.white)
    }
}
    struct Favorite_Previews: PreviewProvider {
        static var previews: some View {
            FavoriteView(product: Booklist[1]).environmentObject(CartManager())
        }
    }
    struct FavoriteView: View {
        @EnvironmentObject var cartmanager : CartManager
        var product : Book
        var body: some View {
            
            HStack(spacing: 15){
                Image(product.imagename).resizable().aspectRatio( contentMode: .fit).frame(width: 80).cornerRadius(10)
                VStack(alignment: .leading, spacing: 10){
                    Text(product.bookname).bold()
                    
                    Text(product.uothorname).bold()
                    
                }
                Spacer()
                Button (action: { addtoliked()}, label: {
                    Image(systemName: "heart.fill").foregroundColor(cartmanager.isliked(modelbook:product) ?.red : .black)
                })
                
                
                
            }.padding(.horizontal)
        }
        func addtoliked (){
            if  let index = cartmanager.likedProduct.firstIndex(where: { product in
                return self.product.id == product.id
            }){
                cartmanager.likedProduct.remove(at: index)
            }
            else{
                cartmanager.likedProduct.append(product)
            }
        }
        
        
    }

