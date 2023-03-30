//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/30.
//

import SwiftUI

struct TestFinishView: View {
    @EnvironmentObject var boolean: Boolean
    
    var body: some View {
    
        GeometryReader { proxy in
            Color.backgroundBlack
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Spacer()
                    VStack {
                        Spacer()
                        
                        Image("checkmark")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: proxy.size.width / 3.6)
                            .padding(.bottom, proxy.size.height / 15.6)
                        
                        Text("결과가 나왔어요")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.offWhite)
                            .offset(y: boolean.testFinish ? 0 : proxy.size.height)
                        
                        Spacer()
                    }
                    .opacity(boolean.testFinish ? 1 : 0)
                    .animation(.interactiveSpring(response: 0.7, dampingFraction: 0.8, blendDuration: 0.8).delay(1.5), value: boolean.testFinish)
                    .onChange(of: boolean.testFinish) { _ in
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            withAnimation(.interactiveSpring(response: 0.7, dampingFraction: 0.8, blendDuration: 0.2)) {
                                boolean.resultPage.toggle()
                            }
                        }
                        
                    }
                    Spacer()
                }
            }
        }
        .opacity(boolean.testFinish ? 1 : 0)
    }
}
