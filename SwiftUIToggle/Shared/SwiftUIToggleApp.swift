//
//  SwiftUIToggleApp.swift
//  Shared
//
//  Created by Jennifer Eve Curativo on 7/2/22.
//

import SwiftUI

@main
struct SwiftUIToggleApp: App {
    var body: some Scene {
        WindowGroup {
//            NormalToggleView()
            
            let persistenceManager = PersistenceManager()
//            let viewModel = UDListToggleViewViewModel(persistenceManager: persistenceManager)
//            UDListToggleView(viewModel: viewModel)
            
            let viewModel = ASListToggleViewViewModel(persistenceManager: persistenceManager)
            ASListToggleView(viewModel: viewModel)
        }
    }
}
