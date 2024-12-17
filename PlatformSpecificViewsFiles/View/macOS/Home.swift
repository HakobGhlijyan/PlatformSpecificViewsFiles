//
//  Home.swift
//  PlatformSpecificViewsFiles
//
//  Created by Hakob Ghlijyan on 12/17/24.
//

import SwiftUI

#if os(macOS)
struct Home: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            Text("Home MacOS")
        }
    }
}

#Preview {
    Home()
}
#endif
