//
//  Modeluser.swift
//  MyProject
//
//  Created by yusuf bakır on 22.06.2023.
//

import Foundation
class Model {
    var name :String?
    var ID :String?
    var Email :String?
    var Password :String?
    init(ID: String, Email: String, Password: String,name : String) {
        self.name = name
        self.ID = ID
        self.Email = Email
        self.Password = Password
    }
    init (){
        
    }
    
    
    
    
   
}
extension Model {
    static var Userdatamodel = Model(ID: "1", Email: "example@gmail.com", Password:"yusuf.", name: "yusuf")
}
