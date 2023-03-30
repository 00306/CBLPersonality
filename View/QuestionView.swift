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
                        .frame(height: size.height / 168)
                        .padding(.top, size.height / 25.5)

                    VStack(alignment: .leading, spacing: 0) {
                        HStack(alignment: .top) {
                            ZStack(alignment: .top) {
                                ForEach(resultViewModel.questions.indices, id: \.self) { index in
                                    HStack {
                                        Text(resultViewModel.questions[index].question)
                                            .font(.system(size: 40, weight: .regular))
                                            .foregroundColor(.offWhite)
                                            .multilineTextAlignment(.leading)
                                            .opacity((boolean.testStart && boolean.firstClicked) ? 1 : 0)
                                            .opacity(boolean.currentIndex == resultViewModel.questions[index].questionNumber ? 1 : 0)
                                            .offset(y: boolean.currentIndex == resultViewModel.questions[index].questionNumber ? 0 : 100)
                                        
                                        Spacer()
                                    }
                                }
                                
                            }
                            .padding(.leading, size.width / 10.5)
                            
                            
                            VStack(alignment: .trailing) {
                                HStack {
                                    Image(systemName: "questionmark.circle.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.gray)
                                        .frame(width: size.width / 20)
                                        .background {
                                            Circle()
                                                .fill(.white)
                                            
                                        }
                                        .padding(.top, 10)
                                        .padding(.leading, size.width / 8.3)
                                        .padding(.trailing, size.width / 9.3)
                                        .opacity(boolean.testStart ? 1 : 0)
                                        .onTapGesture {
                                            withAnimation(.interactiveSpring(response: 0.4, dampingFraction: 0.9, blendDuration: 0.2)) {
                                                boolean.clickedQuestionmark.toggle()
                                            }
                                        }
                                }
                            }
                        }
                        .frame(height: size.height / 5)
                        .padding(.top, size.height / 14.3)
                        .padding(.bottom, size.height / 4.2)
                        
                        
                        Spacer()
                    }
                    .animation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.5), value: boolean.currentIndex)
                    
                    
                
                        // 답
                        ZStack {
                            ForEach($resultViewModel.questions[boolean.currentIndex-1].answers, id: \.self) { $answer in
                                VStack(alignment: .leading) {
                                    HStack(alignment: .bottom) {
                                        VStack(alignment: .leading, spacing: 12) {
                                            
                                            Text(answer.answerTitle)
                                                .font(.system(size: 24, weight: .bold))
                                                .padding(.top, 16)
                                            
                                            Text(answer.answer)
                                                .font(.system(size: 14, weight: .regular))
                                                .padding(.bottom, 18)
                                            
                                        }
                                        .padding(.leading, 26)
                                        .padding(.trailing, 31)
                                        
                                        Spacer()
                                    }
                                    .frame(maxWidth: size.width / 1.14)
                                    .background {
                                        RoundedRectangle(cornerRadius: 24)
                                            .foregroundColor(answer.isClicked ? .offWhite : .questionGray)
                                            
                                    }
                                }
                                .offset(y: (boolean.testStart && answer.answerNumber == 2) ? -110 : 0)
                                .foregroundColor(answer.isClicked ? .black : .offWhite)
                                .onTapGesture {
                                    resultViewModel.insertValue(value: resultViewModel.questions[boolean.currentIndex-1].values[resultViewModel.questions[boolean.currentIndex-1].answers.firstIndex(of: answer)!])
                                    
                                    withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.5)) {
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
                                .opacity(boolean.testStart ? 1 : 0)
                                .opacity(boolean.currentIndex == resultViewModel.questions[boolean.currentIndex-1].questionNumber ? 1 : 0)
                            }
                            .padding(.bottom, size.height / 6)
                    }
                }
                .animation(.interactiveSpring(response: 0.6, dampingFraction: 0.8, blendDuration: 0.2), value: boolean.testStart)
        }
    }
}
