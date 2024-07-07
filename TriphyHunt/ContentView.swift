//
//  ContentView.swift
//  TriphyHunt
//
//  Created by Станислав Смирнов on 16.07.2023.
//

import SwiftUI

enum Icons: String, CaseIterable {
    case 😂, 😳, 😎, 🤭
}

struct ContentView: View {
    
    @State var selection: Icons = .😂
    
    var body: some View {
        NavigationView {
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                Picker("Select Icon", selection: $selection) {
                    ForEach(Icons.allCases, id: \.self) {
                        icon in
                        Text(icon.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Icons")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
