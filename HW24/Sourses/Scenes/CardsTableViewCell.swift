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
                    if card.imageUrl != nil {
                    AsyncImage(url: URL(string: card.imageUrl!)) { image in
                        image.resizable().padding(.vertical, CardsTableViewCellMetric.imagePadding)
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: CardsTableViewCellMetric.imageWidth, height: CardsTableViewCellMetric.imageHeight)
                    } else {
                        Image("noImageAvailable")
                    }
                }                
                .padding(.horizontal)
        }
    }
}

enum CardsTableViewCellMetric {
    static let imageHeight = 125.0
    static let imageWidth = 100.0
    static let imagePadding = 3.0
}
