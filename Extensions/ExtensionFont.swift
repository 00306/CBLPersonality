import SwiftUI
import UIKit

extension Font {
    static func registerFonts() {
        self.register(name: "Chopsic", withExtension: "otf")
        
    }
    
    static func register(name: String, withExtension: String) {
        guard let url = Bundle.main.url(forResource: name, withExtension: withExtension),CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
        else { return print("failed to regist \(name) font") }
    }
}
