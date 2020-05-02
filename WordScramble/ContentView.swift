//
//  ContentView.swift
//  WordScramble
//
//  Created by Chris Wu on 5/2/20.
//  Copyright © 2020 Chris Wu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    var body: some View {
        NavigationView {
            VStack {
                TextField("Enter your word", text: $newWord, onCommit: addNewWord)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .padding()
                
                List(usedWords, id: \.self) { indexer in
                    Image(systemName: "\(indexer.count).circle")
                    Text(indexer)
                }
            }
        .navigationBarTitle(rootWord)
        }
    }
    
    func addNewWord() {
        let answer =
            newWord.lowercased()
                .trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard answer.count > 0 else {
            return
        }
        
        usedWords.insert(answer, at: 0)
        newWord = ""
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
