//
//  Detail.swift
//  Games App UI
//
//  Created by Mahesh Prasad on 13/01/21.
//

import SwiftUI

struct Detail: View {
    
    var data: Player
    
    @Environment(\.presentationMode) var present
    
    var body: some View {
        
        VStack {
            
            ZStack {
                
                HStack {
                    
                    Button(action: {
                        //pop the view when button pressed
                        self.present.wrappedValue.dismiss()
                    }, label: {
                        
                        Image(systemName: "chevron.left")
                            .font(.title)
                            .foregroundColor(.white)
                    })
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "circle.grid.2x2.fill")
                            .font(.title)
                            .foregroundColor(.white)
                    })
                }
                
                
                Text("Overview")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
            }.padding()
            
            Image(self.data.image)
                .resizable()
                .frame(width: UIScreen.main.bounds.width - 30, height: UIScreen.main.bounds.height / 2)
                .background(Color.white.opacity(0.2))
                .cornerRadius(30)
            
            Text(self.data.name)
                .fontWeight(.bold)
                .font(.system(size: 55))
                .foregroundColor(.white)
                .padding(.top)
            
            Text("Super smash bros ultimate cillagers from the animal crossing series.This troops fight most effictively in large group.")
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .padding(.top)
            
            HStack(spacing: 20) {
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Add Favourite")
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: (UIScreen.main.bounds.width / 2) - 30)
                })
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Play Now")
                        .foregroundColor(.white)
                        .padding(.vertical)
                        .frame(width: (UIScreen.main.bounds.width / 2) - 30)
                        .background(Color("Color4"))
                        .clipShape(Capsule())
                })
                
            }.padding(.top, 30)
            
            Spacer()
            
            
        }.background(LinearGradient(gradient: .init(colors: [Color("Color2"), Color("Color3")]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all))
        .navigationBarTitle("",displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(data: Player(id: 0, powers: [0.2,0.5,0.9], image: "Player1", name: "Bomb Raider", color: Color("Color")))
    }
}
