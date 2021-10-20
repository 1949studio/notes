//
//  Note.swift
//  Notes WatchKit Extension
//
//  Created by Jack Pyo Toke on 20/10/21.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
