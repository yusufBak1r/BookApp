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
    var isSwiped :Bool
   
   

    
}
var Booklist = [

   Book(uothorname:"Dostoyevski" , bookname: "Budala",imagename: "Budala", favorite: false, about: "meakmimikmlekmliae", price: 30, isSwiped: false),
   Book(uothorname:"Yaşarkemal" , bookname: "cakırcalıefe",imagename: "cakırcalıefe", favorite: false, about: "meakmimikmlekmliae", price: 20, isSwiped: false),
   Book(uothorname:"Tolstoy" , bookname: "itiraflarım",imagename: "itiraflarım", favorite: false, about: "meakmimikmlekmliae", price: 40, isSwiped: false),
   Book(uothorname:"MattHaıg" , bookname: "MattHaıg",imagename: "MattHaıg", favorite: false, about: "meakmimikmlekmliae", price: 50, isSwiped: false),
   Book(uothorname: "Adam faver", bookname: "olasılıksız", imagename: "olasılıksız", favorite: false, about: "aemamekli", price: 100, isSwiped: false)
]
