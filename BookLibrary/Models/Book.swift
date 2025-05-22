//
//  Book.swift
//  BookLibrary
//
//  Created by Saurabh Jaiswal on 22/05/25.
//

import Foundation

struct Book: Codable, Identifiable {
    let title: String
    let author: String
    let year: Int
    let description: String
    
    var id: String { title } // Using title as unique identifier
} 
