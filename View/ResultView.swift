//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/25.
//

import SwiftUI

struct ResultView: View {
    @EnvironmentObject var boolean: Boolean
    @EnvironmentObject var resultViewModel: ResultViewModel
    
    
    var body: some View {
        GeometryReader {
            let size = $0.size
            
            ZStack {
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("당신의 CBL 유형은?")
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                            .foregroundColor(.black)
                            .padding(.top, 60)
                            .opacity(boolean.resultPage ? 1 : 0)
                            .animation(.interactiveSpring(response: 1.1, dampingFraction: 0.8, blendDuration: 0.2).delay(1), value: boolean.resultPage)
                        
                        
                        Text(resultViewModel.memberType.name)
                            .font(.system(size: 40, weight: .bold, design: .rounded))
                            .foregroundColor(.black)
                            .padding()
                            .opacity(boolean.resultPage ? 1 : 0)
                            .animation(.interactiveSpring(response: 1.1, dampingFraction: 0.8, blendDuration: 0.2).delay(2), value: boolean.resultPage)
                        
                        Image(resultViewModel.memberType.memoji)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .opacity(boolean.resultPage ? 1 : 0)
                            .animation(.interactiveSpring(response: 1.1, dampingFraction: 0.8, blendDuration: 0.2).delay(2), value: boolean.resultPage)
                            .frame(width: size.width / 2)
                        
                        Text("\(resultViewModel.memberType.adaptability)")
                            .font(.system(size: 14, weight: .bold, design: .rounded))
                            .opacity(boolean.resultPage ? 1 : 0)
                            .animation(.interactiveSpring(response: 1.1, dampingFraction: 0.8, blendDuration: 0.2).delay(2.3), value: boolean.resultPage)
                        
                        Text(resultViewModel.memberType.hashtags.description)
                            .font(.system(size: 14, weight: .bold, design: .rounded))
                            .opacity(boolean.resultPage ? 1 : 0)
                            .animation(.interactiveSpring(response: 1.1, dampingFraction: 0.8, blendDuration: 0.2).delay(2.3), value: boolean.resultPage)
                        
                        RoundedRectangle(cornerRadius: 24)
                            .foregroundColor(.gray.opacity(0.2))
                            .opacity(boolean.resultPage ? 1 : 0)
                            .animation(.interactiveSpring(response: 1.1, dampingFraction: 0.8, blendDuration: 0.2).delay(2.3), value: boolean.resultPage)
                    }
                    
                    Spacer()
                }
            }
        }
    }
}
