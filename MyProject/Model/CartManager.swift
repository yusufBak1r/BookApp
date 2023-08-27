//
//  CartManagement.swift
//  MyProject
//
//  Created by yusuf bakır on 23.08.2023.
//

import Foundation
class CartManager:ObservableObject {
    @Published private (set) var products:[Book] = []
    @Published private (set) var Total :Int = 0
    @Published var likedProduct : [Book] = []
   
    
    func addToCart (product :Book) {
        products.append(product)
        Total += product.price
        
    }
    func removeFromcart(product:Book)  {
        products.filter{$0.id != product.id}
        Total -= product.price
    }


    
    
}
