//
//  ContentView.swift
//  sully
//
//  Created by Robert Bulliard on 10/21/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, Robert!")
                .padding()
            Button(action: {}) {
                Text("Sully's Button")
                
            }
            .padding()
            .padding()
            Link("Visit Google", destination: URL(string: "https://www.google.com")!)
                .font(.title)
                .foregroundColor(.blue)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
