//
//  ContentView.swift
//  HW24
//
//  Created by Александр Петрович on 21.05.2022.
//

import SwiftUI
import Alamofire
struct ContentView: View {
    
    @ObservedObject var data = ResevedData()
    @State var show = false
    
    var body: some View {
        NavigationView {
            if show {
                CardsTableView(data: data)
                    .navigationBarTitle("Magic: The Gathering")
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            withAnimation(.easeInOut(duration: 1.0)) {
                                Button {
                                    show = false
                                    data.isLoaded = false
                                    data.cardsData.cards.removeAll()
                                } label: {
                                    Image(systemName: "house")
                                }
                                .foregroundColor(Color.black)
                            }
                        }
                    }
            } else {
                CardNameEnterView(data: data, show: $show)
                    .navigationBarTitle("Magic: The Gathering")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
