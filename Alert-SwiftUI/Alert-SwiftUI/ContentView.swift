//
//  ContentView.swift
//  Alert-SwiftUI
//
//  Created by Pavel on 08.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        Button(action:{
            print("тест")
            }, label: {
                Text("Вход")
            })

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
