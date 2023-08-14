//
//  home.swift
//  MyProject
//
//  Created by yusuf bakır on 15.07.2023.
//

import SwiftUI

struct home: View { @State  var searchText = ""
    @State private var activetag :String = "öykü"
    @State private var isFavorite = false
    @Namespace private var animation
    @State private var isShowingSheet = false
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView  (.horizontal,showsIndicators: false) {
                                HStack(spacing: 15){
                                    ForEach (list,id:\.self){lis in
                                        Text(lis).font(.caption).padding(.horizontal,12).padding(.vertical,6).background {
                                            if activetag == lis {
                                                Capsule().fill(Color.blue)
                                                    .matchedGeometryEffect(id: "ACTIVETAB", in: animation)
                                            }
                                            else {
                                                Capsule().fill(.gray.opacity(0.2))
                                            }
                                        }.foregroundColor(activetag == lis ? .white : .gray)
                                            .onTapGesture {
                                                withAnimation(.interactiveSpring(response: 0.3,dampingFraction: 0.7,blendDuration: 0.7)) {
                                                    activetag = lis
                                                }
                                                
                                            }
                                    }
                                    
                                }}
                            .frame(height: 50).padding(.horizontal)

               
                List (0..<4) { item in
                    
                    HStack(spacing: 15) {
                        
                        Image("MattHaıg").resizable().scaledToFit()
                            .frame(height: 150)
                            .cornerRadius(4)
                            .padding(.vertical,4)
                       
                        VStack(alignment: .leading, spacing:5) {
                        
                            Text("Kitap ismi").fontWeight(.semibold)
                               .minimumScaleFactor(0.5)
                            
                            
                            Text("january 1,2023").font(.subheadline).foregroundColor(.secondary)
                            HStack (spacing: 30) {
          
                                Button(action: {
                                    isShowingSheet.toggle()
                                }, label: {
                                    Image("cart.circle")
                                    Text("Sepete Ekle").foregroundColor(.white)
                                        .frame(width:93 ,height:35 ).background(.blue).cornerRadius(5).shadow(color: Color.white.opacity(0.3), radius: 5,x:0 ,y: 5).sheet(isPresented: $isShowingSheet, content: {
                                           
                                            MyProject.sheet()
                                        })
                                  
                                        

                                })
                                //HStack
                 
                               
                                Text("20 TL").font(.callout).foregroundColor(.red).lineLimit(0)
                                
                               
                               
                                
                                
                                
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
var list :[String] = ["öykü","roman","piskoloji","hikaye","bilimkurugu"]

struct sheet : View {
@State private var isFavorite = false
    var body: some View {
        VStack{
           
            HStack(alignment: .bottom){
                Image("Budala").resizable().scaledToFit().frame(width: 180,height: 200)
                
                    .padding()
              
               
               
                Text("wwwwwwwwwwwwwwşwwwwwwwwwwaaaaaaakaemkiakelmaemlakimlkeamiekmlakiemlaklmiekaiemeikawwwwwwwww").foregroundColor(.white).font(.system(size: 15)).padding(.bottom,75).lineLimit(7).padding(.trailing)
            
                   
                
                Spacer()
               
                
                
            }
            
                 Text("About Book")
                     .foregroundColor(.white)
                     .fontWeight(.bold)
                     
                     .padding(.horizontal,50)
                     .background(Color("color1"))
                     .clipShape(Capsule())
                     .shadow(color: Color.white.opacity(0.7), radius: 5,x:0 ,y: 5).padding(.trailing,200)
            Capsule().foregroundColor(.red).frame(width: 400,height: 5).shadow(color: Color.white, radius: 3, x: 0, y: 2)
            Text("aaaaaaaaaaaaaaaaa").lineLimit(10).padding(.trailing,230).font(.caption).foregroundColor(.white)
            Spacer()
            
            
        }
       
        ZStack(){
            Circle().fill(.white).frame(width: 60,height: 60).padding(.trailing)
           Button (action: {
               isFavorite.toggle()
           }, label: {
               Image(systemName: "heart.fill").padding(.trailing).foregroundColor(isFavorite ? .blue : .red)
           })
            
            
        }
        Text("Favorilere ekle").font(.headline).foregroundColor(.
                                                                white).padding(.trailing)
                
            
        }
        
   
        
    }

