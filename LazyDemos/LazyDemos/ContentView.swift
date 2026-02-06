//
//  ContentView.swift
//  LazyDemos
//
//  Created by SUMAGANG, KYLE RUSSLIE on 2/6/26.
//

import SwiftUI

struct ContentView: View {
    @State private var columns = [
        GridItem(.flexible(maximum: 100)),
        GridItem(.flexible(maximum: 200)),
  ]
    
    var body: some View {
        ScrollView(.horizontal) {
            
            LazyHGrid(rows: columns) {
                ForEach(0..<1000){ i in
                      let _ = print("Dang \(i)")
                        RedAndCyanView()
            }
            
            
                }
            
           }
        .padding()
    }
}

struct RedAndCyanView: View {
    var body: some View {
        ZStack {
            Color(.red)
            Rectangle()
                .fill(.cyan)
                .frame(width: 100, height: 100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


