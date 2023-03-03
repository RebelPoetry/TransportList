//
//  TransportListState.swift
//  TransportList
//
//  Created by Kazakh on 03.03.2023.
//

import TCA

// MARK: - TransportListState

public struct TransportListState: Equatable {
    
    // MARK: - Children
    
    /// Array of `TransportListState` instance
    ///
    /// It's an instances of `Transport` module.
    /// We use it here to navigate to `InventoryItem` screen inside current module.
    public var items: IdentifiedArrayOf<TransportState>
    
    // MARK: - Initializer
    
    public init() {
        self.items = IdentifiedArrayOf(uniqueElements:
            TransportCategory.allCases.map { category in
                TransportState(
                    title: category.title,
                    subtitle: category.subtitle,
                    imageName: category.imageName
                )
                
            }
        )
    }
}
