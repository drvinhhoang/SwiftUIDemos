//
//  AnimationDemo.swift
//  SwiftUIDemoApp
//
//  Created by VINH HOANG on 19/11/2022.
//

import SwiftUI

struct ImplicitAnimationDemo: View {
    
    @State private var rotation: Double = 0
    @State private var scale: CGFloat = 1
    
    var body: some View {
        Button {
            self.rotation = (self.rotation < 360 ? self.rotation + 60 : 0)
            self.scale = (self.scale < 2.8 ? self.scale + 0.3 : 1)
            
        } label: {
            Text("Click to animate")
                .scaleEffect(scale)
                .rotationEffect(.degrees(rotation))
                .animation(Animation.linear(duration: 10).repeatCount(10, autoreverses: false), value: rotation)
        }

    }
}



struct ImplicitAnimationDemo_Preview: PreviewProvider {
    static var previews: some View {
        ImplicitAnimationDemo()
    }
}
