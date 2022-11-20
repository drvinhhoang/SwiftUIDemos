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
                    DisclosureGroup() {
                        NavigationLink("Gesture", destination: GestureSample())
                        NavigationLink("UpdatingCallBackAction", destination: UpdatingCallBackAction())
                        NavigationLink("ComposingGestures", destination: ComposingGestures())
                    } label: {
                        Label("Gestures", systemImage: "hand.raised.fingers.spread.fill")
                    }
                    DisclosureGroup() {
                        NavigationLink("Implicit Animation", destination: ImplicitAnimationDemo())
                        NavigationLink("Explicit Animation", destination: ExplicitAnimationDemo())
                        NavigationLink("AutoStart Animation", destination: AutoStartAnimation())
                        NavigationLink("Transition", destination: TransitionView())
                        
                    } label: {
                        Label("Animation", systemImage: "sparkles")
                    }
                    
                }
            .navigationTitle("Menu")
        }
    }
}

struct FlatLinkStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
    }
}

struct Menu_preview: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
