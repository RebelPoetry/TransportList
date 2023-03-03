//
//  TransportView.swift
//  TransportList
//
//  Created by Kazakh on 03.03.2023.
//

import SwiftUI
import TCA

// MARK: - TransportView

public struct TransportView: View {
    
    // MARK: - Properties
    
    /// The store powering the `InventoryItem` feature
    public let store: StoreOf<TransportFeature>
    
    // MARK: - View
    
    public var body: some View {
        WithViewStore(store) { viewStore in
            VStack{
                HStack(spacing: 0) {
                    HStack {
                        Spacer()
                        Image(viewStore.imageName)
                            .padding(.vertical, 15)
                        Spacer()
                    }
                    .frame(width: 56)
                    Text(viewStore.title)
                        .font(.system(size: 17))
                    Spacer()
                    Text(viewStore.subtitle)
                        .font(.system(size: 15))
                        .foregroundColor(Color.gray)
                    HStack {
                        Spacer()
                            .frame(width: 8)
                        if viewStore.isSelected {
                            Image("ok")
                        }
                        Spacer()
                            .frame(width: 16)
                    }
                    .frame(width: 48)
                }
                
                .frame(height: 60)
                .background(Color.white)
            }.onTapGesture {
                viewStore.send(.transportTapped)
            }
            
            
            
        }
    }
    
}

public struct TransportView_Previews: PreviewProvider {
    public static var previews: some View {
        ZStack {
            Color(.systemGray5).ignoresSafeArea()
            ScrollView(showsIndicators: false){
                VStack(spacing: 0){
                    TransportView(store: Store(
                        initialState: TransportState(title: "Walk", subtitle: "Up to 7 kmh", imageName: "walk"),
                        reducer: TransportFeature()
                    )
                    )
                    TransportView(store: Store(
                        initialState: TransportState(title: "Skate", subtitle: "Up to 14 kmh", imageName: "skate"),
                        reducer: TransportFeature()
                    )
                    )
                }
            }
            
            .smoothCorners(radius: 24)
            .padding(.horizontal, 16)
        }
    }
}
