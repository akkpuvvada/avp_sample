//
//  avp_sampleApp.swift
//  avp_sample
//
//  Created by AK Puvvada on 9/13/24.
//

import SwiftUI

@main
struct avp_sampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.windowStyle(.volumetric)

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
