//
//  ContextMenu.swift
//  OutlineGroupDemo
//
//  Created by VINH HOANG on 19/11/2022.
//

import SwiftUI

struct ContextMenuSample: View {
    @State private var foregroundColor: Color = .black
    @State private var backgroundColor: Color = .white
    
    var body: some View {
            Text("Hello")
                .font(.largeTitle)
                .padding()
                .foregroundColor(foregroundColor)
                .background(backgroundColor)
                .contextMenu {
                    Button {
                        self.foregroundColor = .black
                        self.backgroundColor = .white
                    } label: {
                        Text("Normal color")
                        Image(systemName: "paintbrush")
                    }
                    Button {
                        self.foregroundColor = .white
                        self.backgroundColor = .black
                    } label: {
                        Text("Inverted color")
                        Image(systemName: "paintbrush.fill")
                    }

                }
                
        
        
    }
}
