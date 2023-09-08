//
//  MenuItem.swift
//  MyProject
//
//  Created by yusuf bakır on 17.07.2023.
//


import SwiftUI

struct MenuItem {
    let id =  UUID()
    let color:Color
    let icon:String
    let menuView: AnyView
    var selected:Bool
}
