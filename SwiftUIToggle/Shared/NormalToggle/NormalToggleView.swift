//
//  ContentView.swift
//  Shared
//
//  Created by Jennifer Eve Curativo on 7/2/22.
//

import SwiftUI

struct NormalToggleView: View {
    @State private var toggleA = false
    @State private var toggleB = true
    
    var body: some View {
        VStack {
            Toggle("Toggle A", isOn: $toggleA)
            Toggle("Toggle B", isOn: $toggleB)
        }
        .padding()
    }
}

struct NormalToggleView_Previews: PreviewProvider {
    static var previews: some View {
        NormalToggleView()
    }
}
