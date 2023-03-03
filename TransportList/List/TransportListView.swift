//
//  TransportListView.swift
//  TransportList
//
//  Created by Kazakh on 03.03.2023.
//


import SwiftUI
import TCA

// MARK: - TransportListView

public struct TransportListView: View {
    
    // MARK: - Properties
    
    /// The store powering the `TransportList` feature
    public let store: StoreOf<TransportListFeature>
    
    // MARK: - View
    
    public var body: some View {
        WithViewStore(store) { viewStore in
            ZStack {
                Color(.systemGray5).ignoresSafeArea()
                VStack{
                    Text("Тип выбранного транспорта влияет на радиус игры и на максимальную скорость вашего передвижения")
                        .lineLimit(2)
                        .font(.system(size: 15))
                        .foregroundColor(Color.gray)
                        .minimumScaleFactor(0.38)
                        .multilineTextAlignment(.center)
                    ScrollView(showsIndicators: false) {
                        VStack(spacing: 0){
                            ForEachStore(
                                store.scope(state: \.items, action: TransportListAction.listItem(id:action:)),
                                content: TransportView.init
                            )
                        }
                        .smoothCorners(radius: 24)
                    }
                }
                .padding(.horizontal, 16)
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Выберите транспорт")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Отмена") {
                        
                    }
                    .foregroundColor(Color("colorButton"))
                }
            }
        }
    }
}

// MARK: - Preview

struct TransportListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VStack {
                TransportListView(store: Store(
                    initialState: TransportListState(),
                    reducer: TransportListFeature()
                ))
            }
        }
    }
}
