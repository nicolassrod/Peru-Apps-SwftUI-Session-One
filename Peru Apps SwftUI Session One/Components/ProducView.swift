//
//  ProducView.swift
//  Peru Apps SwftUI Session One
//
//  Created by Nicolás A. Rodríguez on 21/01/21.
//

import SwiftUI

struct CustomModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .padding(.vertical, 5)
            .padding(.horizontal, 20)
            .background(Color("Green"))
            .cornerRadius(20)
    }
}

struct ProducView: View {
    @State private var isLike: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Leche Gloria")
                    .font(.title3)
                Spacer()
                Button {
                    withAnimation {
                        isLike.toggle()
                    }
                } label: {
                    if isLike == true {
                        Image("heart.on")
                            .animation(.easeIn)
                            .transition(.scale(scale: 2))
                    } else {
                        Image("heart.off")
                            .animation(.easeIn)
                            .transition(.scale(scale: 2))
                    }
                }
            }
            
            Text("Lata 400g")
                .font(.headline)
                .opacity(0.5)
            
            HStack(spacing: 20.0) {
                Image("minus.icon")
                Text("0")
                Image("minus.icon")
                Text("S/ 5.00")
                
                Spacer()
                
                Button {
                    // Accion to do
                } label: {
                    Text("Button")
                        .modifier(CustomModifier())
                }
            }
        }.foregroundColor(Color("Black"))
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color("Shadow"), radius: 10, x: 0.0, y: 10)
    }
}

struct ProducView_Previews: PreviewProvider {
    static var previews: some View {
        ProducView()
            .padding()
    }
}
