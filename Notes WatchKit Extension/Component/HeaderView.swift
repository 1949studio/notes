//
//  HeaderView.swift
//  Notes WatchKit Extension
//
//  Created by Jack Pyo Toke on 20/10/21.
//

import SwiftUI

struct HeaderView: View {
    //MARK: - PROPERTY
    var title: String = ""
    
    //MARK: - BODY
    
    var body: some View {
        // HEADER
        VStack {
            
            if title != "" {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
            }
            
            HStack {
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
            }
            .foregroundColor(.accentColor)
            
                
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(title: "Credit")
            
            HeaderView()
        }
    }
}
