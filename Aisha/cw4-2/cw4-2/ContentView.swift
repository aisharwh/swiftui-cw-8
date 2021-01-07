//
//  ContentView.swift
//  cw4-2
//
//  Created by MacBook` on 29/12/2020.
//

import SwiftUI

struct ContentView: View {
    @State var counters: [String] = ["0", "0", "0"]
    var body: some View {
        VStack (alignment: .trailing)
        {
            ThekerButton (counter: $counters[0], label: "استغفرالله")
            
            ThekerButton (counter: $counters[1], label: "سبحان الله وبحمده")
            
            ThekerButton (counter: $counters[2], label: "الحمدلله")
            
        }
            }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct ThekerButton: View {
    @Binding var counter: String
    let label: String
    
    var body: some View {
        HStack {
            Text (label) .font(.largeTitle)
            Button (action: {
                        self.counter = String (Int(self.counter)! + 1)
            }) {
                Text(counter)
                    .font(.largeTitle)
            }.frame(width: 50, height: 50)
             .foregroundColor(.white)
             .background(Color.green)
             .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
             .padding()
            }
        }
    }

