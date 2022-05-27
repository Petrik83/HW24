//
//  Cell.swift
//  HW24
//
//  Created by Александр Петрович on 21.05.2022.
//

import SwiftUI

struct CardsTableViewCell: View {
    @State var card: Card
    var body: some View {
        
        Button {
            print(card)
        } label: {
            VStack {
                Divider()
                HStack {
                    VStack(alignment: .leading) {
                        Spacer()
                        Text("Card Name: \(card.name)")
                        Spacer()
                        Text("Set Name: \(card.setName)")
                        Spacer()
                    }
                    Spacer()
                    AsyncImage(url: URL(string: card.imageUrl ?? "")) { image in
                        image.resizable().padding(.vertical, 3)

                        
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 100, height: 125)
                }                
                .padding(.horizontal)
            }
        }

        
        
    }
    
}


//struct Cell_Previews: PreviewProvider {
//    static var previews: some View {
//        Cell(cardsArray: <#Binding<Cards>#>)
//    }
//}
