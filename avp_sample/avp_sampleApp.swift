//
//  avp_sampleApp.swift
//  avp_sample
//
//  Created by AK Puvvada on 9/13/24.
//

import SwiftUI
import Spatial

@available(visionOS 2.0, *)
@main
struct avp_sampleApp: App {
    @Environment(\.dismissWindow) var dismissWindow
    
    /// Pass the app's state object to all SwiftUI views as an environment object.
    @State private var appState = AppState()

    var body: some Scene {
#if os(visionOS)
        WindowGroup {
            let initialSize = Size3D(width: 900, height: 500, depth: 900)
            ContentView()
                .frame(minWidth: initialSize.width, maxWidth: initialSize.width * 2,
                        minHeight: initialSize.height, maxHeight: initialSize.height * 2)
                .frame(minDepth: initialSize.depth, maxDepth: initialSize.depth * 2)
        }
        .windowStyle(.volumetric)
        .defaultWorldScaling(.dynamic)
        .volumeWorldAlignment(.gravityAligned)
        
        ImmersiveSpace(id: "ImmersiveSpace") {
            EmptyView()
        }
#endif
    }
}

#Preview(windowStyle: .volumetric) {
    ContentView()
}
