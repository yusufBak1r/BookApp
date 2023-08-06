//
//  Categories.swift
//  MyProject
//
//  Created by yusuf bakır on 12.07.2023.
//

import SwiftUI

struct Categories: View {
    @State  var searchText = ""
    var body: some View {
        NavigationView {
            VStack{
                List{
                    ForEach(list,id:\.self){ contry in
                        HStack{
                            Text(contry.capitalized)
                            Spacer(minLength: 0)
                            Text("Stokkitapsayısı").font(.body).foregroundColor(.gray)
                           
                        }
                        .padding()
                    }
                }
                
            }
            
                  
                     
                .navigationBarTitle("Categories").searchable(text: $searchText)
                       
                   
               }
    }
    var list = ["öykü","Hikaye","roman","aşk","tarih"]
}

struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        Categories()
    }
}
