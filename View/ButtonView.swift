//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/26.
//

import SwiftUI

struct ButtonView: View {
    @EnvironmentObject var boolean: Boolean
    @EnvironmentObject var resultViewModel: ResultViewModel
    
    var body: some View {
        GeometryReader {
            let size = $0.size
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    ZStack {
                        HStack {
                            Image("arrow")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: size.width / 15)
                            
                        Text("다음")
                            .font(.system(size: 16, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .opacity(boolean.firstClicked ? 1 : 0)
                    }
                        .frame(width: size.width / 1.2, height: size.height / 12)
                        .background {
                            Capsule()
                                .foregroundColor(.backgroundBlack)
                                .background {
                                    Capsule()
                                        .stroke(.white, lineWidth: 3)
                                }
                        }
                        .onTapGesture {
                            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.7, blendDuration: 0.9)) {
                                boolean.testStart.toggle()
                                boolean.answerClicked.toggle()
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.7, blendDuration: 0.9)) {
                                        boolean.currentIndex += 1
                                    }
                                    
                                }
                            }
                            if boolean.currentIndex < resultViewModel.questions.count {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                    withAnimation(.interactiveSpring(response: 0.7, dampingFraction: 0.7, blendDuration: 0.9)) {
                                        
                                        boolean.testStart.toggle()
                                    }
                                }
                                
                            } else {
                                
                                boolean.testResult.toggle()
                                
                            }
                        }
                        .disabled(!boolean.answerClicked)
                        
                        HStack {
                            Image("arrow")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: size.width / 15)
                            
                            Text("알아보러 가기")
                                .font(.system(size: 16, weight: .medium, design: .rounded))
                                .foregroundColor(.white)
                        }
                            .frame(width: size.width / 1.2, height: size.height / 12)
                            .background {
                                    Capsule()
                                    .foregroundColor(.backgroundBlack)
                                        .background {
                                        Capsule()
                                            .stroke(.white, lineWidth: 3)
                                    }
                            }
                            .onTapGesture {
                                
                                withAnimation(.interactiveSpring(response: 0.8, dampingFraction: 0.9, blendDuration: 0.2)) {
                                    boolean.firstClicked = true
                                    boolean.testStart.toggle()
                                }
                            }
                            .opacity(boolean.firstClicked ? 0 : 1)
                    }
                    
                    Spacer()
                }
            }
            .padding(.top)
        }
    }
}
