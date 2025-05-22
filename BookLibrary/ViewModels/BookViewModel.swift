//
//  BookViewModel.swift
//  BookLibrary
//
//  Created by Saurabh Jaiswal on 22/05/25.
//

import Foundation

class BookViewModel: ObservableObject {
    @Published var books: [Book] = []
    @Published var searchText: String = ""
    @Published var favoriteBooks: Set<String> = []
    
    var filteredBooks: [Book] {
        if searchText.isEmpty {
            return books
        } else {
            return books.filter { book in
                 if let searchYear = Int(searchText) {
                     return book.year == searchYear
                }
                return book.title.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    init() {
        loadBooks()
    }
    
    private func loadBooks() {
        guard let url = Bundle.main.url(forResource: "books", withExtension: "json"),
              let data = try? Data(contentsOf: url) else {
            print("Error loading books.json")
            return
        }
        
        do {
            books = try JSONDecoder().decode([Book].self, from: data)
        } catch {
            print("Error decoding books: \(error)")
        }
    }
    
    func toggleFavorite(for book: Book) {
        if favoriteBooks.contains(book.id) {
            favoriteBooks.remove(book.id)
        } else {
            favoriteBooks.insert(book.id)
        }
    }
    
    func isFavorite(_ book: Book) -> Bool {
        favoriteBooks.contains(book.id)
    }
} 
