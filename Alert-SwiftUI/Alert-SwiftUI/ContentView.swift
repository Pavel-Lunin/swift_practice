//
//  ContentView.swift
//  Alert-SwiftUI
//
//  Created by Pavel on 08.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State var isError = false
    @State var titleBtn = "Вход"
    
    var body: some View {
        VStack {
        Button(action:{
            self.isError = true
            }, label: {
                Text(titleBtn)
            }).alert(isPresented: $isError) {
                Alert(title: Text("test"), message: Text("Вы уверены?"), primaryButton: .destructive(Text("да"), action: {
                    titleBtn = "нажат 'да'"
                }), secondaryButton: .cancel(Text("отменить"), action: {
                    titleBtn = "нажат 'отменить'"
                }))
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
