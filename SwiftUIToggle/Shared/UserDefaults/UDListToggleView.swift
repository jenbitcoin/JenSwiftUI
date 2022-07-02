//
//  UDListToggleView.swift
//  SwiftUIToggle
//
//  Created by Jennifer Eve Curativo on 7/2/22.
//

import SwiftUI

struct UDListToggleView<ViewModel>: View where ViewModel: UDListToggleViewViewModelProtocol {
    
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.list) { item in
                Toggle(item.title, isOn: item.isOn)
            }
        }
    }
}

struct UDListToggleView_Previews: PreviewProvider {
    static var previews: some View {
        let persistenceManager = PersistenceManager()
        let viewModel = UDListToggleViewViewModel(persistenceManager: persistenceManager)
        UDListToggleView(viewModel: viewModel)
    }
}
