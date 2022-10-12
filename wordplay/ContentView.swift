//
//  ContentView.swift
//  wordplay
//
//  Created by Brody Dickson on 10/6/22.
//

import SwiftUI

struct Words {
    var adj1 = ""
    var adj2 = ""
    var adj3 = ""
    var adj4 = ""
    var adj5 = ""
    var adj6 = ""
    var adj7 = ""
    
    var noun1 = ""
    var noun2 = ""
    var noun3 = ""
    var nouns = ""
    
    //misc
    
    var animal = ""
    var container = ""
    var pastverb = ""
    var body = ""
}

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack{
                Text("PLease enter your words below.")
                HStack {
                    CustomTextField(placeholder:  "adjective", variable: $words.adj1)
                    CustomTextField(placeholder:  "adjective", variable: $words.adj2)
                    CustomTextField(placeholder:  "adjective", variable: $words.adj3)
                }
                HStack{
                    CustomTextField(placeholder:  "adjective", variable: $words.adj4)
                    CustomTextField(placeholder:  "adjective", variable: $words.adj5)
                    CustomTextField(placeholder:  "adjective", variable: $words.adj6)
                }
                HStack{
                    CustomTextField(placeholder:  "adjective", variable: $words.adj7)
                    CustomTextField(placeholder:  "noun", variable: $words.noun1)
                    CustomTextField(placeholder:  "noun", variable: $words.noun2)
                }
                HStack{
                    CustomTextField(placeholder:  "plural noun", variable: $words.nouns)
                    CustomTextField(placeholder:  "animal", variable: $words.animal)
                    CustomTextField(placeholder:  "container", variable: $words.container)
                }
                HStack{
                    CustomTextField(placeholder:  "past verb", variable: $words.pastverb)
                    CustomTextField(placeholder:  "body part", variable: $words.body)
                }
                Spacer()
                NavigationLink("Next", destination: StoryView(words: words))
                
            }
            .navigationTitle("Word Play")
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}

    
