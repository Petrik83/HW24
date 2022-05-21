//
//  Cell.swift
//  HW24
//
//  Created by Александр Петрович on 21.05.2022.
//

import SwiftUI

struct Cell: View {
    let imageUrls = "http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=600&type=card"
    var body: some View {
        HStack {
                        VStack {
                            Text("Card Name")
                            Text("Set Name")
                        }
            Spacer()
                        AsyncImage(url: URL(string: imageUrls)) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 50, height: 75)
                    }
        .padding()
                }
    
}


struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell()
    }
}
