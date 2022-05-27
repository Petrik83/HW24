//
//  ContentView.swift
//  HW24
//
//  Created by Александр Петрович on 21.05.2022.
//

import SwiftUI
import Alamofire
struct ContentView: View {
//    var cards: [Cards] = []
    @StateObject var data = ResevedData()

    @State var cardsArray = Cards(cards: [Card]())

    
    @State var text = "Black Lotus"
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(data: data, text: $text, cardsArray: $cardsArray)
                Button {
                    print(data.cardsData)
                } label: {
                    Text("button")
                }

                CardsList(data: data, cardsArray: $cardsArray)
            }
            .navigationTitle("Magic: The Gathering")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
