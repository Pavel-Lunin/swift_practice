//
//  ContentView.swift
//  PickersSwiftUI
//
//  Created by Pavel on 16.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State var section = 0
    var settingsTime = ["5 min", "10 min", "15 min"]
    
    var body: some View {
        NavigationStack() {
                VStack{
                    List {
                        Picker(selection: $section, label: Text("Время"), content: {
                            ForEach(0..<settingsTime.count, id: \.self) {
                                Text(self.settingsTime[$0])
                                
                            }
                        }).pickerStyle(.automatic)
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
