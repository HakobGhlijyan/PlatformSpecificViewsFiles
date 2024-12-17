//
//  View+Extensions.swift
//  PlatformSpecificViewsFiles
//
//  Created by Hakob Ghlijyan on 12/17/24.
//

import SwiftUI

enum PlatformType {
    case iOS
    case macOS
    case tvOS
    case visionOS
}
 
extension View {
    @ViewBuilder func platform<Content:View>(_ type: PlatformType, @ViewBuilder content: (Self) -> Content) -> some View {
        switch type {
        case .iOS:
            #if os(iOS)
            content(self)
            #else
            self
            #endif
        case .macOS:
            #if os(macOS)
            content(self)
            #else
            self
            #endif
        case .tvOS:
            #if os(tvOS)
            content(self)
            #else
            self
            #endif
        case .visionOS:
            #if os(visionOS)
            content(self)
            #else
            self
            #endif
        }
    }
}
