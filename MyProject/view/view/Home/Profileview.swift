//
//  Profileview.swift
//  MyProject
//
//  Created by yusuf bakır on 6.09.2023.
//

import SwiftUI

struct Profileview: View {
   
    var body: some View {
        List {
            Section {
                HStack(spacing: 15){
                    Text("Ys").font(.title).fontWeight(.semibold).foregroundColor(.white).frame(width: 72, height:72).background(Color(.systemGray3)).clipShape(Circle())
                    VStack(alignment: .leading,spacing: 5){
                        Text("Yusuf").fontWeight(.semibold ).padding(.top,4)
                        Text("example@gmail.com").fontWeight(.semibold).accentColor(.gray)
                    }
                }}
            Section ("General"){
                
                
            }
            Section("Account") {
                
                
            }
            Button("Çıkış yap"){
                
            }
        }
    }
}

struct Profileview_Previews: PreviewProvider {
    static var previews: some View {
        Profileview()
    }
}
