//
//  ContentView.swift
//  CollectionView
//
//  Created by Ricardo on 01/10/2019.
//  Copyright © 2019 Ricardo Alves. All rights reserved.
//

import SwiftUI

struct Data: Identifiable {
    
    var id: Int
    let name, image: String
    
}

struct ContentView: View {
    
    let modelData: [Data] = [Data(id: 0, name: "something0", image: "0"),
                             Data(id: 1, name: "something1", image: "1"),
                             Data(id: 2, name: "something2", image: "2"),
                             Data(id: 3, name: "something3", image: "3"),
                             Data(id: 4, name: "something4", image: "4"),
                             Data(id: 5, name: "something5", image: "5"),
                             Data(id: 6, name: "something6", image: "6"),
                             Data(id: 7, name: "something7", image: "7"),
                             Data(id: 8, name: "something8", image: "8"),
                             Data(id: 9, name: "something9", image: "9"),
                             Data(id: 10, name: "something10", image: "10"),
                             Data(id: 11, name: "something11", image: "11"),
                             Data(id: 12, name: "something12", image: "12"),
                             Data(id: 13, name: "something13", image: "13"),
                             Data(id: 14, name: "something14", image: "14"),
                             Data(id: 15, name: "something15", image: "15")]
    
    var body: some View {
        NavigationView {
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(modelData, id: \.id) { data in
                        CustomCollectionView(data: data)
                        
                    }
                    
                }
                Spacer()
                }.padding(20)
            
            .navigationBarTitle("das")
        }
    }
}

struct CustomCollectionView: View {

    let data: Data

    var body: some View {
        VStack {
            Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 200)
                .clipShape(Rectangle())
                
            Text(data.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
