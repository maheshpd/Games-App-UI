//
//  Home.swift
//  Games App UI
//
//  Created by Mahesh Prasad on 13/01/21.
//

import SwiftUI

struct Home: View {
    var body: some View {
        
        VStack{
            
            HStack {
                
                Text("Your Player")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "line.horizontal.3.decrease")
                        .font(.title)
                        .foregroundColor(.white)
                })
                
            }.padding(.horizontal)
            .padding(.top)
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(spacing: 10) {
                    ForEach(data){i in
                        Card(data: i)
                    }
                }.padding(.bottom)
            })
        }.background(LinearGradient(gradient: .init(colors: [Color("Color"), Color("Color1")]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all))
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
