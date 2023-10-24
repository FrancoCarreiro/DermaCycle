//
//  homeView.swift
//  DermaCycle
//
//  Created by Franco Carreiro Eugenio on 07/08/2023.
//

import SwiftUI

struct homeView: View {
    var body: some View {
        
        
       ScrollView{
        VStack{
            
            ZStack{
                Color.brown
                
                    .frame(width: 2000, height: 150)
                    .position(x:100, y:100)
                HStack {
                    
                    VStack {
                        
                        Text("Tratamientos")
                            .font(.subheadline.weight(.heavy))
                        
                            .padding()
                        
                        
                        Text("Conocé más sobre nuestros servicios")
                            .font(.subheadline.italic())
                            .foregroundColor(.black)
                            .padding()
                        
                    } .position(x:80, y:80)
                    
                    VStack {
                        Image("imagen estetica")
                            .resizable()
                            .frame(width: 90, height: 90)
                            .clipShape(Circle())
                            .position(x:100, y:100)
                    }
                }
            }
            
            VStack(spacing: 40){
                VStack{
                    HStack {
                        Button("Tratamientos faciales") {
                            print("boton presionado")
                        }
                        Button("Depilacion Laser") {
                            print("boton presionado")
                        }
                    }
                }
                
                VStack{
                    HStack {
                        Button("Tratamientos corporales") {
                            print("boton presionado")
                        }
                        Button("Estetica Masculina") {
                            print("boton presionado")
                        }
                    }
                }
                Spacer()
            } .buttonStyle(.bordered)
            
        }
        }
        
    }
    }
        
     

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
           
    }
}
