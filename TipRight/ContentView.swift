//
//  ContentView.swift
//  TipRight
//
//  Created by Matt DiNovo on 6/13/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tipAmount: Double = 0
    @State private var splitAmount: Double = 1
    @State private var showSheet: Bool = false
    
    var body: some View {
        
        VStack {
            Slider(value: $tipAmount, in: 0...30 , step: 1) {
                Text(String(tipAmount) + "%").font(.title2).fontWeight(.thin)
            } minimumValueLabel: {
                Text("Tip: ").font(.title2).fontWeight(.thin)
            } maximumValueLabel: {
                Text(String(tipAmount) + "%").font(.title2).fontWeight(.thin)
            }
            .padding()
            
            Slider(value: $splitAmount, in: 1...30, step: 1)
            
            
            
            
        }
        .padding()
        
    VStack() {
            Text("Round up or down to the Nearest Dollar")
                .font(.subheadline)
        HStack {
              
            Button(" Round Up") {
            //TODO: Add functionality to round up to the nearest dollar
            }
            .buttonStyle(.borderedProminent)
            
            Button(" Round Down") {
            //TODO: Add functionality to round down to the nearest dollar
            }
            .buttonStyle(.borderedProminent)
            
          
            }
        .padding()
        
        Button("Upgrade to Pro") {
            showSheet = true
        }
        .sheet(isPresented: $showSheet) {
            Text("Upgrade to Pro")
            .presentationDetents([.height(300), .medium, .large])
            .presentationDragIndicator(.automatic)
        }
        .font(.subheadline).bold()
        }
        
    }
    
}
#Preview {
    ContentView()
}
