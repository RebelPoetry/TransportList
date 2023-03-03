//
//  TransportListFeature.swift
//  TransportList
//
//  Created by Kazakh on 03.03.2023.
//

import TCA

// MARK: - TransportListFeature

public struct TransportListFeature: ReducerProtocol {
    
    // MARK: - Feature
    
    public var body: some ReducerProtocol<TransportListState, TransportListAction> {
        Reduce { state, action in
            switch action {
            case .listItem(id: let id, action: .transportTapped):
                print("transport with id - \(id) tapped")
            }
            return .none
        }.forEach(\.items, action: /TransportListAction.listItem(id:action:)) {
            TransportFeature()
        }
    }
}
