//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/26.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var boolean: Boolean
    @EnvironmentObject var resultViewModel: ResultViewModel
    
    var body: some View {
        GeometryReader {
            let size = $0.size
            
            Color.backgroundBlack
                .ignoresSafeArea()
                .offset(y: boolean.firstClicked ? 0 : -size.height)

    
                VStack {
                    ProgressBarView()
                        .frame(height: 6)
                        .padding(.leading, 60)

                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            ZStack {
                                ForEach(resultViewModel.questions.indices, id: \.self) { index in
                                    Text(resultViewModel.questions[index].question)
                                        .font(.system(size: 40, weight: .bold, design: .rounded))
                                        .foregroundColor(.white)
                                        .opacity((boolean.testStart && boolean.firstClicked) ? 1 : 0)
                                        .opacity(boolean.currentIndex == resultViewModel.questions[index].questionNumber ? 1 : 0)
                                        .offset(y: boolean.currentIndex == resultViewModel.questions[index].questionNumber ? 0 : 100)
                                }
                            }
                            
                            VStack {
                                Image(systemName: "questionmark.circle.fill")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .foregroundColor(.gray)
                                    .frame(width: size.width / 20)
                                    .background {
                                        Circle()
                                            .fill(.white)
                                        
                                    }
                                    .padding(.horizontal)
                                    .opacity(boolean.testStart ? 1 : 0)
                                    .onTapGesture {
                                        withAnimation(.interactiveSpring(response: 0.4, dampingFraction: 0.9, blendDuration: 0.2)) {
                                            boolean.clickedQuestionmark.toggle()
                                        }
                                    }
                            }
                        }
                        
                    }
                    .animation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.5), value: boolean.currentIndex)
                    .padding(.bottom, size.height / 2)
                    .padding(.horizontal)
                    
                
                        // 답
                        ZStack {
                            ForEach($resultViewModel.questions[boolean.currentIndex-1].answers, id: \.self) { $answer in
                                VStack(alignment: .leading) {
                                    VStack(alignment: .leading, spacing: 10) {
                                        Text(answer.answerTitle)
                                            .font(.system(size: 24, weight: .bold))
                                        
                                        Text(answer.answer)
                                            .font(.system(size: 16, weight: .medium))
                                    }
                                    .padding(30)
                                    .padding(.vertical, 40)
                                    
                                }
                                .foregroundColor(answer.isClicked ? .black : .white)
                                .frame(maxWidth: size.width / 1.1, maxHeight: size.height / 9)
                                .background {
                                    RoundedRectangle(cornerRadius: 24)
                                        .foregroundColor(answer.isClicked ? .white : .questionGray)
                                        
                                }
                                .onTapGesture {
                                    withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.5, blendDuration: 0.5)) {
                                        answer.isClicked.toggle()
                                        boolean.answerClicked.toggle()
                                    }
                                    if resultViewModel.questions[boolean.currentIndex-1].answers[0].isClicked && resultViewModel.questions[boolean.currentIndex-1].answers[1].isClicked {
                                        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.5, blendDuration: 0.5)) {
                                            resultViewModel.questions[boolean.currentIndex-1].answers[0].isClicked.toggle()
                                            resultViewModel.questions[boolean.currentIndex-1].answers[1].isClicked.toggle()
                                            answer.isClicked.toggle()
                                            boolean.answerClicked = true
                                        }
                                    }

                                }
                                .offset(y: (boolean.testStart && answer.answerNumber == 2) ? -106 : 0)
                                .opacity(boolean.testStart ? 1 : 0)
                                .opacity(boolean.currentIndex == resultViewModel.questions[boolean.currentIndex-1].questionNumber ? 1 : 0)
                            }
                        
//                        RoundedRectangle(cornerRadius: 16)
//                            .fill(.gray.opacity(boolean.testResult ? 1 : 0.2))
//                            .frame(width: boolean.testResult ? size.width / 1.1 : nil, height: boolean.testResult ? size.height / 1.1 : nil)
//                            .overlay {
//                                VStack {
//                                    Image(systemName: "checkmark.circle")
//                                        .resizable()
//                                        .aspectRatio(contentMode: .fit)
//                                        .foregroundColor(.green)
//                                        .frame(width: size.width / 4)
//                                        .opacity(boolean.testResult ? 1 : 0)
//                                        .padding(.top, -60)
//                                        .padding(.bottom, 40)
//                                        .animation(.interactiveSpring(response: 0.4, dampingFraction: 0.4, blendDuration: 0.3), value: boolean.testResult)
//
//                                    Text("테스트 결과 확인하기")
//                                        .font(.system(size: 20, weight: .bold, design: .rounded))
//                                        .padding(.horizontal, 40)
//                                        .padding()
//                                        .foregroundColor(.white)
//                                        .opacity(boolean.resultPage ? 0 : 1)
//                                        .background {
//                                            ZStack {
//                                                Capsule()
//                                                    .fill(.indigo)
//
//                                                Circle()
//                                                    .frame(width: boolean.resultPage ? 3000 : nil, height: boolean.resultPage ? 3000 : nil)
//                                                    .foregroundColor(boolean.resultPage ? .white : .indigo)
//                                            }
//
//                                        }
//                                        .onTapGesture {
//                                            withAnimation(.linear(duration: 0.4)) {
//                                                boolean.resultPage.toggle()
//                                            }
//                                        }
//                                }
//                            }
//                            .opacity(boolean.testResult ? 1 : 0)
//                            .onTapGesture {
//                                withAnimation(.interactiveSpring(response: 0.3, dampingFraction: 0.7, blendDuration: 0.1)) {
//                                    boolean.testResult.toggle()
//                                }
//                            }
                    }
                }
                .animation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.2), value: boolean.testStart)
        }
    }
}
