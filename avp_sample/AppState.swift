//
//  AppState.swift
//  avp_sample
//
//  Created by AK Puvvada on 10/21/24.
//
import SwiftUI
import RealityKit
import Spatial

/// An enumeration that tracks the current phase of the app.
public enum AppPhase: CaseIterable, Codable, Identifiable, Sendable {
    case initialize // to show instructions and welcome screen
    case configure // select scene and trafffic
    case startscenario // roadcross scenario will be started
    
    public var id: Self { self }
}

// An object that maintains app-wide state.
@Observable
@MainActor
public class AppState {
    
    /// The current phase of the app.
    var phase = AppPhase.configure
    init() {
        self.phase = AppPhase.configure
    }
}
