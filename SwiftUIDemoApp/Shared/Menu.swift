//
//  Menu.swift
//  OutlineGroupDemo
//
//  Created by VINH HOANG on 19/11/2022.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Shapes and gradient", destination: ShapeView())
                NavigationLink("Use List", destination: UseList())
                NavigationLink("Outline Group", destination: UseOutlineGroup())
            }
            .navigationTitle("Menu")
        }
    }
}
