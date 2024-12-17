//
//  Home.swift
//  PlatformSpecificViewsFiles
//
//  Created by Hakob Ghlijyan on 12/17/24.
//

import SwiftUI

#if os(iOS)
struct Home: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
            Text("Home iOS")
        }
    }
}

#Preview {
    Home()
}
#endif
