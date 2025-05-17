import SwiftUI

struct BookRowView: View {
    let books: BookModel
    
    var body: some View {
                HStack{
                    //Cover Image
                    if let url = URL(string: books.cover){
                        AsyncImage(url: url) { Image in
                            Image.resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 200)
                        } placeholder: {
                            ProgressView()
                        }
                    }
                    
                    //Title & Description
                    VStack(alignment: .leading){
                        
                        Text("Release Date \(books.releaseDate)")
                            .font(.footnote)
                            .padding(.bottom)
                        Text("Title: \(books.title)")
                            .font(.headline)
                            .fontWeight(.bold)
                        Text("Description: \(books.description)")
                            .font(.subheadline)
                            .lineLimit(2)
                        Text("Pages \(books.pages)")
                    }
                    
                }//: - Hstack
                .padding(0)

    }
}

#Preview {
    BookRowView(books: BookModel.dummy)
}
