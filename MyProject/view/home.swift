//
//  home.swift
//  MyProject
//
//  Created by yusuf bakır on 15.07.2023.
//

import SwiftUI

struct home: View {
    @State  var searchText = ""
    @State private var activetag :String = "Roman"
    @State private var isFavorite = false
    @Namespace private var animation
    @State private var isShowingSheet = false
    var slider:[String] = ["cakırcalıefe","itiraflarım","MattHaıg","olasılıksız"]
    @State private var currentIndex = 2
   
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
                .padding(.horizontal)
                HStack {
                    Text("Populer Kitaplar").font(.system(size: 20).weight(.heavy)).foregroundColor(Color.yellow).padding(.leading)
                   Spacer()
                    
                }.frame(height:30)
                Imagesliderview().padding(.trailing,210)
                
                HStack {
                    Text(list[2]).font(.system(size: 20).weight(.heavy)).foregroundColor(Color.yellow).padding(.leading)
                   Spacer()
                    
                }
                Capsule().foregroundColor(Color.red).frame(width: 415,height: 6).shadow(color: Color.orange.opacity(0.7), radius: 5,x:0 ,y: 5)
                    .padding()
                product()
                
                    Spacer()
                }
                
                
            
                    
                    
                }
             
                .navigationBarTitle("Home Page").searchable(text: $searchText)
                
            }
            }
        
       


struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
var list :[String] = ["Tümü","Öykü","Roman","Piskoloji","Hikaye","Bilimkurgu"]


struct Imagesliderview: View {
    @State private var currentIndex = 1
    var slider:[String] = ["Budala","cakırcalıefe","itiraflarım","MattHaıg","olasılıksız"]
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            ZStack(alignment: .trailing) {
                Image(slider[currentIndex]).resizable() .frame(width:200,height: 150).scaledToFit().cornerRadius(15)
            }
            HStack {
            
                ForEach(0..<slider.count) {index in
                    Circle().fill(self.currentIndex == index ? Color("color") : Color("color1")).frame(width:10 ,height: 10)
                    
                }
               
            }
            .padding()
            
        }.padding()
            .onAppear{

            Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { timmer in
                if self.currentIndex + 1 == self.slider.count {
                    self.currentIndex = 0
                }else {
                    self.currentIndex  += 1
                }
            }
        }
       
    }
}
struct product: View {
    let product :[Book] = Booklist
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach (product,id:\.id){product in
                    NavigationLink {
                        Text(product.bookname)
                    }label: {
                         Cart(product: product )
                    }
                    
                }
            }
        }
    }
}
