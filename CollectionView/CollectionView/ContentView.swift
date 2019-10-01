//
//  ContentView.swift
//  CollectionView
//
//  Created by Ricardo on 01/10/2019.
//  Copyright © 2019 Ricardo Alves. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    
    
    let actionTitle = "SEE LOOK"

    var body: some View {
        NavigationView {
            List(collectionViewDataModel) { dataRow in
                VStack {
                    HeaderView(title: dataRow.name, actionTitle: self.actionTitle, destinationView: CellView(), font: Font.system(size: 18), color: .red)
                        .frame(height: 50)
                    HorizontalCollectionViewRow(modelData: dataRow.list)
                }
            }
            .navigationBarTitle("adsar")
            Spacer()
            
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HorizontalCollectionViewRow: View {
    let modelData: [Data]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(modelData, id: \.id) { data in
                    
                    CellView(data: data, cellFrame: CellFrame(width: 180, height: 246))
                    
                }
                
            }.padding(.bottom, 16)
            Spacer()
        }
            
        
    }
}
