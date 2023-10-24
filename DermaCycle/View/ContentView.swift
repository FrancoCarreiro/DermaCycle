//
//  ContentView.swift
//  DermaCycle
//
//  Created by Franco Carreiro Eugenio on 01/08/2023.
//

import SwiftUI



struct ContentView: View {
    
    
    @State private var showSplash = true
    let urlShare = URL(string: "https://dermacycle.com.ar/es/")
    
    var body: some View {
        
        
        if showSplash {               //SE PRESENTA SPLASHSCREEN POR 3 SEG.
            SplashScreenView()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        withAnimation {
                            self.showSplash = false
                            
                        }
                    }
                }
        }
        else {
            
            
                VStack{            //ENCABEZADO DE TODA LA APP + SHARE BUTTON
                    
                    ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)){
                        
                        
                        Image("Dermacycle Logo")
                            .resizable()
                            .frame(width: 400, height: 80)
                            .scaledToFill()
                        
                        
                        
                        ShareLink(item: urlShare!)
                            .foregroundColor(.white)
                    }
                    
                    
                
                    
                    
                    TabView {         //TABVIEW CON LAS 5 CATEGORIAS DE LA APP
                        homeView()
                            .tabItem {
                                Label("", systemImage: "house")
                            }
                        promocionesView()
                            .tabItem {
                                Label("", systemImage: "megaphone")
                                
                            }
                        NotificacionesView()
                            .tabItem {
                                Label("", systemImage: "bell") }
                       
                        userView()
                            .tabItem {
                                Label("", systemImage: "person")
                                
                            }
                        calendarioView()
                            .tabItem {
                                Label("", systemImage: "calendar")
                            }
                        
                      
                    }
                    
                }
                
            }
            }
        }


    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
