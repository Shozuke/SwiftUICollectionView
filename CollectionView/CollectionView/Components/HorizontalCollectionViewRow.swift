//
//  HorizontalCollectionViewRow.swift
//  CollectionView
//
//  Created by Ricardo@GaspardBruno on 02/10/2019.
//  Copyright © 2019 Ricardo Alves. All rights reserved.
//

import SwiftUI

struct HorizontalCollectionViewRow: View {
    let modelData: [Data]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(modelData, id: \.id) { data in
                    
                    CellView(data: data, cellFrame: CGSize(width: 180, height: 246))
                    
                }
                
            }.padding(.bottom, 16)
            Spacer()
        }
            
        
    }
}

struct HorizontalCollectionViewRow_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalCollectionViewRow(modelData: modelData)
    }
}
