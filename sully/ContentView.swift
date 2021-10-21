//
//  ContentView.swift
//  sully
//
//  Created by Robert Bulliard on 10/21/21.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var alertisvisible: Bool = false
    var body: some View {
        VStack {
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
            
            VStack {
                
            // ***********************************
            // ****** Button to display name     *
            // ***********************************
                
                Button(action:
                                           {
                                       print("hellox swift!")
                                       self.alertisvisible = true
                               
                                           }
                                         )
                                        {
                                            Text ("Hit me please. ")
                                              .bold()
                                        }
                                        .alert(isPresented: $alertisvisible) { () -> Alert in
                                            Alert(title: Text("Name Title."), message: Text("Name is \(self.name)"), dismissButton: .default(Text("Ok")))}
                
                
                // ***********************************
                // ****** Menu to order stuff        *
                // ***********************************
                
                Menu("Ordering Menu Options")
                {
                            Button("Order Now", action: placeOrder)
                            Button("Adjust Order", action: adjustOrder)
                            Button("Cancel", action: cancelOrder)
                }
                
                // ***********************************
                // ****** Form to enter name         *
                // ***********************************
                
                Form {
                    Section {
                            TextField("Enter Name: ", text: $name)
                            .foregroundColor(.black)
                            .background(Color.yellow)
                            .opacity(10.3)
                        }
                    
                    VStack(alignment: .leading)
                    {
                    Text("Placing Order")
                            .multilineTextAlignment(.center)
                   Image("hamburger")
                    }
                    
                    // 4 } follow this
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
        .previewLayout(.fixed(width: 468, height: 320))
    }
}
