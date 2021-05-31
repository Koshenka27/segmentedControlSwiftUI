//
//  ContentView.swift
//  segmentedControlDemo
//
//  Created by Logan Koshenka on 5/30/21.
//

import SwiftUI

struct ContentView: View {
    @State var selected = 1
    
    var body: some View {
        VStack {
            Picker(selection: $selected, label: Text("Picker"), content: {
                Text("List of 5").tag(1)
                Text("List of 10").tag(2)
            })
            .pickerStyle(SegmentedPickerStyle())
            
            if selected == 1 {
                List(0..<5) { item in
                    Text("item")
                }
            } else {
                List(0..<10) { item in
                    Text("item")
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
