//
//  UseList.swift
//  OutlineGroupDemo
//
//  Created by VINH HOANG on 19/11/2022.
//

import SwiftUI
struct UseList: View {
    var body: some View {
        List(carItems, children: \.children) { item in
            CellView(item: item)
        }
        .listStyle(SidebarListStyle())
    }
}
