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
    
    // change the function in the "body" variable to show Alert
    
    var body: some View {
//        showAlert()
        showActionSheet()
    }
    
    fileprivate func showAlert() -> some View {
        return VStack {
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
    
    fileprivate func showActionSheet() -> some View {
        return VStack {
            Button(action:{
                self.isError = true
            }, label: {
                Text(titleBtn)
            }).actionSheet(isPresented: $isError) {
                ActionSheet(title: Text("загрузка"), message: Text("Вы хотите загрузить фото?"), buttons: [.default(Text("Download"), action: {
                
                    titleBtn = "Loading..."
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        titleBtn = "Вход"
                    }
                }), .cancel()])
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
