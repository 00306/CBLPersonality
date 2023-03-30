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
    @State private var clickReact = false
    
    var body: some View {
        GeometryReader {
            let size = $0.size
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    ZStack {
                        HStack {
                            ZStack {
                                Image("arrow.black")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(clickReact ? 1 : 0)
                                    .frame(width: size.width / 15)
                                
                                Image("arrow")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(clickReact ? 0 : 1)
                                    .frame(width: size.width / 15)
                            }
                            
                        Text("다음")
                            .font(.system(size: 18, weight: .bold, design: .rounded))
                            .foregroundColor(clickReact ? .black : .white)
                            .opacity(boolean.firstClicked ? 1 : 0)
                    }
                        .frame(width: size.width / 1.14, height: size.height / 12.5)
                        .background {
                            Capsule()
                                .foregroundColor(clickReact ? .white : .backgroundBlack)
                                .background {
                                    Capsule()
                                        .stroke(.white, lineWidth: 3)
                                }
                        }
                        .onTapGesture {
                            resultViewModel.caculateValue(selectedAnswer: resultViewModel.selectedValue)
                            
                            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.7, blendDuration: 0.9)) {
                                boolean.testStart.toggle()
                                boolean.answerClicked.toggle()
                                
                                withAnimation(.interactiveSpring(response: 0.3, dampingFraction: 0.7, blendDuration: 0.2)) {
                                    clickReact.toggle()
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                        withAnimation(.interactiveSpring(response: 0.3, dampingFraction: 1, blendDuration: 0.2)) {
                                            resultViewModel.deriveResult()
                                            clickReact.toggle()
                                        }
                                    }
                                }
                            }
                            
                            if boolean.currentIndex < resultViewModel.questions.count {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.2)) {
                                        boolean.currentIndex += 1
                                    }
                                    
                                }
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                    withAnimation(.interactiveSpring(response: 0.7, dampingFraction: 0.7, blendDuration: 0.9)) {
                                        
                                        boolean.testStart.toggle()
                                    }
                                }
                                
                            } else {
                                withAnimation(.interactiveSpring(response: 0.7, dampingFraction: 0.7, blendDuration: 0.9)) {
                                    boolean.testFinish.toggle()
                                }
                                
                            }
                        }
                        .opacity(boolean.testFinish ? 0 : 1)
                        .disabled(!boolean.answerClicked)
                        
                        HStack {
                            ZStack {
                                Image("arrow.black")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(clickReact ? 1 : 0)
                                    .frame(width: size.width / 15)
                                
                                Image("arrow")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .opacity(clickReact ? 0 : 1)
                                    .frame(width: size.width / 15)
                            }
                            
                            Text("알아보러 가기")
                                .font(.system(size: 18, weight: .medium, design: .rounded))
                                .foregroundColor(.white)
                        }
                        .frame(width: size.width / 1.14, height: size.height / 12.5)
                        .background {
                                    Capsule()
                                        .foregroundColor(clickReact ? .white : .backgroundBlack)
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
                            withAnimation(.interactiveSpring(response: 0.3, dampingFraction: 1, blendDuration: 0.2)) {
                                clickReact.toggle()
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                    withAnimation(.interactiveSpring(response: 0.3, dampingFraction: 1, blendDuration: 0.2)) {
                                        clickReact.toggle()
                                    }
                                }
                            }
                            
                            }
                        .opacity(boolean.firstClicked ? 0 : 1)
                    }
                    
                    Spacer()
                }
            }
        }
    }
}
