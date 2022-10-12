//
//  StoryView.swift
//  wordplay
//
//  Created by Brody Dickson on 10/6/22.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        Text(writestory())
    }
    func writestory() -> String {
        return "Old Mother Hubbard went to the \(words.noun1) " +
        "to get her \(words.adj1). " +
        "\(words.animal).a bone. " +
        "When she got there, the \(words.noun1). " +
        "was \(words.adj2), " +
        "And so her \(words.adj3). dog had none. " +

        "Jack and Jill went up the \(words.noun2) " +
        "to fetch a \(words.container).of water. " +
        "Jack fell down and broke his \(words.noun3) And Jill came tumbling after. " +

        "There was a girl, and she had a little curl Right in the middle of her \(words.body). " +
        "And when she was \(words.adj4), " +
        "she was very, very \(words.adj5), " +
        "And when she was bad, she was \(words.adj6). " +

        "There was a \(words.adj7). " +
        "woman Who \(words.pastverb). in a shoe. " +
        "She had so many \(words.nouns), she didn't know what to do."
        
        
    }

}

struct StoryView_Previews: PreviewProvider {

    static var previews: some View {
        StoryView(words : Words())

    }

}



