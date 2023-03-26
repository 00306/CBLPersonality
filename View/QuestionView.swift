//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/26.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var boolean: Boolean
    
    var body: some View {
        GeometryReader {
            let size = $0.size
            ZStack(alignment: .top) {
                Color.white.opacity(boolean.testStart ? 1 : 0)
                    .ignoresSafeArea()
                 
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Spacer()
                            
                            Text("CBL Personality")
                                .font(.system(size: boolean.testStart ? 20 : 30, weight: .bold, design: .rounded))
                                .foregroundColor(.white)
                                .animation(.interactiveSpring(response: 0.7, dampingFraction: 1.0, blendDuration: 0.2).delay(1), value: boolean.testStart)
                                .offset(x: boolean.testStart ? 100 : 0, y: boolean.testStart ? -30 : 0)
                                .opacity(boolean.testStart ? 1 : 0)
                                .padding(.top, boolean.testStart ? 20 : 200)
                            
                            Spacer()
                        }
                        
                        Text("Question \(boolean.currentIndex)")
                            .font(.system(size: 40, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .opacity(boolean.testStart ? 1 : 0)
                            .padding(.vertical, 50)
                        
                        ZStack {
                            ForEach(questions.indices, id: \.self) { index in
                                Text(questions[index].question)
                                    .font(.system(size: 40, weight: .bold, design: .rounded))
                                    .foregroundColor(.white)
                                    .opacity(boolean.testStart ? 1 : 0)
                                    .opacity(boolean.currentIndex == questions[index].questionNumber ? 1 : 0)
                            }
                        }
                        
                        Spacer()
                    }
                    .padding()
                    .frame(width: size.width, height: boolean.testStart ? size.height * 2 / 3 : 0)
                    .background {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(.indigo)
                            .opacity(boolean.testStart ? 1 : 0)
                            .ignoresSafeArea()
                            .onTapGesture {
                                withAnimation(.interactiveSpring(response: 0.7, dampingFraction: 1, blendDuration: 0.2)) {
                                    boolean.testStart.toggle()
                                }
                                boolean.testStart.toggle()
                            }
                    }
                    
                    ZStack {
                        // 답
                        VStack(spacing: boolean.testResult ? 0 : 4) {
                            ForEach(questions[boolean.currentIndex-1].answer, id: \.self) { answer in
                                VStack(alignment: .leading) {
                                    RoundedRectangle(cornerRadius: 16)
                                        .fill(.gray.opacity(boolean.testResult ? 1 : 0.2))
                                        .frame(maxWidth: size.width / 1.1, maxHeight: 500)
                                        .overlay {
                                            HStack {
                                                Spacer()
                                                
                                                Text(answer)
                                                    .font(.system(size: 13, weight: .bold, design: .rounded))
                                                    .foregroundColor(.black)
                                                    .minimumScaleFactor(0.01)
                                                    .padding()
                                                    .scaleEffect(boolean.testResult ? 0.01 : 1)
                                                    .opacity(boolean.testResult ? 0 : 1)
                                                
                                                Spacer()
                                            }
                                        }
                                        .offset(y: boolean.testStart ? 0 : size.height * 1.2)
                                        .animation(.interactiveSpring(response: 0.4, dampingFraction: 1, blendDuration: 0.2).delay(1), value: boolean.testStart)
                                }
                                .onTapGesture {
                                    if boolean.currentIndex < questions.count {
                                        withAnimation(.interactiveSpring(response: 0.7, dampingFraction: 1, blendDuration: 0.2)) {
                                            boolean.currentIndex += 1
                                        }
                                    } else {
                                        withAnimation(.interactiveSpring(response: 0.3, dampingFraction: 0.7, blendDuration: 0.1)) {
                                            boolean.testResult.toggle()
                                        }
                                    }
                                }
                            }
                        }
                        
                        RoundedRectangle(cornerRadius: 16)
                            .fill(.gray.opacity(boolean.testResult ? 1 : 0.2))
                            .frame(width: boolean.testResult ? size.width / 1.1 : nil, height: boolean.testResult ? size.height / 2.3 : nil)
                            .overlay {
                                VStack {
                                    Image(systemName: "checkmark.circle")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.green)
                                        .frame(width: size.width / 4)
                                        .opacity(boolean.testResult ? 1 : 0)
                                        .padding(.top, -60)
                                        .padding(.bottom, 40)
                                        .animation(.interactiveSpring(response: 0.4, dampingFraction: 0.4, blendDuration: 0.3), value: boolean.testResult)
                                    
                                    Text("테스트 결과 확인하기")
                                        .font(.system(size: 20, weight: .bold, design: .rounded))
                                        .padding(.horizontal, 40)
                                        .padding()
                                        .foregroundColor(.white)
                                        .opacity(boolean.resultPage ? 0 : 1)
                                        .background {
                                            ZStack {
                                                Capsule()
                                                    .fill(.indigo)
                                                
                                                Circle()
                                                    .frame(width: boolean.resultPage ? 3000 : nil, height: boolean.resultPage ? 3000 : nil)
                                                    .foregroundColor(boolean.resultPage ? .white : .indigo)
                                            }
                                            
                                        }
                                        .onTapGesture {
                                            withAnimation(.linear(duration: 0.4)) {
                                                boolean.resultPage.toggle()
                                            }
                                        }
                                }
                            }
                            .opacity(boolean.testResult ? 1 : 0)
                            .onTapGesture {
                                withAnimation(.interactiveSpring(response: 0.3, dampingFraction: 0.7, blendDuration: 0.1)) {
                                    boolean.testResult.toggle()
                                }
                            }
                    }
                }
            }
        }
    }
}
