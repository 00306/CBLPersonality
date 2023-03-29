//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/29.
//

import SwiftUI

struct ProgressBarView: View {
    @EnvironmentObject var resultViewModel: ResultViewModel
    @EnvironmentObject var boolean: Boolean
    
    var body: some View {
            GeometryReader { proxy in
                ZStack(alignment: .leading) {
                    Capsule()
                        .fill(.gray.opacity(0.2))
                        .frame(width: proxy.size.width / 1.4, height: 6)
                    
                    Capsule()
                        .fill(.white)
                        .frame(width: (proxy.size.width / (1.4 * CGFloat(resultViewModel.questions.count)))*CGFloat(boolean.currentIndex), height: 6)
                        
                }
                
            }
    }
}
