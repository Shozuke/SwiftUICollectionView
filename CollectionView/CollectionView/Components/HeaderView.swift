//
//  HeaderView.swift
//  CollectionView
//
//  Created by Ricardo@GaspardBruno on 01/10/2019.
//  Copyright © 2019 Ricardo Alves. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    let title, actionTitle: String
//    let destinationView: destination
    let font: Font
    let color: Color
    
    let kerningValue: CGFloat = 0.8
    
    @State private var showNextScreen: Bool = false
    
    init(withTitle title: String? = nil, actionTitle: String? = nil, font: Font? = Font.system(size: 16), color: Color? = .red ) {
        self.title = title != nil ? title! : ""
        self.actionTitle = actionTitle != nil ? actionTitle! : ""
        self.font = font!
        self.color = color!
        
    }
     @State private var action: Int? = 0
    var body: some View {
        HStack {
            Text(title)
            Spacer()

            NavigationLink(destination: SeeLookView()) {
                EmptyView()
            }
            Text(actionTitle.uppercased())
               .font(font)
               .foregroundColor(color)
                   .kerning(kerningValue)

        }
        .padding(.horizontal, 16)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(withTitle: "Informal, Day, Confortable", actionTitle: "SEE LOOK", font: Font.system(size: 10), color: .blue)
            .previewLayout(.fixed(width: 300, height: 50))
    }
}
