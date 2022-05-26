//
//  ContentView.swift
//  HW24
//
//  Created by Александр Петрович on 21.05.2022.
//

import SwiftUI
import Alamofire
struct ContentView: View {
    var cards: [Cards] = []
    @State var cardsArray = Cards(cards: [Card]())

    
    @State var text = "Black Lotus"
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $text, cardsArray: $cardsArray)
                CardsList(cardsArray: $cardsArray)
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
