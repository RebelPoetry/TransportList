//
//  TransportListAction.swift
//  TransportList
//
//  Created by Kazakh on 03.03.2023.
//

// MARK: - ChibiInventoryAction

public enum TransportListAction: Equatable {
    
    // MARK: - Children
    
    /// Child action for `ChibiInventoryItem` module.
    ///
    /// It's necessary as we use `forEach` operator in current module's reducer.
    /// In short, the `chibiInventoryItem` case means that every action in `InventoryItem` module
    /// will be sent to current module with target element identifier
    case listItem(id: TransportState.ID, action: TransportAction)
}
