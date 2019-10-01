//
//  HeaderView.swift
//  CollectionView
//
//  Created by Ricardo@GaspardBruno on 01/10/2019.
//  Copyright © 2019 Ricardo Alves. All rights reserved.
//

import SwiftUI

struct HeaderView<destination: View>: View {
    let title, actionTitle: String
    let destinationView: destination
    let font: Font
    let color: Color
    
    let kerningValue: CGFloat = 0.8
    
    init(withDestination destinationView: destination, title: String? = nil, actionTitle: String? = nil, font: Font? = Font.system(.title), color: Color? = .red ) {
        self.title = title != nil ? title! : ""
        self.actionTitle = actionTitle != nil ? actionTitle! : ""
        self.font = font!
        self.color = color!
        self.destinationView = destinationView
        
    }
    
    var body: some View {
        HStack {
            Text(title)
            Spacer()
            NavigationLink(destination: destinationView) {
                Text(actionTitle.uppercased())
                .font(font)
                .foregroundColor(color)
                    .kerning(kerningValue)
                
              }
        }
        .padding(.horizontal, 16)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Informal, Day, Confortable", actionTitle: "SEE LOOK", destinationView: ContentView(), font: Font.system(size: 10), color: .blue)
            .previewLayout(.fixed(width: 300, height: 50))
    }
}
