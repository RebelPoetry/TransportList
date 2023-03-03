//
//  TransportState.swift
//  TransportList
//
//  Created by Kazakh on 03.03.2023.
//

// MARK: - TransportState

public struct TransportState: Equatable, Identifiable {
    
    // MARK: - Properties
    
    public let id: String
    public let title: String
    public let subtitle: String
    public let imageName: String
    public var isSelected: Bool
    
    init(title: String, subtitle: String, imageName: String) {
        self.id = title
        self.title = title
        self.subtitle = subtitle
        self.imageName = imageName
        self.isSelected = false
    }
}
