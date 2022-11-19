//
//  DrawingView.swift
//  OutlineGroupDemo
//
//  Created by VINH HOANG on 19/11/2022.
//

import SwiftUI

struct ShapeView: View {
    let colors = Gradient(colors: [Color.red, Color.yellow, Color.green, Color.blue, Color.purple])
    var body: some View {
            List {
                Spacer()
                elipse
                Spacer()
                rounderRect
                Spacer()
                DrawingView()
                    .frame(width: 400, height: 400)
                MyShape()
                    .fill(AngularGradient(gradient: colors, center: .center))
                    .frame(width: 360, height: 350, alignment: .center)
                Spacer()
            }
    }
    var rounderRect: some View {
        RoundedRectangle(cornerRadius: CGFloat(20))
            .stroke(style: StrokeStyle(lineWidth: 8, dash: [CGFloat(10)]))
            .foregroundColor(.blue)
            .frame(width: 200, height: 100)
    }
    var elipse: some View {
        Ellipse()
            .fill(Color.red)
            .overlay(Ellipse()
            .stroke(Color.blue, lineWidth: 10))
            .frame(width: 250, height: 150)
    }
    
    
}

struct MyShape: Shape {
   
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addQuadCurve(to: CGPoint(x: rect.minX, y: rect.maxY), control: CGPoint(x: rect.midX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addQuadCurve(to: CGPoint(x: rect.maxX, y: rect.maxY), control: CGPoint(x: rect.midX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.closeSubpath()
        return path
        
    }

}

struct ShapeView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}
