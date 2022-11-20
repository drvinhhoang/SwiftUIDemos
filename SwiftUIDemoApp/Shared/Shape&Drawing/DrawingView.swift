//
//  DrawingView.swift
//  OutlineGroupDemo
//
//  Created by VINH HOANG on 19/11/2022.
//

import SwiftUI

struct DrawingView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 10, y: 10))
            path.addLine(to: CGPoint(x: 10, y: 350))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.closeSubpath()
            
        }
        .fill(Color.green)
    }
}

struct DrawingView_Preview: PreviewProvider {
    static var previews: some View {
        DrawingView()
    }
}
