//
//  Transition.swift
//  SwiftUIDemoApp
//
//  Created by VINH HOANG on 19/11/2022.
//

import SwiftUI

struct TransitionView : View {
    
    @State private var isButtonVisible: Bool = true
    var body: some View {
        VStack {
            Toggle(isOn:$isButtonVisible.animation( .linear(duration: 2))) {
                Text("Show/Hide Button")
            }
            .padding()
            if isButtonVisible {
                Button(action: {}) {
                    Text("Normal transition")
                }
                .font(.largeTitle)
                .transition(.scale)
            }
            Spacer()
            if isButtonVisible {
                Button(action: {}) {
                    Text("Combining Transitions")
                }
                .font(.largeTitle)
                .transition(AnyTransition.opacity.combined(with: .move(edge: .top)))
            }
            Spacer()
            if isButtonVisible {
                Button(action: {}) {
                    Text("Asymmetrical Transitions")
                }
                .font(.largeTitle)
                .transition(.asymmetric(insertion: .opacity, removal: .slide))
            }
            Spacer()
        }
    }
}
