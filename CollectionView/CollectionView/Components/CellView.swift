//
//  CellView.swift
//  CollectionView
//
//  Created by Ricardo@GaspardBruno on 01/10/2019.
//  Copyright © 2019 Ricardo Alves. All rights reserved.
//

import SwiftUI

//struct CellFrame {
//    let width: CGFloat
//    let height: CGFloat
//}

struct CellView: View {
    let data: Data
    let cellFrame: CGSize
    
    var body: some View {
             VStack {
               Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: cellFrame.width, height: cellFrame.height)
                .clipShape(Rectangle())
                   
           }
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {

        CellView(data: Data(id: 0, name: "testing", image: "0"), cellFrame: CGSize(width: 180, height: 246))
            .previewLayout(.fixed(width: 180, height: 246))
    }
}
