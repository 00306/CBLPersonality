//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/30.
//

import SwiftUI

struct QuestionmarkView: View {
    @EnvironmentObject var boolean: Boolean
    
    var body: some View {
        GeometryReader {
            let size = $0.size
            
            Color.black
                .opacity(0.3)
                .ignoresSafeArea()
                .onTapGesture {
                    withAnimation(.interactiveSpring(response: 1.1, dampingFraction: 0.8, blendDuration: 0.2)) {
                        boolean.clickedQuestionmark.toggle()
                    }
                }
                
            
            HStack {
                Spacer()
                
                Text("White")
                    .foregroundColor(.white)
                    .frame(width: size.width / 1.15, height: 200)
                    .background {
                        VStack(alignment: .trailing, spacing: -7) {
                            Image("arrowUp")
                                .padding(.trailing)
                            
                            BlurView(style: .systemUltraThinMaterialDark)
                                .cornerRadius(12)
                                .opacity(0.98)
                        }
                    }
            }
            .padding(.trailing, size.width / 14)
            .padding(.top, size.height / 5.6)
        }
        .opacity(boolean.clickedQuestionmark ? 1 : 0)
    }
}

struct BlurView: UIViewRepresentable {
    let style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> some UIView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
