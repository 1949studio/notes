//
//  CreditView.swift
//  Notes WatchKit Extension
//
//  Created by Jack Pyo Toke on 20/10/21.
//

import SwiftUI

struct CreditView: View {
    //MARK: - PROPERTY
    var title: String = ""
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 3){
            // PROFILE NAME
        Image("developer-no1")
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            // HEADER
            HeaderView(title: "Credits")
            // CONTENT
            Text("Jack Toke")
                .fontWeight(.bold)
                .foregroundColor(.primary)

            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
   
        }
    }
}

struct CreditView_Previews: PreviewProvider {
    static var previews: some View {
        CreditView()
    }
}
