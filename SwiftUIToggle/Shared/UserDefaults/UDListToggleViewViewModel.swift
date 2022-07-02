//
//  UDListToggleViewViewModel.swift
//  SwiftUIToggle
//
//  Created by Jennifer Eve Curativo on 7/2/22.
//

import Foundation
import SwiftUI

struct ToggleItem: Identifiable {
    var id = UUID()
    var title: String
    var isOn: Binding<Bool>
}

protocol UDListToggleViewViewModelProtocol: ObservableObject {
    var list: [ToggleItem] { get }
}

class UDListToggleViewViewModel: UDListToggleViewViewModelProtocol {
    var list: [ToggleItem]

    private let persistenceManager: PersistenceManagerProtocol
    
    init(persistenceManager: PersistenceManagerProtocol) {
        self.persistenceManager = persistenceManager
        
        self.list = [
            ToggleItem(title: "Toggle A", isOn: .init(get: {
                persistenceManager.toggleA()
            }, set: { newValue in
                persistenceManager.saveToggleA(newValue)
            })),
            
            ToggleItem(title: "Toggle B", isOn: .init(get: {
                persistenceManager.toggleB()
            }, set: { newValue in
                persistenceManager.saveToggleB(newValue)
            })),
            
            ToggleItem(title: "Toggle C", isOn: .init(get: {
                persistenceManager.toggleC()
            }, set: { newValue in
                persistenceManager.saveToggleC(newValue)
            }))
        ]
    }
}
