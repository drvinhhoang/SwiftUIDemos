//
//  CellView.swift
//  OutlineGroupDemo
//
//  Created by VINH HOANG on 19/11/2022.
//

import SwiftUI

struct CellView: View {
    var item: CarInfo
    var body: some View {
        HStack {
            Image(systemName: item.image)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundColor(.green)
            Text(item.name)
        }
    }
}

