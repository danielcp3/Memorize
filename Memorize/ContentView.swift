//
//  ContentView.swift
//  Memorize
//
//  Created by Veevart on 10/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       /* VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Helloooo")
        }
        .padding()
        .font(.largeTitle)
        .foregroundColor(.red)
        */
        
        HStack {
            CardView()
            CardView(isFaceUp: true)
            CardView()
        }
        .foregroundColor(.green)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 2)
                Text("🐸").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
        })
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
