//
//  ContentView.swift
//  XCodeCloud20231109
//
//  Created by Tan Chan on 11/9/23.
//

import SwiftUI
import CoreData

import SwiftUI

struct ContentView: View {
    @State var total = ""
    @State var tipPercent = 15.0
    var body: some View {
        VStack {
            Image("tyga")
                .resizable() // Makes the image resizable
                .scaledToFit() // Scales the image to fit within the frame preserving aspect ratio
                .frame(width: 100, height: 100) // Sets the frame to specific width and height
            HStack {
                Image(systemName: "dollarsign.circle.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .font(.title)
                Text("Tip Calculator")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }
            HStack {
                Text("$")
                TextField("Amounts", text: $total)
            }
            HStack {
                Slider(value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))")
                Text("%")
            }
            if let totalNum = Double(total) {
                Text("Tip Amount: $\(totalNum * tipPercent * 0.01, specifier: "%0.2f")")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
