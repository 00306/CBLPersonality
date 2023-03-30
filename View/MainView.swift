//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/25.
//

import SwiftUI

class Boolean: ObservableObject {
    @Published var firstClicked = false
    @Published var testStart = false
    @Published var testResult = false
    @Published var testFinish = false
    @Published var resultPage = false
    @Published var clickedQuestionmark = false
    @Published var answerClicked = false
    @Published var otherTypes = false
    @Published var currentIndex = 1
}

struct MainView: View {
    @EnvironmentObject var boolean: Boolean

    var body: some View {
        ZStack {
            // Type 예시
            TypeExampleView()
            
            // 테스트 시작
            QuestionView()
            
            VStack {
                Spacer()
                
                ButtonView()
            }
            
            // 테스트 종료
            TestFinishView()
            
            // 결과
            ResultView()
            
            
            
            Preview()
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()            
    }
}
