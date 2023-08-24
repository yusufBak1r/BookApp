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
            if cartManager.products.count == 0 {
                Text("işlem başarısız")
                
               
            }else {
                Text("işlem başarılı")
            }
        }.navigationTitle(Text("My Cart"))
            .padding(.top)
    }
}
struct CartProductView_Previews: PreviewProvider {
    
    static var previews: some View {
     
        
      CartProductView( )
            .environmentObject(CartManager())
        
    }
}


