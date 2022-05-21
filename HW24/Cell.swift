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
                            Spacer()

                            Text("Card Name")
                            Spacer()
                            Text("Set Name")
                            Spacer()

                        }
            Spacer()
                        AsyncImage(url: URL(string: imageUrls)) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 100, height: 125)
                    }
        .frame(height: 135)

        .padding()
                }
    
}


struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell()
    }
}
