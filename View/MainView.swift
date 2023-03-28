//
//  SwiftUIView.swift
//  
//
//  Created by Song Jihyuk on 2023/03/25.
//

import SwiftUI

class Boolean: ObservableObject {
    @Published var testClicked = false
    @Published var testStart = false
    @Published var testResult = false
    @Published var resultPage = false
    @Published var clickedQuestionmark = false
    @Published var currentIndex = 1
}

struct MainView: View {
    @EnvironmentObject var boolean: Boolean
    
    var body: some View {
        ZStack {
            // Type 예시
            TypeExampleView()
           
            // 유의사항
            NoticeView()
            
            // 문제
            QuestionView()
            
            // 결과
            ResultView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
