//
//  ModelBook.swift
//  MyProject
//
//  Created by yusuf bakır on 19.08.2023.
//

import Foundation
struct Book :Identifiable{
    var id = UUID()
    var uothorname:String
    var bookname : String
    var imagename:String
    var favorite : Bool
    var about:String
    var price:Int
   
   
   

    
}
var Booklist = [

   Book(uothorname:"Dostoyevski" , bookname: "Budala",imagename: "Budala", favorite: false, about: "meakmimikmlekmliae", price: 30),
   Book(uothorname:"Yaşarkemal" , bookname: "Çakırçalıefe",imagename: "cakırcalıefe", favorite: false, about: "meakmimikmlekmliae", price: 20),
   Book(uothorname:"Tolstoy" , bookname: "İtiraflarım",imagename: "itiraflarım", favorite: false, about: "meakmimikmlekmliae", price: 40),
   Book(uothorname:"MattHaıg" , bookname: "MattHaıg",imagename: "MattHaıg", favorite: false, about: "meakmimikmlekmliae", price: 50),
   Book(uothorname: "Adam faver", bookname: "Olasılıksız", imagename: "olasılıksız", favorite: false, about: "aemamekli", price: 100)
]
