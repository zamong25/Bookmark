//
//  ContentView.swift
//  Bookmark
//
//  Created by PCW on 2021/05/07.
//

import SwiftUI

struct ContentView: View {
    
    @State var isFav = false
    
    var body: some View {
        NavigationView{
            VStack{
                Toggle(isOn: $isFav){
                    Text("Show Favorites only")
                }
                List{
                    HStack{
                        Text("Dogs")
                        Spacer()
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                if isFav == false{
                    HStack{
                        Text("Dogs")
                        Spacer()
                        Image(systemName: "star.fill")
                    }
                    }else {
                        EmptyView()
                    }
                    HStack{
                        Text("Dogs")
                        Spacer()
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                    HStack{
                        Text("Dogs")
                        Spacer()
                        Image(systemName: "star.fill")
                    }
                }
            }
        }.font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
