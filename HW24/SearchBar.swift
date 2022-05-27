//
//  SearchBar.swift
//  HW24
//
//  Created by Александр Петрович on 21.05.2022.
//

import SwiftUI
import Alamofire

struct SearchBar: View {
    @ObservedObject var data: ResevedData
    
    @Binding var text: String
    @State var cardsArr = Cards(cards: [Card]())
    @State private var isEditing = false
    
    @Binding var cardsArray: Cards
    var body: some View {
        HStack {

            HStack {
                Button {
                    print(data.cardsData)

                } label: {
                    Image(systemName: "magnifyingglass")
                        .padding(.leading)
                }

                
                TextField("Search ...", text: $data.searchText)
                    .padding(7)
                    .onTapGesture {
                        self.isEditing = true
                }
                
                Button(action: {
                    data.cardsData = cardsArr
//                    self.text = ""
//                    print(cardsArray)
                }) {
                    Image(systemName: "xmark.circle.fill").opacity(text == "" ? 0 : 1)
                }
                .padding(.trailing)

            }
            .foregroundColor(.secondary)
//            .padding()
            .background(Color(.secondarySystemBackground))
            .cornerRadius(8)


//            if isEditing {
                Button(action: {
                    data.cardsData.cards.removeAll()
                    ReceveData(cardName: data.searchText).fetchCardsData { recevedData in
                        cardsArr = recevedData
                        print("----------------------------")
//                        print(cardsArray)

                    }
                }) {
                    Text("Search")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.default)
//            }
        }
        .padding()

    }
}

//struct SearchBar_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchBar(text: .constant(""))
//    }
//}
