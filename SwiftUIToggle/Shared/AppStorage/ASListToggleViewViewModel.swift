//
//  ASListToggleViewViewModel.swift
//  SwiftUIToggle
//
//  Created by Jennifer Eve Curativo on 7/2/22.
//

import Foundation
import SwiftUI

protocol ASListToggleViewViewModelProtocol: ObservableObject {
    var list: [ToggleItem] { get }
}

class ASListToggleViewViewModel: ASListToggleViewViewModelProtocol {
    var list: [ToggleItem]

    private let persistenceManager: PersistenceManagerProtocol
    
    init(persistenceManager: PersistenceManagerProtocol) {
        self.persistenceManager = persistenceManager
        
        let toggleA = AppStorage(wrappedValue: persistenceManager.toggleA(), "Toggle_A")
        let toggleB = AppStorage(wrappedValue: persistenceManager.toggleB(), "Toggle_B")
        let toggleC = AppStorage(wrappedValue: persistenceManager.toggleC(), "Toggle_C")

        self.list = [
            ToggleItem(title: "Toggle A", isOn: toggleA.projectedValue),
            ToggleItem(title: "Toggle B", isOn: toggleB.projectedValue),
            ToggleItem(title: "Toggle C", isOn: toggleC.projectedValue)
        ]
    }
}
