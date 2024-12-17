//
//  BlurView.swift
//  PlatformSpecificViewsFiles
//
//  Created by Hakob Ghlijyan on 12/17/24.
//

import SwiftUI

#if os(iOS)
struct BlurView: View {
    var body: some View {
        Text("iOS View")
            .platform(.iOS) { view in
                view
                    .padding(25).background(.red)
            }
            .platform(.macOS) { view in
                view
                    .padding(50).background(.blue)
            }
    }
    
}
#else
struct BlurView: View {
    var body: some View {
        Text("macOS View")
            .platform(.iOS) { view in
                view
                    .padding(25).background(.red)
            }
            .platform(.macOS) { view in
                view
                    .padding(50).background(.blue)
            }
    }
}
#endif

#Preview {
    BlurView()
}
