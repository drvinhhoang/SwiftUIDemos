//
//  AutoStartAnimation.swift
//  SwiftUIDemoApp
//
//  Created by VINH HOANG on 19/11/2022.
//

import SwiftUI

struct AutoStartAnimation: View {
    @State private var rotation: Double = 0
    @State private var isSpinning: Bool = true
    
    var body: some View {
        ZStack {
            Circle() .stroke(lineWidth: 2)
                .foregroundColor(Color.blue)
                .frame(width: 360, height: 360)
            Image(systemName: "forward.fill")
                .font(.largeTitle)
                .offset(y: -180)
                .rotationEffect(.degrees(rotation))
                .animation(Animation.linear(duration: 5)
                .repeatForever(autoreverses: false), value: rotation)
        }
        .onAppear() {
            self.isSpinning.toggle()
            rotation = isSpinning ? 0 : 360
        }
    }
}

struct AutoStartAnimation_Preview: PreviewProvider {
    static var previews: some View {
        AutoStartAnimation()
    }

}
