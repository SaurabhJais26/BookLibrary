//
//  ContentView.swift
//  BookLibrary
//
//  Created by Saurabh Jaiswal on 22/05/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = BookViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.filteredBooks) { book in
                NavigationLink(destination: BookDetailView(book: book, viewModel: viewModel)) {
                    BookRow(book: book, isFavorite: viewModel.isFavorite(book))
                }
            }
            .listStyle(.plain)
            .navigationTitle("Book Library")
            .searchable(text: $viewModel.searchText, prompt: "Search books...")
        }
    }
}

struct BookRow: View {
    let book: Book
    let isFavorite: Bool
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(book.title)
                    .font(.headline)
                Text(book.author)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            if isFavorite {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
            }
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    ContentView()
}
