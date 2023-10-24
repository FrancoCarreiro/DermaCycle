//
//  homeView.swift
//  DermaCycle
//
//  Created by Franco Carreiro Eugenio on 07/08/2023.
//

import SwiftUI

struct homeView: View {
    var body: some View {
        NavigationView {
           
     
        VStack{
            HStack {
                
                Image("PromotionHeader")      // FOTO DE ENCABEZADO
                    .resizable()
                    .frame(width: 400, height: 80)
                    .scaledToFill()
            }
            
            Spacer()
           
            VStack(spacing: 40){        // SE PRESENTAN LOS BOTONES CON LOS TRATAMIENTOS
                
                HStack {
                    ZStack{
                        VStack{
                            
                            NavigationLink("Tratamientos Faciales", destination: TratamientosFacialesView());
                        label: do {
                            
                            Image("FacialTreatment")
                               
                        }
                            
                        } 

                        
                    }
                                        ZStack{
                        VStack{
                            NavigationLink("Depilacion Laser", destination: depilacionLaserView());
                        label: do {
                            Image("HairRemoval")
                         
                        }
                            
                        }
                        }
                  
                }
                HStack {
                    ZStack{
                        VStack{
                            NavigationLink("Tratamientos Corporales", destination: TratamientosCorporalesView());
                        label: do {
                            
                            Image("CorporalTreatment")
                        }
                            
                        }
                        
                    }
                    ZStack{
                        VStack{
                            NavigationLink("Estetica Masculina", destination: esteticaMasculinaView());
                        label: do {
                            Image("MenTreatment")
                            
                        }
                            
                        }
                        
                    }
               
                }
            }
            .buttonStyle(.bordered)
           
            .padding()
           
            Spacer()
        }
        
        
    }
    
}
        
}
    
    struct homeView_Previews: PreviewProvider {
        static var previews: some View {
            homeView()
            
        }
    }
    

