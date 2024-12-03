//
//  SwiftDataView.swift
//  swift100
//
//  Created by Sean Dooley on 03/12/2024.
//

import SwiftUI
import SwiftData

struct SwiftDataView: View {
    
    @Query var students: [Student]
    
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        NavigationStack {
            List(students) { student in
                Text(student.name)
            }
            .navigationTitle("Classroom")
            .toolbar {
                Button("Add") {
                    let firstNames = ["Ginny", "Harry", "Hermione", "Luna", "Ron"]
                    let lastNames = ["Granger", "Lovegood", "Potter", "Weasley"]

                    let chosenFirstName = firstNames.randomElement()!
                    let chosenLastName = lastNames.randomElement()!

                    // more code to come
                    let student = Student(id: UUID(), name: "\(chosenFirstName) \(chosenLastName)")
                    
                    modelContext.insert(student)
                }
            }
        }
    }
    
    @Model
    class Student {
        var id: UUID
        var name: String

        init(id: UUID, name: String) {
            self.id = id
            self.name = name
        }
    }
}

#Preview {
    SwiftDataView()
}
