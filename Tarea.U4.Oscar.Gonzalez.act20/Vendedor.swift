//
//  Vendedor.swift
//  Tarea.U4.Oscar.Gonzalez.act20
//
//  Created by Oscar on 04-02-16.
//  Copyright © 2016 Oscar. All rights reserved.
//


import UIKit

class Vendedor {
    
    // MARK: properties
    private var name: String
    private var password: String
    
    
    init (name: String, password:String) {
        self.name = name
        self.password = password
    }
    
    func getName ()->String {
        return name
        
    }
    
    func getPassword ()->String {
        return password
    }
}