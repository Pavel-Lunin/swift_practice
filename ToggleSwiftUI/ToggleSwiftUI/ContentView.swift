//
//  ContentView.swift
//  ToggleSwiftUI
//
//  Created by Pavel on 15.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State var isOnToggle = false
    
    var body: some View {
        VStack{
            ZStack{
                HStack{
                    VStack{
                        Text("Корзина")
                        Text("Профиль")
                        Spacer()
                    }
                    Spacer()
                }.padding()
                
                RoundedRectangle(cornerRadius: 20).fill(Color(red: 0.2627, green: 0.5392, blue: 0.5)).offset(x: isOnToggle ? 100 : 0)
                Text("Текст поверх").foregroundColor(Color(red: 0.4627, green: 0.8392, blue: 1.0)).offset(x: isOnToggle ? 100 : 0)
            }
            
            Toggle(isOn: $isOnToggle, label: {
                Text("Сдвинуть вправо")
            }).padding()
            
        }.animation(.spring(response: 0.55, dampingFraction: 0.825, blendDuration: 0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
