//
//  SettingView.swift
//  Notes WatchKit Extension
//
//  Created by Jack Pyo Toke on 20/10/21.
//

import SwiftUI

struct SettingView: View {
    
    //MARK: - PROPERTY
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
    
    
    //MARK: - FUNCTION
    func update() {
        lineCount = Int(value)
    }
    
    var body: some View {
        VStack(spacing: 8) {
            // HEADER
            HeaderView(title: "Setting")
            // ACTUAL LINE COUNT
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            // SLIDER
            Slider(value: Binding(
                get: {
                self.value
                }, set: { newValue in
                    self.value = newValue
                    self.update()
                }), in: 1...4, step: 1)
                .accentColor(.accentColor)
        } //: VSTACK
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
