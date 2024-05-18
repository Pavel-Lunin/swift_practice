//
//  ContentView.swift
//  PickersSwiftUI
//
//  Created by Pavel on 16.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State var section = 0
    var settingsTime = [" ", "5 min", "10 min", "15 min"]
    
    @State var isError = false
    @State var titleBtn = "Показать алерт"
    
    var body: some View {
        NavigationStack {
                VStack{
                    List {
                        NavigationLink {
                            Picker(selection: $section, label: Text("Время"), content: {
                                ForEach(0..<settingsTime.count, id: \.self) {
                                    Text(self.settingsTime[$0])
                                    
                                }
                            }).pickerStyle(.wheel)
                        } label: {
                            HStack {Text("Время")
                                Spacer()
                                Text("\(settingsTime[section])")}
                        }
                        
                        NavigationLink {
                            showAlert()
                        } label: {
                            Text("Тест алерта")
                        }
                        
                        NavigationLink {
                            showActionSheet()
                        } label: {
                            Text("Тест ActionSheet")
                        }
                    }
                }.navigationBarTitle("Настройки")
        }
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
                           titleBtn = "Загружено успешно!"
                           DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                               titleBtn = "Показать ActionSheet"
                           }
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
