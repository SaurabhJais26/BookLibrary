# Book Library iOS App

A SwiftUI-based iOS application that allows users to browse and manage a collection of books. The app features a clean, modern interface with search functionality and the ability to mark books as favorites.

## Features

- Browse a collection of books with title and author information
- Search books by title and author
- View detailed information about each book
- Mark books as favorites
- Clean and intuitive user interface
- MVVM architecture implementation

## Requirements

- iOS 16.0+
- Xcode 14.0+
- Swift 5.0+

## Setup Instructions

1. Clone the repository:
```bash
git clone https://github.com/yourusername/BookLibrary.git
```

2. Open the project in Xcode:
```bash
cd BookLibrary
open BookLibrary.xcodeproj
```

3. Build and run the project (⌘R)

## Project Structure

```
BookLibrary/
├── Models/
│   └── Book.swift
├── ViewModels/
│   └── BookViewModel.swift
├── Views/
│   └── BookDetailView.swift
├── ContentView.swift
├── BookLibraryApp.swift
└── books.json
```

## Architecture

The project follows the MVVM (Model-View-ViewModel) architecture pattern:

- **Models**: Contains the data structure for books
- **Views**: SwiftUI views for displaying the UI
- **ViewModels**: Manages the business logic and data flow

## Technical Details

- Uses SwiftUI for the user interface
- Implements NavigationStack for navigation
- Uses @StateObject and @ObservedObject for state management
- Implements local JSON data storage
- Uses Swift's Codable protocol for JSON parsing

## Assumptions and Limitations

- The app currently uses a static JSON file for data storage
- Favorites are stored in memory and will be lost when the app is closed
- Search is performed client-side and may not be optimal for very large datasets
- The app is designed for iOS 16.0 and above

## Future Improvements

- Implement persistent storage for favorites using UserDefaults or Core Data
- Add book cover images
- Implement server-side search for larger datasets
- Add sorting and filtering options
- Implement unit tests
- Add support for offline mode

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details

## Contact

Your Name - [@yourtwitter](https://twitter.com/yourtwitter)
Project Link: [https://github.com/yourusername/BookLibrary](https://github.com/yourusername/BookLibrary) 