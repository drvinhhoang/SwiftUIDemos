//
//  Gestures.swift
//  SwiftUIDemoApp
//
//  Created by VINH HOANG on 19/11/2022.
//

import SwiftUI

struct GestureSample: View {
    let tap = TapGesture(count: 2)
        .onEnded { _ in
            print("Tapped")
        }
    
    let longPress =  LongPressGesture()
        .onEnded { _ in
            print("Long pressed")
        }
    
  
    
    @State private var magnification: CGFloat = 1.0
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Tap gesture")
                    Image(systemName: "hand.point.right.fill")
                        .resizable()
                        .scaledToFit()
                }
                .frame(minHeight: 200)
                .background(Color.green)
                .gesture(tap)
                
                HStack {
                    Text("magnification gesture")
                    Image(systemName: "hand.point.right.fill")
                        .resizable()
                        .font(.largeTitle)
                        .scaleEffect(magnification)
                }
                .background(Color.cyan)
                .frame(minHeight: 200)
                .gesture(MagnificationGesture(minimumScaleDelta: 0)
                    .onChanged({ value in
                        self.magnification = value
                    })
                    .onEnded { _ in
                        print("Gesture Ended")
                    })
                .frame(minHeight: 200)
                
                HStack {
                    Text("Long press gesture")
                    Image(systemName: "hand.point.right")
                        .resizable()
                        .scaledToFit()

                }
                .frame(minHeight: 200)
                .background(Color.blue)
                .gesture(longPress)
               
                Spacer()
            }
        }
        .foregroundColor(.white)
    }
}
