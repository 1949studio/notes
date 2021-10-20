//
//  DetailView.swift
//  Notes WatchKit Extension
//
//  Created by Jack Pyo Toke on 20/10/21.
//

import SwiftUI

struct DetailView: View {
    //MARK: - PROPERTY
    let note: Note
    let count: Int
    let index: Int
    
    @State private var isCreditsPresented: Bool = false
    @State private var isSettingPresented: Bool = false
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 3) {
         
            HeaderView()
            
            // CONTENT
            Spacer()
            
            ScrollView(.vertical) {
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            
            Spacer()
            
            // FOOTER
            HStack(alignment: .center) {
                Image(systemName: "gear")
                    .imageScale(.large)
                    .onTapGesture {
                        isSettingPresented.toggle()
                    }
                    .sheet(isPresented: $isSettingPresented) {
                        SettingView()
                    }
                
                Spacer()
                
                Text("\(count) / \(index + 1)")
                
                Spacer()
                
                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        isCreditsPresented.toggle()
                    }
                    .sheet(isPresented: $isCreditsPresented) {
                        CreditView()
                    }
            }
            .foregroundColor(.secondary)
            .padding(.bottom, 10)
            
        } //: VSTACK
        .padding(3)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var sampleData : Note = Note(id: UUID(), text: "Text and drive")
    
    static var previews: some View {
        DetailView(note: sampleData, count: 1, index: 0)
    }
}
