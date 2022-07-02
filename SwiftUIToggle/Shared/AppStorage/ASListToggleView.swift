//
//  ASListToggleView.swift
//  SwiftUIToggle
//
//  Created by Jennifer Eve Curativo on 7/2/22.
//

import SwiftUI

struct ASListToggleView<ViewModel>: View where ViewModel: ASListToggleViewViewModelProtocol{
    
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.list) { item in
                Toggle(item.title, isOn: item.isOn)
            }
        }
    }
}

struct ASListToggleView_Previews: PreviewProvider {
    static var previews: some View {
        let persistenceManager = PersistenceManager()
        let viewModel = ASListToggleViewViewModel(persistenceManager: persistenceManager)
        ASListToggleView(viewModel: viewModel)
    }
}
