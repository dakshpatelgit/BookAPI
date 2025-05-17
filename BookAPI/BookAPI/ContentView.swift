import SwiftUI

struct ContentView: View {
    var bookViewModel = BookViewModel()
    
    var body: some View {
        NavigationStack{
            List(bookViewModel.books, id: \.index){ book in
                BookRowView(books: book)
            }
            .navigationTitle("Harry Potter Books")
        }//Nstack
        .task {
            await bookViewModel.fetchBooks()
        }
    }
}

#Preview {
    ContentView()
}
