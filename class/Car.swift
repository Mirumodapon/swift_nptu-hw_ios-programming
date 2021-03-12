//
//  Car.swift
//  class
//
//  Created by students on 2021/3/12.
//

import Foundation

class Car {
    // Attribute
    private var _color = 0xff0000;
    private var x = 12;
    // methods
    func output() {
        print("class output");
    }
    var color: Int {
        get {
            return _color;
        }
        set {
            _color = newValue;
        }
    }
    
    func getX() -> Int {
        return x;
    }
    func setX(_x:Int) {
        self.x = _x
    }
    
}
