//
//  ContentView.swift
//  PlatformSpecificViewsFiles
//
//  Created by Hakob Ghlijyan on 12/17/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //1
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .platform(.iOS) { view in
            view
                .padding(25).background(.red)
        }
        .platform(.macOS) { view in
            view
                .padding(50).background(.blue)
        }
        //2
        BlurView()
        //3
        Home()
            .padding(100)
            .background(.orange)
    }
}


#Preview {
    ContentView()
}
