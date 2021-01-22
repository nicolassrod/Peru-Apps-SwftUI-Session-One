//
//  ContentView.swift
//  Peru Apps SwftUI Session One
//
//  Created by Nicolás A. Rodríguez on 21/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 15.0) {
                ScrollView {
                    VStack {
                        ProducView()
                        ProducView()
                        ProducView()
                        ProducView()
                        ProducView()
                        ProducView()
                        ProducView()
                        ProducView()
                        ProducView()
                    }.padding()
                }
            }.navigationTitle("Products")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
