import Foundation

struct BookModel: Codable {
    
    var index, pages: Int
    var title, releaseDate, description, cover: String
    
    static var dummy: BookModel {
        return BookModel(index: 0, pages: 223, title: "Harry Potter and the Sorcerer's Stone", releaseDate: "Jun 26, 1997", description: "On his birthday, Harry Potter discovers that he is the son of two well-known wizards, from whom he has inherited magical powers. He must attend a famous school of magic and sorcery, where he establishes a friendship with two young men who will become his companions on his adventure. During his first year at Hogwarts, he discovers that a malevolent and powerful wizard named Voldemort is in search of a philosopher's stone that prolongs the life of its owner.",
            cover: "https://raw.githubusercontent.com/fedeperin/potterapi/main/public/images/covers/1.png")
    }
}
