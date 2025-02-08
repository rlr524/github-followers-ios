//
//  ContentView.swift
//  GithubFollowers
//
//  Created by Rob Ranf on 2/6/25.
//

import SwiftUI
import SwiftData

struct SearchView: View {
    @State private var searchUser: String = ""
    @FocusState private var focusedField: Bool

    var body: some View {
        NavigationStack {
            VStack {
                TextField("User name", text: $searchUser)
                    .frame(width: 200, height: 50)
                    .focused($focusedField)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled(true)
                    .border(.secondary)

                Text(searchUser)
                    .foregroundStyle(focusedField ? .red : .blue)

                Text("Enter user name")
            }
        }
    }
}

#Preview {
    SearchView()
}
