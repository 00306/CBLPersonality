//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/30.
//

import SwiftUI

struct QuestionmarkView: View {
    @EnvironmentObject var boolean: Boolean
    @EnvironmentObject var resultViewModel: ResultViewModel
    
    var body: some View {
        GeometryReader {
            let size = $0.size
            
            Color.black
                .opacity(0.2)
                .ignoresSafeArea()
                .onTapGesture {
                    withAnimation(.interactiveSpring(response: 1.1, dampingFraction: 0.8, blendDuration: 0.2)) {
                        boolean.clickedQuestionmark.toggle()
                    }
                }
                
            HStack {
                Spacer()
                
                Text(resultViewModel.questions[boolean.currentIndex-1].toolTip)
                    .font(.system(size: 16))
                    .foregroundColor(.white)
                    .frame(width: size.width / 1.38)
                    .padding(.vertical, size.height / 29.4)
                    .padding(.horizontal, size.width / 13.9)
                    
                    .background {
                        VStack(alignment: .trailing, spacing: -7) {
                            Image("arrowUp")
                                .padding(.trailing)
                            
                            BlurView(style: .systemUltraThinMaterialDark)
                                .opacity(0.9)
                                .cornerRadius(20)
                        }
                    }
            }
            .padding(.horizontal, size.width / 14)
            .padding(.top, size.height / 5.6)
        }
        .opacity(boolean.clickedQuestionmark ? 1 : 0)
    }
}

struct BlurView: UIViewRepresentable {
    let style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> some UIView {
        let blurView = UIVisualEffectView(effect: nil)
        blurView.backgroundColor = .clear
        let blurLayer = blurView.layer
        let blurFilter = CIFilter(name: "CIGaussianBlur")!
        blurFilter.setValue(30, forKey: kCIInputRadiusKey)
        blurLayer.filters = [blurFilter]
        blurView.effect = UIBlurEffect(style: style)
        blurView.alpha = 1.2
               
        return blurView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
