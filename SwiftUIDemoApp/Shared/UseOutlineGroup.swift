//
//  UseOutlineGroup.swift
//  OutlineGroupDemo
//
//  Created by VINH HOANG on 19/11/2022.
//

import SwiftUI

struct UseOutlineGroup: View {
  
    var body: some View {
        List {
            ForEach(carItems) { carItem in
                Section(header: Text(carItem.name)) {
                    if let carItems = carItem.children {
                        OutlineGroup(carItems, children: \.children) { child in
                            CellView(item: child)
                        }
                    }
                }
            }
            .listStyle(InsetListStyle())
        }
       
    }
}
