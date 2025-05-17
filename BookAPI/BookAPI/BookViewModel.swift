import Foundation

@MainActor
@Observable final class BookViewModel {
    var books: [BookModel] = []
    
    func fetchBooks() async {
        guard let url = URL(string: "https://potterapi-fedeperin.vercel.app/en/books") else {
            print("Invalid URL")
            return
        }
        do {
            let (data,_) = try await URLSession.shared.data(from: url)
            let decodedResponse = try JSONDecoder().decode([BookModel].self, from: data)
            books = decodedResponse
            print(books)
        } catch {
            print("Fetching Failed...")
        }
    }//: - Function
}//: - Class
