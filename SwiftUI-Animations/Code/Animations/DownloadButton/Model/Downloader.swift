//
//  Downloader.swift
//  SwiftUI-Animations
//
//  Created by Shubham on 08/04/21.
//  Copyright © 2021 Shubham Singh. All rights reserved.
//

import SwiftUI

enum DownloadState: CaseIterable {
    case notInitiated
    case downloading
    case downloaded
    
    func getStateName() -> String {
        switch self {
        case .notInitiated:
            return "Download"
        case .downloading:
            return "Downloading"
        case .downloaded:
            return "Finished"
        }
    }
    
    func getBackground() -> Color {
        switch self {
        case .notInitiated:
            return .label
        case .downloading:
            return Color(hex: "128C7E")
        case .downloaded:
            return Color.chatBackground
        }
    }
    
    func offsetForText() -> CGFloat {
        switch self {
        case.notInitiated:
            return 0
        case .downloading:
            return 8
        case .downloaded:
            return 0
        }
    }
}

struct ButtonDimension {
    static let width: CGFloat = 320
    static let height: CGFloat = 76
    static let animationDuration: TimeInterval = 1
    static let cornerRadius: CGFloat = 12
}


class Downloader: ObservableObject {
    @Published var currentState: DownloadState = DownloadState.notInitiated
    
    // MARK:- inits
    init(state: DownloadState = .notInitiated) {
        self.currentState = state
    }
}
