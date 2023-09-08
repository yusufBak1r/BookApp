//
//  CartProductView.swift
//  MyProject
//
//  Created by yusuf bakır on 23.08.2023.
//

import SwiftUI

struct CartProductView: View {
    @EnvironmentObject var cartManager :CartManager
    
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products,id: \.id) {proudct in
                    ProductRow(product: proudct)
                }
                HStack{
                    Text("Sepetinizin Toplam Tutarı :")
                    Spacer()
                    Text("\(cartManager.Total).00 TL").bold()
                    
                }
                .padding()
    
            }else{
                Text("Sepetiniz Boş")
            }
            
  
            
        }.navigationTitle("My Cart").padding(.top)
    }}
struct CartProductView_Previews: PreviewProvider {
    
    static var previews: some View {
     
        
      CartProductView( )
            .environmentObject(CartManager())
        
    }
}

