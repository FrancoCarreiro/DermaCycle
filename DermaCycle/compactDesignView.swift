//
//  compactDesignView.swift
//  DermaCycle
//
//  Created by Franco Carreiro Eugenio on 21/08/2023.
//

import SwiftUI

struct compactDesignView: View {
 
    let urlShare = URL(string: "https://dermacycle.com.ar/es/")
    
    var body: some View {
       

            VStack {
                
                ZStack {
                    
                    
                    
              
                    
                    
                    
                    VStack {
                        
                        ZStack {
                            //(alignment: Alignment(horizontal: .trailing, vertical: .bottom))
                            
                            
                            Color.black
                                .frame(width: 900)
                                .frame(maxHeight: 100)
                            
                            Image("Dermacycle Logo")
                                .resizable()
                                .frame(width:100, height:100)
                            
                            
                            
                            
                            
                            ShareLink(item: urlShare!)
                                .foregroundColor(.white)
                                .position(x:100, y:80)
                            
                            
                            
                            
                            
                            
                        }
                        
                        
                        
                        TabView {
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
                                    Label("", systemImage: "bell")
                                    
                                }
                            calendarioView()
                                .tabItem {
                                    Label("", systemImage: "calendar")
                                }
                            
                            userProfileView()
                                .tabItem {
                                    Label("", systemImage: "person")
                                    
                                }
                            
                        }
                        
                        
                    }
                    
                    
                }
                    
                }
            
     }
      
    }
    

struct compactDesignView_Previews: PreviewProvider {
    static var previews: some View {
        compactDesignView()
    }
}
