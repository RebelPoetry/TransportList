//
//  TransportFeature.swift
//  TransportList
//
//  Created by Kazakh on 03.03.2023.
//

import TCA

// MARK: - TransportFeature

public struct TransportFeature: ReducerProtocol {
    
    // MARK: - Feature
    
    public var body: some ReducerProtocol<TransportState, TransportAction> {
        Reduce { state, action in
            switch action {
            case .transportTapped:
                state.isSelected = !state.isSelected
            }
            return .none
        }
    }
}
