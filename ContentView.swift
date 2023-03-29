import SwiftUI

struct ContentView: View {
    var body: some View {
       MainView()
//            .onAppear {
//                for fontFamily in UIFont.familyNames {
//                    print("----\(fontFamily)")
//                    for fontName in UIFont.fontNames(forFamilyName: fontFamily) {
//                        print(fontName)
//                    }
//                }
//            }
            .environmentObject(Boolean())
            .environmentObject(ResultViewModel())
    }
}
