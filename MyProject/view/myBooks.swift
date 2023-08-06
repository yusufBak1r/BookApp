//
//  myBooks.swift
//  MyProject
//
//  Created by yusuf bakır on 12.07.2023.
//

import SwiftUI

struct myBooks: View {
    var body: some View {
        NavigationView {
                   VStack {
                       
                       Text("kitaplarım")
                       .navigationBarTitle("My books")
                       .navigationBarBackButtonHidden(false)
                   }
               }
    }
}

struct myBooks_Previews: PreviewProvider {
    static var previews: some View {
        myBooks()
    }
}
