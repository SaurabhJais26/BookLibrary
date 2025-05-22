//
//  BookDetailView.swift
//  BookLibrary
//
//  Created by Saurabh Jaiswal on 22/05/25.
//

import SwiftUI

struct BookDetailView: View {
    let book: Book
    @ObservedObject var viewModel: BookViewModel
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(book.title)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("by \(book.author)")
                    .font(.title2)
                    .foregroundColor(.secondary)
                
                Text("Published: \(String(book.year))")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Divider()
                
                Text("Description")
                    .font(.headline)
                
                Text(book.description)
                    .font(.body)
                
                Spacer()
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    viewModel.toggleFavorite(for: book)
                }) {
                    Image(systemName: viewModel.isFavorite(book) ? "heart.fill" : "heart")
                        .foregroundColor(.red)
                }
            }
        }
    }
} 
