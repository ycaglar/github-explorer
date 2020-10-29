//
//  ContentView.swift
//  GitHub Explorer
//
//  Created by Caglar on 10/28/20.
//

import SwiftUI

/// Entry point to the application where user enters a GitHub username and fetches corresponding content.
struct SearchView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.octocat
                VStack {
                    Text("GitHub Explorer")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                    SearchBar()
                    OctocatView()
                        .offset(y: 150)
                }
            }
            .edgesIgnoringSafeArea(.all)
        }
        .onAppear() {
            //UINavigationBar.appearance().backgroundColor = .red
        }
    }
}

struct SearchBar: View {
    @State var username: String = ""
    var body: some View {
        ZStack(alignment: .trailing) {
            RoundedRectangle(cornerRadius: 100)
                .frame(height: 55)
                .foregroundColor(Color(UIColor.lightGray))
            HStack {
                TextField("username", text: $username)
                    .autocapitalization(.none)
                    .font(.title2)
                NavigationLink(destination: ResultView(username: username)) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.white)
                        .font(Font.system(size: 25).bold())
                }
            }
            .padding(.horizontal, 20)
        }
        .padding()
    }
}

//struct SearchView: View {
//    var body: some View {
//        ResultView(username: "ycaglar")
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .preferredColorScheme(.dark)
        //.preferredColorScheme(.light)
    }
}
