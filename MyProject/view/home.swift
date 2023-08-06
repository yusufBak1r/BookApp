//
//  home.swift
//  MyProject
//
//  Created by yusuf bakır on 15.07.2023.
//

import SwiftUI

struct home: View { @State  var searchText = ""
    @State private var isFavorite = false
    @State private var isShowingSheet = false
    var body: some View {
        NavigationStack {
            VStack {
//                seacrhbar(text: $searchText)
                List (0..<4) { item in
                    
                    HStack(spacing: 15) {
                        
                        Image("MattHaıg").resizable().scaledToFit()
                            .frame(height: 150)
                            .cornerRadius(4)
                            .padding(.vertical,4)
                        VStack(alignment: .leading, spacing:15) {
                            Text("mkeameamkeameakmeamkekmakemlikamiemaaeaeaeaeeaaeeaeeiaeeiaaea").fontWeight(.semibold)
                                .lineLimit(3).minimumScaleFactor(0.5)
                            
                            
                            Text("january 1,2023").font(.subheadline).foregroundColor(.secondary)
                            HStack (spacing: 40){
                                Button(action: {
                                   isShowingSheet = true
                                }, label: {
                                    Text("Sepete Ekle").foregroundColor(.black)
                                        .frame(width:93 ,height:35 ).background(.brown).cornerRadius(5)
                                        
                                }).sheet(isPresented:$isShowingSheet, content: {
                                    myBooks()
                                })
                                
                               
                               
                                Text("20 TL").font(.callout).foregroundColor(.blue)
                                
                                Button (action: {
                                    isFavorite.toggle()
                                }, label: {
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(isFavorite ? .white : .red)
                                })
                               
                                
                                
                                
                            }
                           
                            
                        }
                        
                        
                    }
                }
                .navigationBarTitle("Home Page").searchable(text: $searchText)
                
            }
            }
        
       
    }
   
    }

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
