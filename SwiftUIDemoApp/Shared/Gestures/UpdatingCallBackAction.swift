//
//  UpdatingCallBackAction.swift
//  SwiftUIDemoApp
//
//  Created by VINH HOANG on 19/11/2022.
//

import SwiftUI

struct UpdatingCallBackAction: View {
    
    @GestureState private var offset: CGSize = .zero
    
    var body: some View {
            let drag = DragGesture()
            .updating($offset) { drageValue, state, transaction in
                state = drageValue.translation
            }
        
        return Image(systemName: "hand.point.right.fill")
            .font(.largeTitle)
            .offset(offset)
            .gesture(drag)
    }
}
