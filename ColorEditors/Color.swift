//
//  Color.swift
//  ColorEditors
//
//  Created by Daniel Wallace on 28/02/15.
//  Copyright (c) 2015 nz.co.danielw. All rights reserved.
//

import Foundation

class Color {
    
    init(red: Float, green: Float, blue: Float, alpha: Float) {
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
    }
    
    var red: Float   {
        didSet {
//            println("red")
        }
    }
    var green: Float  {
        didSet {
//            println("green")
        }
    }
    var blue: Float {
        didSet {
//            println("blue")
        }
    }
    var alpha: Float {
        didSet {
            println("alpha set")
        }
    }
}
