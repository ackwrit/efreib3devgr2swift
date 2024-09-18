//
//  MainView.swift
//  b3devgr2
//
//  Created by Djino Dissingar on 18/09/2024.
//

import SwiftUI

struct MainView: View {
    @State var email : String = ""
    @State var password : String = ""
    var body: some View {
        VStack {
            Image("beach")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
            Form {
                TextField("Entrer votre email", text: $email)
                TextField("Entrer votre mot de passe", text:$password)
                
            }
            .frame(height: 150)
            
            HStack {
                Button("Connexion") {
                    print("je me connecte")
                }
                .padding(10)
                .background(.blue)
                .foregroundColor(.primary)
                .cornerRadius(10)
                
                
                
            
                Button("Inscription") {
                    print("s'inscrire")
                }
                
            }
            Spacer()
        }
        .ignoresSafeArea(.all)
    }
    
}

#Preview {
    MainView()
}
