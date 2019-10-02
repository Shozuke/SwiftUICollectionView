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
                    HeaderView(withTitle: dataRow.name, actionTitle: self.actionTitle, font: Font.system(size: 18), color: .red)
//                    HeaderView(title: dataRow.name, actionTitle: self.actionTitle, destinationView: CellView(), font: Font.system(size: 18), color: .red)
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

