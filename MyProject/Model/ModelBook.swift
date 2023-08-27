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

   Book(uothorname:"Isaacasımov" , bookname: "Isaacasımov",imagename: "Isaacasımov", favorite: false, about: "meakmimikmlekmliae", price: 30),
   Book(uothorname:"Yaşarkemal" , bookname: "Çakırçalıefe",imagename: "cakırcalıefe", favorite: false, about: "meakmüüüüüüüüüütüktkttmtkmtktkltkmtklmttzdakükrdükküttkükzztükzbtrrümztkkümaükmtimikmlekmliae", price: 20),
   Book(uothorname:"Tolstoy" , bookname: "İtiraflarım",imagename: "itiraflarım", favorite: false, about: "meakmimikmlekmliae", price: 40),
   Book(uothorname:"MattHaıg" , bookname: "MattHaıg",imagename: "MattHaıg", favorite: false, about: "meakmimikmlekmliae", price: 50),
   Book(uothorname: "dostoevski", bookname: "dostoevski", imagename: "dostoevski", favorite: false, about: "aemamekli", price: 100),
   Book(uothorname: "Dostoveski", bookname: "Dostoveski", imagename: "Dostoveski", favorite: false, about: "aemamekli", price: 100)
  
   
   
]
