//
//  TransportCategory.swift
//  TransportList
//
//  Created by Kazakh on 03.03.2023.
//

// MARK: - TransportCategory

public enum TransportCategory: String, CaseIterable {
    
    // MARK: - Cases
    
    case walk
    case skate
    case rollerSkate
    case scooter
    case bicycle
    case another
    
    // MARK: - Properties
    
    public var id: String {
        self.rawValue
    }
    
    public var title: String {
        switch self {
        case .walk:
            return "Walk"
        case .skate:
            return "Skate"
        case .rollerSkate:
            return "Roller skate"
        case .scooter:
            return "Scooter"
        case .bicycle:
            return "Bicycle"
        case .another:
            return "Another"
        }
    }
    
    public var subtitle: String {
        switch self {
        case .walk:
            return "Up to 7 kmh"
        case .skate:
            return "Up to 14 kmh"
        case .rollerSkate:
            return "Up to 14 kmh"
        case .scooter:
            return "Up to 28 kmh"
        case .bicycle:
            return "Up to 28 kmh"
        case .another:
            return "Up to 56 kmh"
        }
    }
    
    public var imageName: String {
        switch self {
        case .walk:
            return "walk"
        case .skate:
            return "skate"
        case .rollerSkate:
            return "rollerSkate"
        case .scooter:
            return "scooter"
        case .bicycle:
            return "bicycle"
        case .another:
            return "another"
        }
    }
}
