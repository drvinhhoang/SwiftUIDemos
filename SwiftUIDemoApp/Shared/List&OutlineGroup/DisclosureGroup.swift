//
//  SettingView.swift
//  OutlineGroupDemo
//
//  Created by VINH HOANG on 19/11/2022.
//

import SwiftUI

struct SettingsView: View {
    @State private var hybridState: Bool = false
    @State private var electricState: Bool = true
    @State private var fuelCellState: Bool = false
    @State private var inversionState: Bool = true
    @State private var filtersExpanded: Bool = false
    var body: some View {
        Form {
            DisclosureGroup(isExpanded: $filtersExpanded) {
                ToggleControl(title: " Hybrid Cars", state: hybridState)
                ToggleControl(title: " Electric Cars", state: electricState)
                ToggleControl(title: " Fuel Cell Cars", state: fuelCellState)
            } label: {
                Label("Categories Filters", systemImage: "car.2.fill")
            }
            DisclosureGroup {
                ColorControl(color: .red, label: "Background Color")
                ColorControl(color: .blue, label: "ForegroundColor")
                ToggleControl(title: "Color Inversion", state: inversionState)
            } label: {
                Label("Color Settings", systemImage: "scribble.variable")
            }
        }
    }
}

struct SettingView_Preview: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
struct ColorControl: View {
    var color: Color
    var label: String
    var body: some View {
        HStack { Text(label)
            Spacer()
            Rectangle()
                .fill(color)
                .frame(width: 30, height: 30)
        }
        .padding(.leading)
        .scaledToFill()
        
    }
    
}

struct ToggleControl: View {
    var title: String
    @State var state: Bool
    
    var body: some View {
        Toggle(title, isOn: $state)
        .padding(.leading) }
    
}
