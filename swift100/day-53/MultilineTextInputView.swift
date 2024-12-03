//
//  MultilineTextInputView.swift
//  swift100
//
//  Created by Sean Dooley on 03/12/2024.
//

import SwiftUI

struct MultilineTextInputView: View {
    @AppStorage("notes") private var notes = ""

    var body: some View {
        // Text area
        Form {
            TextEditor(text: $notes)
                .navigationTitle("Notes")
                .padding()
        }
        
        // Expanding TextField
        Form {
            TextField("Enter your text", text: $notes, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .navigationTitle("Notes")
                .padding()
        }
    }
}

#Preview {
    MultilineTextInputView()
}
