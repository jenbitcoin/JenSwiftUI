//
//  PersistenceManager.swift
//  SwiftUIToggle
//
//  Created by Jennifer Eve Curativo on 7/2/22.
//

import Foundation

protocol PersistenceManagerProtocol {
    func toggleA() -> Bool
    func saveToggleA(_ value: Bool)
    func toggleB() -> Bool
    func saveToggleB(_ value: Bool)
    func toggleC() -> Bool
    func saveToggleC(_ value: Bool)
}

class PersistenceManager: PersistenceManagerProtocol {
    func toggleA() -> Bool {
        return UserDefaults.standard.bool(forKey: "Toggle_A")
    }
    
    func saveToggleA(_ value: Bool) {
        UserDefaults.standard.set(value, forKey: "Toggle_A")
    }
    
    func toggleB() -> Bool {
        return UserDefaults.standard.bool(forKey: "Toggle_B")
    }
    
    func saveToggleB(_ value: Bool) {
        UserDefaults.standard.set(value, forKey: "Toggle_B")
    }
    
    func toggleC() -> Bool {
        return UserDefaults.standard.bool(forKey: "Toggle_C")
    }
    
    func saveToggleC(_ value: Bool) {
        UserDefaults.standard.set(value, forKey: "Toggle_C")
    }

}
