//
//  Preview+AppStateEnvironbment.swift
//  avp_sample
//
//  Created by AK Puvvada on 10/21/24.
//

import SwiftUI

struct SampleAppStateEnvironment: PreviewModifier {
    static func makeSharedContext() async throws -> AppState {
        AppState()
    }

    func body(content: Content, context: AppState) -> some View {
        content
            .environment(context)
    }
}

//extension PreviewTrait where T == Preview.ViewTraits {
//    @MainActor static var sampleAppState: Self = .modifier(SampleAppStateEnvironment())
//}
